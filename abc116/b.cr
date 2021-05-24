s = read_line.to_i
array = [s]
while true
  last = array.last
  s = last % 2 == 0 ? last // 2 : last * 3 + 1
  break if array.includes?(s)
  array.push s
end

puts array.size + 1
