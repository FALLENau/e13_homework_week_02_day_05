require "pry"

class Song

  attr_reader :song_artist, :song_name

  def initialize(song_artist, song_name)
    @song_artist = song_artist
    @song_name = song_name
  end

end
