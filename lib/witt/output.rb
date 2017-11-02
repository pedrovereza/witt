module Witt
  class Output

    def print(time, iata_code, timezone)
      formatted_time = time.strftime("%b %e, %H:%M")
      emoji = to_emoji(time)

      puts "#{iata_code}: #{emoji} #{formatted_time} (#{timezone})"
    end

    def print_error(invalid_airports)
      error_message = "\nNo time zone info found for: #{invalid_airports.join(", ")}"
      puts message_in_red(error_message)
    end

    private

    def to_emoji(time)
      is_evening?(time) ? "🌘 " : "☀️ "
    end

    def is_evening?(time)
      time.hour >= 19 || time.hour <= 5
    end

    def message_in_red(message)
      "\e[31m#{message}\e[0m"
    end
  end
end
