# s = read_line.to_s.reverse
#
# while s.size > 0
#   hit = false
#   %w(dream dreamer erase eraser).map(&.reverse).each do |key|
#     next unless s.starts_with?(key)
#     hit = true
#     if s.size == key.size
#       puts "YES"
#       exit
#     end
#     s = s[(key.size)..]
#   end
#   break unless hit
# end
#
# puts "NO"

# https://atcoder.jp/contests/abs/submissions/22521438
s = read_line.to_s
s = s.gsub("dream", "D").gsub("erase", "E").gsub("Der", "").gsub("Er", "").gsub("D", "").gsub("E", "")
puts s == "" ? "YES" : "NO"
