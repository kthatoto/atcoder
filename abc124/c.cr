s = read_line

result0 = 0
s.size.times do |i|
  result0 += 1 if s[i].to_i == (i % 2)
end

result1 = 0
s.size.times do |i|
  result1 += 1 if s[i].to_i == ((i + 1) % 2)
end

puts [result0, result1].min
