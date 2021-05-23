k, n = read_line.split.map(&.to_i64)
a = read_line.split.map(&.to_i64)
d = a.map_with_index do |ai, i|
  next a[0] + (k - ai) if i == a.size - 1
  a[i + 1] - ai
end
puts k - d.max
