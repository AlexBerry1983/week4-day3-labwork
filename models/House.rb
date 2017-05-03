require_relative('../db/SqlRunner')

class House

  attr_reader :id, :name

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @name = params['name']
  end

  def save
    sql = "INSERT INTO houses (name) VALUES ('#{@name}') RETURNING id;"
    houses_hash = SqlRunner.run(sql).first
    @id = houses_hash['id'].to_i
  end

  def House.find(id)
    sql = "SELECT * FROM houses WHERE id=#{id};"
    house = SqlRunner.run( sql )[0]
    return House.new( house )
  end

  def House.find_all()
    sql = "SELECT * FROM houses"
    houses_array = SqlRunner.run(sql)
    houses = houses_array.map { |house| House.new(house)}
    return houses
  end

  def House.delete_all
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
    return nil
  end

end