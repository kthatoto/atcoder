k = read_line.to_i
a, b = read_line.split.map(&.to_i)

puts !!(a..b).to_a.find { |d| d % k == 0 } ? "OK" : "NG"
