s, w = read_line.split.map(&.to_i)
puts s <= w ? "unsafe" : "safe"
