require('minitest/autorun')
require('minitest/rg')
require_relative('../gym_class.rb')

class GymClassTest < MiniTest::Test

  def setup()
    @gym_class = GymClass.new({
      "id" => 1,
      "name" => "Spin",
      "timec" => 12.00,
      "capacity" => 24
      })
  end

  def test_get_id()
    result = @gym_class.id()
    assert_equal(1, result)
  end

  def test_get_name()
    result = @gym_class.name()
    assert_equal("Spin", result)
  end

  def test_get_time()
    result = @gym_class.timec()
    assert_equal(12.00, result)
  end

  def test_get_capacity()
    result = @gym_class.capacity()
    assert_equal(24, result)
  end

end
