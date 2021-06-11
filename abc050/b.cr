n = read_line.to_i
t = read_line.split.map(&.to_i)
t_sum = t.sum
m = read_line.to_i
m.times do
  p, x = read_line.split.map(&.to_i)
  puts t_sum - t[p - 1] + x
end
