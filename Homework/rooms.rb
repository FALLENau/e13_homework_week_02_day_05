require "pry"

class Room

  attr_reader :name, :space, :type

  def initialize(name, space, type)
    @name = name
    @space = space
    @type = type
  end

# def get_check_in(person)
#   @room << person if person.can_afford_room?
# end

end
