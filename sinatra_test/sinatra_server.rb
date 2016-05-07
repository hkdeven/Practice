require 'sinatra'

set :root, 'public'

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

get '/' do
  get '/hello/:name' do
    # matches "GET /hello/foo" and "GET /hello/bar"
    # params['name'] is 'foo' or 'bar'
    "Hello #{params['name']}!"
  end
end
