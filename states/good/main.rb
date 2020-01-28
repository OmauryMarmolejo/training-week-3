require_relative 'ceiling_fan'

chain = CeilingFan.new

i = 0
keep = true

while keep
  chain.pull
  i += 1
  keep = false if i == 4
end
