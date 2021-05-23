a, b, c = read_line.split.map(&.to_i64)
first_abc = [a, b, c]
result = 0
while a.even? && b.even? && c.even?
  result += 1
  a, b, c = (b + c) // 2, (c + a) // 2, (a + b) // 2
  if first_abc == [a, b, c]
    puts -1
    exit
  end
end

puts result
