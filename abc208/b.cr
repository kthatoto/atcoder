p = read_line.to_i64
coin_values = Hash(Int32, Int64).new
(1..10).each do |n|
  if n == 1
    coin_values[n] = 1
    next
  end

  coin_values[n] = coin_values[n - 1] * n
end

result = 0
(1..10).to_a.reverse.each do |n|
  value = coin_values[n]
  count = 100
  while p >= value && count > 0
    count -= 1
    p -= value
    result += 1
  end
end

p result
