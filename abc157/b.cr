a = [] of Int32
hit = Array.new(9, false)
3.times { a.concat(read_line.split.map(&.to_i)) }
n = read_line.to_i
n.times do
  b = read_line.to_i
  index = a.index(b)
  hit[index] = true if index
end

bingos = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8],
  [0, 3, 6], [1, 4, 7], [2, 5, 8],
  [0, 4, 8], [2, 4, 6],
]
if bingos.find { |bingo| bingo.all? { |b| hit[b] } }
  puts "Yes"
else
  puts "No"
end
