a = read_line.to_i
b = read_line.to_i
c = read_line.to_i
d = read_line.to_i
e = read_line.to_i

dishes = [a, b, c, d, e].sort_by { |dish| -dish % 10 }
puts dishes.pop + dishes.sum { |dish| dish + (10 - dish % 10) }
