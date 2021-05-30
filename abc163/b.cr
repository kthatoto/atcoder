n, m = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)
rest = n - a.sum
puts rest < 0 ? -1 : rest
