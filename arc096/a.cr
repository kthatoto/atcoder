a, b, ab, x, y = read_line.split.map(&.to_i)

greater_cp = x > y ? a : b
if a + b < ab * 2
  puts a * x + b * y
else
  if greater_cp < ab * 2
    puts ab * 2 * [x, y].min + (x - y).abs * greater_cp
  else
    puts ab * 2 * [x, y].min + (x - y).abs * ab * 2
  end
end
