require_relative '../db/sql_runner'

class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds'].to_f
  end

  def save
    sql = "INSERT INTO customer (name, funds) VALUES ('#{@name}', #{@funds}) RETURNING *"
    customer = SqlRunner.run( sql ).first
    @id = customer['id'].to_i
  end

  def update
    sql = "UPDATE customer 
          SET name = '#{@name}', 
          funds = '#{@funds}' 
          WHERE id = #{@id}"
    SqlRunner.run( sql )
  end

  def delete
    sql = "DELETE customer WHERE id = #{@id}"
    SqlRunner.run( sql )
  end

  def film
    sql = "SELECT film.* FROM film INNER JOIN ticket ON ticket.film_id = film.id WHERE ticket.customer_id = #{@id}"
    return Film.map_items( sql )
  end

  def buy_ticket(film)
    if @funds >= film.price
      @funds -= film.price
      ticket = Ticket.new('customer_id' => @id , 'film_id' => film.id) 
      ticket.save
      update()
    end
  end

  def buy_snack(snack)
    if @funds >= snack.price
      @funds -= snack.price
      update()
    else
      #update this to check if they want a small version of snack if they have enough for that
    end
  end

  # def ticket_count
  #   sql = "SELECT customer_id, count(*) FROM ticket WHERE customer_id = #{@id} GROUP BY customer_id"
  #    tickets = SqlRunner.run( sql ).first
  #    return tickets.values[1]
  # end

  def ticket_count
    sql = "SELECT * FROM ticket WHERE customer_id = #{@id}"
     tickets = Ticket.map_items( sql )
     tickets.count
  end

  def self.all
    sql = "SELECT * FROM customer"
    return Customer.map_items(sql)
  end

  def self.delete_all
    sql = "DELETE FROM customer"
    SqlRunner.run( sql )
  end

  def self.map_items( sql )
    customers = SqlRunner.run( sql )
    result = customers.map{ |customer| Customer.new(customer) }
    return result
  end

  def self.map_item( sql )
    Customer.map_items( sql ).first
  end

end

