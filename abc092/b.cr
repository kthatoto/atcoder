n = read_line.to_i
d, x = read_line.split.map(&.to_i)

n.times do
  a = read_line.to_i
  x += 1 + (d - 1) // a
end

puts x
