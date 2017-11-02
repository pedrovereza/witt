require "tzinfo"

require "witt/version"
require "witt/iata"
require "witt/world_clock"
require "witt/output"

module Witt
  extend self

  def time_in(airports)
    world_clock = WorldClock.new
    output = Output.new

    invalid_airports = []

    airports.each do |airport|
      airport = airport.upcase
      timezone = Witt::IATA[airport]
      begin
        time = world_clock.time_in(timezone)
        output.print(time, airport, timezone)
      rescue
        invalid_airports << airport
      end
    end

    output.print_error(invalid_airports) unless invalid_airports.empty?
  end
end
