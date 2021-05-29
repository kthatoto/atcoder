n = read_line.to_i
hash = Hash(String, Bool).new
result = 0

n.times do
  s = read_line
  next if hash[s]?
  hash[s] = true
  result += 1
end

puts result
