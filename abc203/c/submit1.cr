# 68329388
# 1m 58s 71ms 71321358ns

f = File.open("./test_case.txt")
start_time = Time.monotonic
n, k = f.read_line.split.map(&.to_i64)

a = [] of Int64
b = [] of Int64

a_time = Time::Span.zero
b_time = Time::Span.zero
n.times do
  ai, bi = f.read_line.split.map(&.to_i64)
  if a.size == 0
    a.push ai
    b.push bi
    next
  end

  b_t = Time.monotonic
  a_just_index = a.index(ai)
  if a_just_index
    b[a_just_index] += bi
    next
  end
  b_time += Time.monotonic - b_t

  a_t = Time.monotonic
  # 全探索
  a_index = a.index { |aj| aj > ai }
  if a_index.nil?
    a.push ai
    b.push bi
    next
  end

  a[a_index, 0] = ai
  b[a_index, 0] = bi
  a_time += Time.monotonic - a_t
end
a_tt = a_time
b_tt = b_time
puts "b_time: #{b_tt.minutes}m #{b_tt.seconds}s #{b_tt.milliseconds}ms #{b_tt.nanoseconds}ns"
puts "a_time: #{a_tt.minutes}m #{a_tt.seconds}s #{a_tt.milliseconds}ms #{a_tt.nanoseconds}ns"


pos = 0
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
