n, a, b = read_line.split.map(&.to_i64)
puts (n // (a + b)) * a + (n % (a + b) >= a ? a : n % (a + b))
