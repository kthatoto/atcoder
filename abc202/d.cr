a, b, k = read_line.split.map(&.to_i64)

result = ""

# 初項1, 等差b - 1, 1項目~a項目の和
while b > 0
  while a >= 0
    puts "a:#{a}, b:#{b}, k:#{k}, result:#{result}"
    if k == 0
      a -= 1
      result += "a"
      next
    end
    sn = (a / 2) * (2 + (a - 1) * (b - 1))
    if k > sn && sn > 0
      k -= sn
      result += "b"
    else
      result += "a"
    end
    a -= 1
  end
  b_count = result.count("b")
  a, b = b_count, b - b_count
  if a == 1 && b == 1
    if k == 1
      result += "b"
    else
      result += "a"
    end
    b = 0
  end
end

puts result
