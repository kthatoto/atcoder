n, k = read_line.split.map(&.to_i)
puts k * (1..n).to_a.sum * 100 + (1..k).to_a.sum * n
