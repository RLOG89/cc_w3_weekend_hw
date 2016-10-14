require_relative '../db/sql_runner'

class Ticket

  attr_reader :id, :customer_id, :film_id

  def initialize(options)
    @id = options['id'].to_i
    @customer_id = options['customer_id']
    @film_id = options['film_id']
  end

  def save
    sql = "INSERT INTO ticket (customer_id, film_id) VALUES ( #{@customer_id}, #{@film_id} ) RETURNING *"
    ticket = SqlRunner.run( sql ).first
    @id = ticket['id'].to_i
  end

end
