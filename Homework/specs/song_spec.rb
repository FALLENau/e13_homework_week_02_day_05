require "minitest/autorun"
require "minitest/rg"
require_relative "../song"

class TestSong < MiniTest::Test

def setup
  @song1 = Song.new("Your hearts a mess", "Gotye")
end

  def test_song_has_name__and_artist
    assert_equal()

  end

end
