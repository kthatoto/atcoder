s = read_line.split("").map(&.to_i).reverse
s = s.map do |n|
  next n if n <= 1 || n == 8
  next 9 if n == 6
  next 6 if n == 9
end
puts s.join
