require "big"

x = read_line.to_big_i
y = 100.to_big_i
n = 0

while y < x
  y += (y / 100).to_big_i
  n += 1
end

puts n
