n = read_line.to_i
a = read_line.split.map(&.to_i)
result = 0
a.each_with_index do |ai, i|
  next if ai < i + 1
  result += 1 if a[ai - 1] == i + 1
end
puts result
