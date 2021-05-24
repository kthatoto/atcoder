n, m, x = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)
cost = a.count { |ai| ai > x }
puts [cost, a.size - cost].min
