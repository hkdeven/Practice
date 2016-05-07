# directions = ["north", "south", "east", "west"]
#
# puts directions[3]

# Problem 2
#
# Create a hash with 4 keys: n, e, s, w. Store that hash in a variable called compass. When I run puts compass[:n] or puts compass["n"] I should get back the string "north".


# compass = {n: => "north", e: => "east", s: => "south", w: => "west"}
#
# puts compass["n"]
# puts compass[:n]


# Problem 3
#
# Create me a class called Direction that when initialized, takes an abbreviation and direction_name and makes them publicly available. So that I can use it like this:
#
# d = Direction.new("n", "North")
# d.direction_name # returns "North"
# Now create a class called Compass that when instantiated creates an instance variable called directions that is an array of Direction objects for north, east, south & west. Store an instance of this compass in a variable called my_compass. The instance variable directions should be write protected, as in, I should not be able to publicly change the value of directions.

class Direction
attr :abbreviation, :direction_name

def initialize(abbreviation, direction_name)
  @abbreviation = abbreviation
  @direction_name = direction_name
end
end

d = Direction.new("n", "North")
puts d.direction_name # returns "North"

class Compass
  attr_reader :directions

def initialize
  north = Direction.new("n", "North")
  east = Direction.new("e", "East")
  south = Direction.new("s", "South")
  west = Direction.new("w", "West")
  @directions = [north, east, south, west]
end
end

 p my_compass = Compass.new

# Problem 4
#
# Let's get a sinatra server running. Can you please set up a sinatra server in this file that works for the root path and shows the word "test" when I go there?
#
# Hint: Use require, it's your friend.
#



# Problem 5
#
# Now let's combine the work we did with our classes, Direction and Compass - with some knowledge about URLs & some Sinatra documentation here. We want to be able to visit http://localhost:4567/?direction=n or http://localhost:4567/?direction=w and see the text "The direction corresponding to n is North" or "The direction corresponding to w is West", respectively.

# Bonus: Account for directions that are not actually appropriate parameters like 7 or null.
