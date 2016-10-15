require_relative '../db/sql_runner'

class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds']
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

  def self.all
    sql = "SELECT * FROM customer"
    return Customer.map_items(sql)
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