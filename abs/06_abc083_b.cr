n, a, b = read_line.to_s.split.map(&.to_i)
sum = 0

(1..n).each do |i|
  digit_sum = i.to_s.split("").map(&.to_i).sum
  sum += i if a <= digit_sum && digit_sum <= b
end

puts sum
