n = read_line.to_i
a = read_line.split.map(&.to_i)
puts a.uniq.size == a.size ? "Yes" : "No"
