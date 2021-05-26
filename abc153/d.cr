h = read_line.to_i64
pow = 0
while h >= 2_i64**pow
  pow += 1
end
puts (0..(pow - 1)).sum { |p| 2_i64**p }
