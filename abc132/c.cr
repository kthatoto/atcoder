n = read_line.to_i
d = read_line.split.map(&.to_i).sort
arc = d[n // 2]
abc = d[n // 2 - 1]
puts arc - abc

# n = read_line.to_i
# nh = n // 2
# d = read_line.split.map(&.to_i)
# k = d.sum // n
#
# result = 0
#
# arc = d.count { |di| di >= k }
# if arc == nh
#   while d.count { |di| di >= k } == nh
#     result += 1
#     k += 1
#   end
#   k = d.sum // n
#   while d.count { |di| di >= k } == nh
#     result += 1
#     k -= 1
#   end
#   result -= 1
# elsif arc > nh
#   while (arc = d.count { |di| di >= k }) >= nh
#     result += 1 if arc == nh
#     k += 1
#   end
# elsif arc < nh
#   while (arc = d.count { |di| di >= k }) <= nh
#     result += 1 if arc == nh
#     k -= 1
#   end
# end
#
# puts result
