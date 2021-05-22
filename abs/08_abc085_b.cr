n = read_line.to_i
dn = (1..n).map { read_line.to_i }
puts dn.uniq.size
