a, b = read_line.to_s.split.map(&.to_i)
puts (a % 2 == 0 || b % 2 == 0) ? "Even" : "Odd"
