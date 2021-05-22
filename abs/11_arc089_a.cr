# n = read_line.to_i
# plans = (1..n).map do
#   read_line.to_s.split.map(&.to_i)
# end
#
# plans.unshift [0, 0, 0]
#
# (0..(plans.size - 2)).each do |i|
#   current_plan = plans[i]
#   next_plan = plans[i + 1]
#   time = next_plan[0] - current_plan[0]
#   distance = (next_plan[1] - current_plan[1]).abs + (next_plan[2] - current_plan[2]).abs
#   next if distance <= time && (time - distance) % 2 == 0
#
#   puts "No"
#   exit
# end
#
# puts "Yes"

# https://atcoder.jp/contests/abs/submissions/18412008
n = read_line.to_i

t, x, y = 0, 0, 0
n.times do
  tn, xn, yn = read_line.split.map(&.to_i)
  if (xn - x).abs + (yn - y).abs > tn - t || ((xn + yn - tn) & 1) != 0
    puts "No"
    exit
  end
  t, x, y = tn, xn, yn
end
puts "Yes"
