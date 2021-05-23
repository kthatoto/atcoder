n = read_line.to_i
k = read_line.to_i
x = read_line.split.map(&.to_i)
puts x.map { |xi| [xi, (xi - k).abs].min * 2 }.sum
