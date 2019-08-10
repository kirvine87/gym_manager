require_relative('../db/sql_runner')

class Booking

attr_reader :id, :gym_class_id, :member_id

def initialize(options)
  @id = options['id'].to_i() if options['id']
  @gym_class_id = options['gym_class_id'].to_i()
  @member_id = options['member_id'].to_i()
end

def save()
  sql = "INSERT INTO bookings (gym_class_id, member_id)
  VALUES ($1, $2) RETURNING id"
  values = [@gym_class_id, @member_id]
  results = SqlRunner.run(sql, values)
  @id = results.first()['id'].to_i()
end

def update()
  sql = "UPDATE bookings
  SET (gym_class_id, member_id) = ($1, $2)
  WHERE id = $3"
  values = [@gym_class_id, @member_id, @id]
  SqlRunner.run( sql, values )
end

def self.delete_all()
  sql = "DELETE FROM bookings"
  SqlRunner.run(sql)
end

def delete()
  sql = "DELETE FROM bookings WHERE id = $1"
  values = [@id]
  SqlRunner.run(sql, values)
end

end
