# n = read_line.to_i
# a = read_line.split.map(&.to_i)
# b = read_line.split.map(&.to_i)
# c = read_line.split.map(&.to_i)
#
# count1 = [0] * (n + 1)
# a.each do |i|
#   count1[i] += 1
# end
#
# count2 = [0] * (n + 1)
# c.each do |i|
#   count2[b[i - 1]] += 1
# end
#
# result = 0_i64
# (n + 1).times do |i|
#   result += count1[i] * count2[i]
# end
#
# puts result

n = read_line.to_i
a = read_line.split.map(&.to_i)
b = read_line.split.map(&.to_i)
c = read_line.split.map(&.to_i)

cnt = [0] * (n + 1)
a.each { |i| cnt[i] += 1 }
cnt2 = [0] * (n + 1)
c.each { |i| cnt2[b[i - 1]] += 1 }

result = 0_i64
(n + 1).times do |i|
  result += cnt[i].to_i64 * cnt2[i]
end
puts result
