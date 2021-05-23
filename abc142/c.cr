n = read_line.to_i
a = read_line.split.map(&.to_i)
result = Array.new(a.size, 0)
a.each_with_index do |ai, i|
  result[ai - 1] = i + 1
end
puts result.join(" ")
