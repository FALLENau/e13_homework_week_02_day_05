require "minitest/autorun"
require "minitest/rg"
require_relative "../song"

class TestSong < MiniTest::Test

def setup
  @song1 = Song.new("Gotye", "Your hearts a mess")
end


  def test_song_has_artist
    assert_equal("Gotye", @song1.song_artist())
  end

  def test_song_has_name
    assert_equal("Your hearts a mess", @song1.song_name())

  end



end
