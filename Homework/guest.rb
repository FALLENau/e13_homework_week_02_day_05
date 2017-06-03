require "pry"

  attr_reader :guest

class Room

  def initialize(guest)
    @guest = guest
  end

end
