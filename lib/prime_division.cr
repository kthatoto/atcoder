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
