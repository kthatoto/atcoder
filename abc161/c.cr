n, k = read_line.split.map(&.to_i64)
array = [] of Int64
n = n % k
while !array.includes?(n)
  array.push(n)
  n = (n - k).abs
end

puts array.min
