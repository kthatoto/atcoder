def prime_division(n : UInt64) : Hash(UInt64, UInt64)
  result = Hash(UInt64, UInt64).new

  m = 2_u64
  while n > 1
    c = 0_u64
    while n % m == 0
      n //= m
      c += 1
    end
    result[m] = c if c > 0
    m += m == 2 ? 1 : 2
  end

  result
end
