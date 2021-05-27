s = read_line
target = 753
result = target.dup
(0..(s.size - 3)).each do |i|
  n = s[i..(i + 2)].to_i
  result = (target - n).abs if (target - n).abs < result
end

puts result
