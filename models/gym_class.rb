require_relative('../db/sql_runner')

class GymClass

  attr_reader :id, :name, :timec, :capacity

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    @timec = options['timec'].to_f()
    @capacity = options['capacity'].to_i()
  end

end
