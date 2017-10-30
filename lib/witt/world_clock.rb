module Witt
  class WorldClock

    def time_in(time_zone)
      tzinfo = TZInfo::Timezone.get(time_zone)
      period = tzinfo.current_period

      offset = period.offset.utc_total_offset

      Time.now.getlocal(offset)
    end
  end
end
