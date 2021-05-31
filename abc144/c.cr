def prime_division(n : UInt64) : Hash(UInt64, UInt64)
  result = Hash(UInt64, UInt64).new

  m = 2_u64
  i = n.dup
  while i > 1 && m <= n**(1 / 2)
    c = 0_u64
    while i % m == 0
      i //= m
      c += 1
    end
    result[m] = c if c > 0
    m += m == 2 ? 1 : 2
  end

  result.size > 0 ? result : { n => 1_u64 }
end

n = read_line.to_u64
res = prime_division(n)
primes = res.map(&.first)
prime_counts = res.map(&.last)

result = 10_u64**13
i = Array.new(primes.size, 0)
(prime_counts.map { |n| n + 1 }.product - 1).times do
  i_result = i.map_with_index { |ii, index| primes[index]**ii }.product
  j_result = n // i_result
  result = [result, i_result + j_result - 2].min

  next_i = i.map(&.itself)
  i.each_with_index do |ii, index|
    if next_i[index] == prime_counts[index]
      next_i[index] = 0
    else
      next_i[index] += 1
      break
    end
  end

  i = next_i
end

puts result
