n = read_line.to_i
v = read_line.split.map(&.to_i).sort
result = v.first
(n - 1).times do |i|
  result = (result + v[i + 1]) / 2
end

puts result
