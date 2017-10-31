module Witt
  class Output

    def print(time, iata_code, timezone)
      formatted_time = time.strftime("%b %e, %H:%M")
      emoji = to_emoji(time)

      puts "#{iata_code}: #{emoji} #{formatted_time} (#{timezone})"
    end

    private

    def to_emoji(time)
      is_evening?(time) ? "🌘 " : "☀️ "
    end

    def is_evening?(time)
      time.hour >= 19 || time.hour <= 5
    end

  end
end
