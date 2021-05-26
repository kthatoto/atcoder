a, b, m = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)
b = read_line.split.map(&.to_i)

result = a.min + b.min
m.times do
  x, y, c = read_line.split.map(&.to_i)
  v = a[x - 1] + b[y - 1] - c
  result = v if result > v
end

puts result
