require "minitest/autorun"
require "minitest/rg"
require_relative "../guests"

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Zsolt")
  end

  def guest_has_name
    assert_equal("Zsolt", @guest1.name())
  end

end
