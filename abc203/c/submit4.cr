# 68329388
# 1m 11s 36ms 36260806ns

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

3.times do
  indexes = [] of Int32
  a.each_with_index do |ai, i|
    bi = b[i]
    if ai <= k
      k += bi
      indexes.push i
    end
  end

  indexes.sort.reverse.each do |i|
    a.delete_at i
    b.delete_at i
  end
end

a = a.sort
b = b.sort

while a.size > 0 && k >= a.first
  a.shift
  next_b = b.shift
  k += next_b
end
puts k

tt = Time.monotonic - start_time
puts "#{tt.minutes}m #{tt.seconds}s #{tt.milliseconds}ms #{tt.nanoseconds}ns"
