require_relative('../db/sql_runner')

class Member

  attr_reader :id, :name, :membership

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    @membership = options['membership']
  end

  def save()
    sql = "INSERT INTO members (name, membership)
    VALUES ($1, $2) RETURNING id"
    values = [@name, @membership]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i()
  end

end
