a, b = read_line.split.map(&.to_i)
s = read_line.split("-")
if s.size != 2
  puts "No"
  exit
end

puts s.map(&.size) == [a, b] ? "Yes" : "No"
