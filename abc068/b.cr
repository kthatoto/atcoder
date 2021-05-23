n = read_line.to_i
puts [64, 32, 16, 8, 4, 2, 1].find { |i| n >= i }
