a, b, c, d = read_line.split.map(&.to_i)
turn = 0
while a > 0 && c > 0
  if turn % 2 == 0
    c -= b
  else
    a -= d
  end
  turn += 1
end

puts a <= 0 ? "No" : "Yes"
