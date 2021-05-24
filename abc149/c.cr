x = read_line.to_i

while true
  x += (x % 2 == 0) ? 1 : 2

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
end

puts x
