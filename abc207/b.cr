a, b, c, d = read_line.split.map(&.to_i64)

if c * d - b == 0
  p -1
  exit
end

p [(a / (c * d - b)).ceil.to_i64, -1].max
