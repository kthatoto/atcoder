a = read_line.to_i
b = read_line.to_i
c = read_line.to_i
d = read_line.to_i
e = read_line.to_i

dishes = [a, b, c, d, e].sort_by { |dish| ((dish - 1) % 10) }
puts dishes[0] + dishes[1..].sum { |dish| dish + (dish % 10 == 0 ? 0 : (10 - dish % 10)) }
