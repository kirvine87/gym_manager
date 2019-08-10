require_relative('../db/sql_runner')

class GymClass

  attr_reader :id, :name, :timec, :capacity

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    @timec = options['timec'].to_f()
    @capacity = options['capacity'].to_i()
  end

  def save()
    sql = "INSERT INTO gym_classes (name, timec, capacity)
    VALUES ($1, $2, $3) RETURNING id"
    values = [@name, @timec, @capacity]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i()
  end

  def update()
    sql = "UPDATE gym_classes
    SET (name, timec, capacity) = ($1, $2, $3)
    WHERE id = $4"
    values = [@name, @timec, @capacity, @id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM gym_classes"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM gym_classes WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM gym_classes"
    results = SqlRunner.run(sql)
    return results.map { |gym_class| GymClass.new(gym_class) }
  end

end
