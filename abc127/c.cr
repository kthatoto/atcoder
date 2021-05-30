n, m = read_line.split.map(&.to_i)

l, r = nil, nil
m.times do
  li, ri = read_line.split.map(&.to_i)
  l = li if l.nil? || l < li
  r = ri if r.nil? || r > ri
end
puts (l..r).size
