require('minitest/autorun')
require('minitest/rg')
require_relative('../member.rb')

class MemberTest < MiniTest::Test

  def setup()
    @member = Member.new({
      "id" => 1,
      "name" => "Joe Smith",
      "membership" => "Premium"
      })
  end

  def test_get_id()
    result = @member.id()
    assert_equal(1, result)
  end

  def test_get_name()
    result = @member.name()
    assert_equal("Joe Smith", result)
  end

  def test_get_membership()
    result = @member.membership()
    assert_equal("Premium", result)
  end


end
