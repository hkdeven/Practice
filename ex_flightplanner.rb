class FlightPlanner
  def initialize
    @flights = {
      "MIA" => ["JFK", "PHX", "LHR", "FLL"],
      "AUS" => ["SFO", "ORD"],
      "FLL" => ["WPB", "AUS", "JFK"],
      "PHX" => ["SFO", "LAX", "LAS"]
    }
  end

  def can_i_fly?(start, destination)
    @flights[start].each do | cities |
      if cities == destination
        return true
      end
    end
  end

end
instance = FlightPlanner.new

instance.can_i_fly?("MIA", "JFK")
