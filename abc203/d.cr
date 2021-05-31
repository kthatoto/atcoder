n, k = read_line.split.map(&.to_i)
a = [] of Array(Int64)

n.times { a.push read_line.split.map(&.to_i64) }

vs = [] of Int64
(n - k + 1).times do |y|
  (n - k + 1).times do |x|
    v = a[y..(y + k - 1)].map { |row| row[x..(x + k - 1)] }.flatten.sort.reverse
    vs.push v[v.size // 2]
  end
end

puts vs.min
