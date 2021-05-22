# A 50
# B 10
# C  5
# 0 <= A, B, C <= 50
# A + B + C >= 1
# 5 <= X <= 2,000
# A, B, C are Int
# X % 5 == 0

a = read_line.to_i
b = read_line.to_i
c = read_line.to_i
x = read_line.to_i // 10

if c == 0 && x % 10 == 5
  puts 0
  exit
end

bc_total = b * 10 + c * 5
if bc_total < x % 5
  puts 0
  exit
end

if (a * 50 + b * 10 + c * 5) < x
  puts 0
  exit
end

result = 0
a_counts = [] of Int32
(0..a).each do |i|
  next if i * 50 > x
  next if x - (i * 50) > bc_total
  a_counts.push(i)
end

a_counts.each do |a_count|
  rest_x = x - a_count * 50
  b_counts = [] of Int32
  (0..b).each do |i|
    next if i * 10 > rest_x
    next if rest_x - (i * 10) > c * 5
    result += 1
  end
end

puts result
