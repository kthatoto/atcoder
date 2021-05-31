n, k = read_line.split.map(&.to_u64)

ab = [] of Array(UInt64)

n.times do
  ab.push read_line.split.map(&.to_u64)
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
