h, w = read_line.split.map(&.to_i)

puts "#" * (w + 2)
h.times do
  puts "#" + read_line + "#"
end
puts "#" * (w + 2)
