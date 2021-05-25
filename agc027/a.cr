n, x = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i).sort
result = 0
a.each do |ai|
  if x >= ai
    result += 1
    x -= ai
  else
    x -= ai
    break
  end
end
result -= 1 if x > 0
puts result
