x = read_line.to_i64

y = 100_i64
n = 0
while y < x
  y = (y * 1.01).to_i64
  n += 1
end

puts n
