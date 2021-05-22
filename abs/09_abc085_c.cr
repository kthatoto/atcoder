# 10*a + 5*b + c = y // 1000
#    a +   b + c = n
#  9*a + 4*b     = y // 1000 - n
n, y = read_line.to_s.split.map(&.to_i)
y = y // 1000

v = y - n
(0..(v // 9)).each do |a|
  b = (v - 9 * a) // 4
  if (v - 9 * a) % 4 == 0 && n - a - b >= 0
    puts "#{a} #{b} #{n - a - b}"
    exit
  end
end

puts "-1 -1 -1"
