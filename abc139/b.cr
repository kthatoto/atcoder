a, b = read_line.split.map(&.to_i)
n = 0
while n * (a - 1) + 1 < b
  n += 1
end
puts n
