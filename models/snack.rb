require_relative '../db/sql_runner'

class Snack

  attr_reader :id, :item, :price

  def initialize(options)
    @id = options['id'].to_i
    @item = options['item']
    @price = options['price'].to_f
  end

  def save
    sql = "INSERT INTO snack (item, price) VALUES ('#{@item}', #{@price}) RETURNING *"
    snack = SqlRunner.run( sql ).first
    @id = snack['id'].to_i
  end

  def update
    sql = "UPDATE snack 
          SET item = '#{@item}', 
          price = '#{@price}' 
          WHERE id = #{@id}"
    SqlRunner.run( sql )
  end

  def delete
    sql = "DELETE snack WHERE id = #{@id}"
    SqlRunner.run( sql )
  end

  def self.all
    sql = "SELECT * FROM snack"
    return Snack.map_items(sql)
  end

  def self.delete_all
    sql = "DELETE FROM snack"
    SqlRunner.run( sql )
  end

  def self.map_items( sql )
    snacks = SqlRunner.run( sql )
    result = snacks.map{ |snack| Snack.new(snack) }
    return result
  end

  def self.map_item( sql )
    Snack.map_items( sql ).first
  end
end