require('minitest/autorun')
require('minitest/rg')
require_relative('../booking.rb')

class BookingTest < MiniTest::Test

  def setup()
    @booking = Booking.new({
      "id" => 1,
      "member_id" => 1,
      "gym_class_id" => 2
      })
  end

  def test_get_id()
    result = @booking.id
    assert_equal(1, result)
  end

  def test_get_member_id()
    result = @booking.member_id
    assert_equal(1, result)
  end

  def test_get_gym_class_id()
    result = @booking.gym_class_id
    assert_equal(2, result)
  end

end
