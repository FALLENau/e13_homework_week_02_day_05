require "pry"

class Room

  attr_reader :name, :type, :guests

  def initialize(name, type)
    @name = name
    @type = type
    @guests = []
  end

  def number_of_guests
  return @guests.count
  end

  def guest_check_in(guest_name)
    @guests.push(guest_name)
  end

  def guest_check_out(guest_name)
    @guests.delete(guest_name)
  end

end
