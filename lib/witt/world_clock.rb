module Witt
  class WorldClock
    def initialize(clock = Time)
      @clock = clock
    end

    def time_in(time_zone)
      tzinfo = TZInfo::Timezone.get(time_zone)
      period = tzinfo.current_period

      offset = period.offset.utc_total_offset

      @clock.now.getlocal(offset)
    end
  end
end
