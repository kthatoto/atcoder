n = read_line.to_i
d = Hash(String, Int32).new(0)

n.times do
  d[read_line] += 1
end

c = d.values.max
puts d.keys.sort.select { |s| d[s] == c }.join("\n")
