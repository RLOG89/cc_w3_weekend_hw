require_relative '../db/sql_runner'

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price'].to_f
  end

  def save
    sql = "INSERT INTO film(
    title, price) 
    VALUES ('#{@title}', #{@price}) 
    RETURNING *"
    film = SqlRunner.run( sql ).first
    @id = film['id'].to_i
  end

  def update
    sql = "UPDATE film 
    SET title = '#{@title}', 
    price = '#{@price}' 
    WHERE id = #{@id}"
    SqlRunner.run( sql )
  end

  def delete
    sql = "DELETE film WHERE id = #{@id}"
    SqlRunner.run( sql )
  end

  def customer
    sql = "SELECT customer.* FROM customer INNER JOIN ticket ON ticket.customer_id = customer.id WHERE ticket.film_id = #{@id}"
    return Customer.map_items( sql )
  end

  def self.all
    sql = "SELECT * FROM film"
    return Film.map_items(sql)
  end

  def self.delete_all
    sql = "DELETE FROM film"
    SqlRunner.run( sql )
  end

  def self.map_items( sql )
    films = SqlRunner.run( sql )
    result = films.map{ |film| Film.new(film) }
    return result
  end

  def self.map_item( sql )
    Film.map_items( sql ).first
  end


end