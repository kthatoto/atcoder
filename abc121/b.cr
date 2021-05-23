n, m, c = read_line.split.map(&.to_i)
b = read_line.split.map(&.to_i)

result = 0
n.times do
  a = read_line.split.map(&.to_i)
  result += 1 if c + a.map_with_index {|ai, i| ai * b[i]}.sum > 0
end

puts result
