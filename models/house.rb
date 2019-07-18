require_relative('../db/sql_runner.rb')

class House

  attr_reader :id
  attr_accessor :name, :image

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @image = options['image']
  end

  def save()
    sql = "INSERT INTO houses (name, image) VALUES ($1, $2) RETURNING id"
    values = [@name, @image]
    @id = SqlRunner.run(sql, values).first['id'].to_i
  end

  def self.find(id)
    sql ="SELECT * FROM houses WHERE ID = $1"
    values=[id]
    house = SqlRunner.run(sql,values)
    return House.new(house.first)
  end

  def self.all()
    sql ="SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    return houses.map{|house| House.new(house)}
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

end
