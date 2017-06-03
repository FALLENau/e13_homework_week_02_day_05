require "minitest/autorun"
require "minitest/rg"
require_relative "../guest"

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Zsolt")
    @guest2 = Guest.new("Jarrod")
  end

  def test_guest_has_name
    assert_equal("Zsolt", @guest1.guest())
  end

  # def test_guest_has_money
  #   assert_equal()
  # end

end
