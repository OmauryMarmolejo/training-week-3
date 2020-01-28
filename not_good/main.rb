require_relative "ceiling_fan"

running = true

chain = CeilingFan.new

while running
  chain.pull
  running = false if chain.current_state == 3
end

chain.pull
