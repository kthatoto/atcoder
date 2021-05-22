n = read_line.to_i
an = read_line.to_s.split.map(&.to_i).sort.reverse

alice = 0
bob = 0

an.each_with_index do |a, i|
  if i % 2 == 0
    alice += a
  else
    bob += a
  end
end

puts alice - bob
