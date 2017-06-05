require "pry"

class Room

  attr_reader :name, :type, :room_guests, :room_songs

  def initialize(name, type)
    @name = name
    @type = type
    @room_guests = []
    @room_songs = []
  end

  def number_of_guests
  return @room_guests.count
  end

  def guest_check_in(guest_name)
    @room_guests.push(guest_name)
  end

  def guest_check_out(guest_name)
    @room_guests.delete(guest_name)
  end

  def number_of_songs
  return @room_songs.count
  end

  def add_song_to_room(song)
    @room_songs.push(song)
  end
end
