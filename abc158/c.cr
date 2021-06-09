a, b = read_line.split.map(&.to_i)

price = b * 10
while true
  break if (price / 10).to_i > b
  if (price * 0.08).to_i == a
    puts price
    exit
  end
  price += 1
end

puts -1
