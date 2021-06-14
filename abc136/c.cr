n = read_line.to_i
h = read_line.split.map(&.to_i)

last = nil
h = h.select do |hi|
  next false if last == hi
  last = hi
  true
end

result = true
(h.size - 1).times do |i|
  if h[i] - h[i + 1] >= 2
    result = false
    break
  end
end

if result
  (h.size - 2).times do |i|
    if h[i] > h[i + 1] && h[i + 1] > h[i + 2]
      result = false
      break
    end
  end
end

puts result ? "Yes" : "No"
