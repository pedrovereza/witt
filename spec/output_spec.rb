require 'spec_helper'

describe Witt::Output do

  it 'formats output containing IATA code, time and timezone' do
    expect(STDOUT).to receive(:puts).with('POA: Oct 21, 17:00 (America/Sao_Paulo)')

    time = Time.new(2017,10,21,17,0,0, '-07:00')
    subject.print(time, 'POA', 'America/Sao_Paulo')
  end
end
