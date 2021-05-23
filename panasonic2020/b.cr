h, w = read_line.split.map(&.to_i64)
if h == 1 || w == 1
  puts 1
else
  puts (h * w + 1) // 2
end
