require "minitest/autorun"
require "minitest/rg"
require_relative "../rooms"

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Zsolt's Room", 5, "russian")
    # @room2 = Room.new("Pop Room", 6, "pop")
    # @room3 = Room.new("Alternative Room", 8, "alternative")
    # @room4 = Room.new("Classic Rock Room", 7, "Classic Rock")
    # @rooms = [@room1, @room2, @room3, @room4]

  end

  def test_room_has_name
    assert_equal("Zsolt's Room", @room1.name())
  end

end
