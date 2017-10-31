module Witt
  class Output

    def print(time, iata_code, timezone)
      formatted_time = time.strftime("%b %e, %H:%M")
      puts "#{iata_code}: #{formatted_time} (#{timezone})"
    end

  end
end
