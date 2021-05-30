n = read_line.to_i
s = read_line

x = 0
result = 0
s.split("").each do |c|
  x += 1 if c == "I"
  x -= 1 if c == "D"
  result = [result, x].max
end

puts result
