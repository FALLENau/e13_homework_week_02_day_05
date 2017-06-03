require "minitest/autorun"
require "minitest/rg"
require_relative "../room"
require_relative "../guest"
require_relative "../song"

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Zsolt's Room", "russian")
    # @room2 = Room.new("Pop Room", 6, "pop")
    # @room3 = Room.new("Alternative Room", 8, "alternative")
    # @room4 = Room.new("Classic Rock Room", 7, "Classic Rock")
    # @rooms = [@room1, @room2, @room3, @room4]
    @guest1 = Guest.new("Zsolt")
    @guest2 = Guest.new("Jarrod")
    @song1 = Song.new("Gotye", "Your hearts a mess")
  end

  def test_room_has_name
    assert_equal("Zsolt's Room", @room1.name())
  end

  def test_number_of_guests
    assert_equal(0, @room1.number_of_guests)
  end

  def test_guest_check_in
    @room1.guest_check_in(@guest1)
    assert_equal(1, @room1.number_of_guests)
  end

  def test_guest_check_out
    @room1.guest_check_in(@guest1)
    @room1.guest_check_in(@guest2)
    @room1.guest_check_out(@guest1)
    assert_equal(1, @room1.number_of_guests)
  end

  def test_add_song_to_room
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.number_of_songs)
  end

end
