#!/usr/bin/env ruby

require 'mac-event-monitor'

def main
  monitor = Mac::EventMonitor::Monitor.new

  monitor.add_listener(:key_down) do |event|
    if event.keycode == 36 || (event.ctrl_key? && event.keycode == 46)
      zudon
    end
  end

  monitor.run
end

def zudon
  system('./cannon.sh')
end

main
