n = read_line.to_i
a = read_line.split.map(&.to_i)

result = 0
a.each do |ai|
  next if ai <= 10
  result += ai - 10
end
puts result
