n = read_line.to_u64

res = 1.to_u64
((1.to_u64)..n).each do |i|
  res = (res * i) % (10.to_u64 ** 9 + 7)
end

puts res
