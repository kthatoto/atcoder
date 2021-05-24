n = read_line.to_i
a = read_line.split.map(&.to_i64)

result = 0
a.each_with_index do |ai, i|
  break if i == a.size - 1
  a[(i + 1)..].each_with_index do |aj, j|
    result += 1 if ai + aj == j + 1
  end
end

puts result
