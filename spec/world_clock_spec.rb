require 'spec_helper'

describe Witt::WorldClock do

  before do
    allow(Time).to receive(:now).and_return(Time.utc(2017,10,22,0,0,0))
    @world_clock = Witt::WorldClock.new
  end

  it 'converts time to negative timezones' do
    expected_time = Time.new(2017,10,21,17,0,0, '-07:00')
    time = @world_clock.time_in('America/Los_Angeles')

    expect(time).to eq expected_time
  end

  it 'converts time to positive timezones' do
    expected_time = Time.new(2017,10,22,1,0,0, '+01:00')
    time = @world_clock.time_in('Europe/London')

    expect(time).to eq expected_time
  end
end
