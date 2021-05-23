gets
x = read_line.split.map(&.to_i)

result = 1_000_000_000_000_i64

x.min.upto(x.max) do |i|
  sum = x.map { |xi| (xi - i) ** 2 }.sum
  result = sum if sum < result
end

puts result
