require_relative '../db/sql_runner'

class Ticket

  attr_reader :id, :customer_id, :film_id

  def initialize(options)
    @id = options['id'].to_i
    @customer_id = options['customer_id'].to_i
    @film_id = options['film_id'].to_i
  end

  def save
    sql = "INSERT INTO ticket(
    customer_id, 
    film_id) 
    VALUES( 
    #{@customer_id}, 
    #{@film_id} ) 
    RETURNING *"
    ticket = SqlRunner.run( sql ).first
    @id = ticket['id'].to_i
  end

  def delete
    sql = "DELETE ticket WHERE id = #{@id}"
    SqlRunner.run( sql )
  end

  def update
    sql = "UPDATE ticket 
    SET customer_id = '#{@customer_id}', 
    film_id = '#{@film_id}' 
    WHERE id = #{@id}"
    SqlRunner.run( sql )
  end

  def customer
    sql = "SELECT * from customer WHERE id = #{@customer_id}"
    return Customer.map_item( sql )
  end

  def film
    sql = "SELECT * from film WHERE id = #{@film_id}"
    return Film.map_item( sql )
  end

  def self.all
    sql = "SELECT * FROM ticket"
    return Ticket.map_items(sql)
  end

  def self.delete_all
    sql = "DELETE FROM ticket"
    SqlRunner.run( sql )
  end

  def self.map_items( sql )
    tickets = SqlRunner.run( sql )
    result = tickets.map{ |ticket| Ticket.new(ticket) }
    return result
  end

  def self.map_item( sql )
    Ticket.map_items( sql ).first
  end

end
