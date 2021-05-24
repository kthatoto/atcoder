x = read_line.to_i
if x == 2
  puts 2
  exit
end
x += 1 if x % 2 == 0
while true
  d = 3
  divided = false
  while d <= Math.sqrt(x)
    if x % d == 0
      divided = true
      break
    end
    d += 2
  end

  break unless divided
  x += 2
end

puts x
