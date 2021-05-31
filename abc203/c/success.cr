# 68329388
# 0m 0s 427ms 427524162ns

f = File.open("./test_case.txt")

start_time = Time.monotonic
n, k = f.read_line.split.map(&.to_u64)

ab = [] of Array(UInt64)

n.times do
  ab.push f.read_line.split.map(&.to_u64)
end

ab.sort!

ab.each do |abi|
  if abi.first <= k
    k += abi.last
  else
    break
  end
end
puts k

tt = Time.monotonic - start_time
puts "#{tt.minutes}m #{tt.seconds}s #{tt.milliseconds}ms #{tt.nanoseconds}ns"
