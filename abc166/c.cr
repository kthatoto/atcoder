n, m = read_line.split.map(&.to_i)
h = read_line.split.map(&.to_i64)

graph = {} of Int32 => Int64
n.times do |i|
  graph[i + 1] = 0
end

m.times do
  a, b = read_line.split.map(&.to_i)
  ah, bh = h[a - 1], h[b - 1]
  graph[a] = bh if graph[a] < bh
  graph[b] = ah if graph[b] < ah
end

puts graph.count { |i, mh| h[i - 1] > mh }
