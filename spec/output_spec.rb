require 'spec_helper'

describe Witt::Output do

  context 'day time between 06:00 and 18:59' do
    it 'formats output containing IATA code, time, timezone and ☀️ ' do
      expect(STDOUT).to receive(:puts).with('POA: ☀️   Oct 21, 18:59 (America/Sao_Paulo)')

      time = Time.new(2017,10,21,18,59,0, '-03:00')
      subject.print(time, 'POA', 'America/Sao_Paulo')
    end
  end

  context 'evening between 19:00 and 05:59' do
    it 'formats output containing IATA code, time, timezone and 🌘' do
      expect(STDOUT).to receive(:puts).with('POA: 🌘  Oct 21, 19:00 (America/Sao_Paulo)')

      time = Time.new(2017,10,21,19,0,0, '-03:00')
      subject.print(time, 'POA', 'America/Sao_Paulo')
    end
  end
end
