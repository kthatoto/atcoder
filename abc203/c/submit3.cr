# 68329388
# 1m 17s 815ms 815533388ns

f = File.open("./test_case.txt")
start_time = Time.monotonic
n, k = f.read_line.split.map(&.to_u64)

a = [] of UInt64 # 村番号
b = [] of UInt64 # 金額

n.times do
  ai, bi = f.read_line.split.map(&.to_u64)

  if ai <= k
    k += bi
    next
  end

  if a.size == 0
    a.push ai
    b.push bi
    next
  end

  a_just_index = a.index(ai)
  if a_just_index
    b[a_just_index] += bi
    next
  end

  a.push ai
  b.push bi
end

a = a.sort
b = b.sort

pos = 0.to_u64
while k > 0
  if a.size == 0
    pos += k
    break
  end

  next_a = a.shift
  next_b = b.shift

  if next_a - pos > k
    pos += k
    break
  end

  k -= next_a - pos
  pos = next_a
  k += next_b
end

puts pos

tt = Time.monotonic - start_time
puts "#{tt.minutes}m #{tt.seconds}s #{tt.milliseconds}ms #{tt.nanoseconds}ns"
