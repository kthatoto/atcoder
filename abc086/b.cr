a, b = read_line.split.map(&.to_s)
c = (a + b).to_i
puts (Math.sqrt(c).to_i ** 2).to_i == c ? "Yes" : "No"
