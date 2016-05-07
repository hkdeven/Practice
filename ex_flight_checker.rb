require "./ex_flightplanner.rb"

def test_code(flight_planner_instance)
  planner = flight_planner_instance
  tests = [
    [:can_i_fly?, ["MIA", "JFK"], true],
    [:can_i_fly?, ["MIA", "ORD"], false],
    [:can_i_fly?, ["MIA", "XXX"], false]
  ]
  puts "All tests passing? Yes!" if tests.all? {|t| planner.send(t[0], *t[1]) == t[2]}

  failed_tests = tests.reject {|t| planner.send(t[0], *t[1]) == t[2]}
  response = "All tests passing? No...\n"
  response = "tests fail for: #{failed_tests.map{|t| t[1]}}"
end

flight_plan1 = FlightPlanner.new

p test_code(flight_plan1)

# ... get your flight planner class imported to this file
# ... instantiate a new flight planner object that is stored in a variable
# ... make a test of your own by looking at the code, it should use ==
# ... call test_code with your instance as the argument
