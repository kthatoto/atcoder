n = read_line.to_i
a = read_line.split.map(&.to_i)

result = 1
a.each do |ai|
  result *= 2 if ai % 2 == 0
end

puts 3**n - result
