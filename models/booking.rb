require_relative('../db/sql_runner')
require_relative('./member.rb')
require_relative('./gym_class.rb')

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

  def self.all()
    sql = "SELECT * FROM bookings ORDER BY gym_class_id"
    results = SqlRunner.run(sql)
    return results.map { |booking| Booking.new(booking) }
  end

  def self.sort()
    sql = "SELECT * FROM bookings ORDER BY member_id"
    results = SqlRunner.run(sql)
    return results.map { |gym_class| Booking.new(gym_class) }
  end

  def self.find(id)
    sql = "SELECT * FROM bookings WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql,values)
    return Booking.new(results.first)
  end

  def member()
    sql = "SELECT * FROM members
    WHERE id = $1"
    values = [@member_id]
    results = SqlRunner.run( sql, values )
    return Member.new( results.first )
  end

  def gclass()
    sql = "SELECT * FROM gym_classes
    WHERE id = $1"
    values = [@gym_class_id]
    results = SqlRunner.run( sql, values )
    return GymClass.new( results.first )
  end

  def self.count(id)
    sql = "SELECT count(*) FROM bookings WHERE gym_class_id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return results.first()['count'].to_i()
  end

end
