n = read_line.to_i64
a = read_line.split.map(&.to_i64)
length = a.sum
min = 10_i64**15
l = 0_i64
a.each do |ai|
  l += ai
  diff = (length - l * 2).abs
  min = [diff, min].min
end

puts min
