a, b, n = read_line.split.map(&.to_i64)

if n < b
  puts (a * n / b).floor.to_i64
else
  puts (a * (b - 1) / b).floor.to_i64
end
