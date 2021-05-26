n = read_line.to_i
p = read_line.split.map(&.to_i)
q = read_line.split.map(&.to_i)

a = 0
pn = (1..n).to_a
p.each_with_index do |pi, i|
  if i == p.size - 1
    a += 1
    break
  end
  digit = n - i
  perm = (1..(digit - 1)).product
  lower_count = pn.count { |pj| pj < pi }
  a += perm * lower_count
  pn.delete(pi)
end

b = 0
qn = (1..n).to_a
q.each_with_index do |qi, i|
  if i == q.size - 1
    b += 1
    break
  end
  digit = n - i
  perm = (1..(digit - 1)).product
  lower_count = qn.count { |qj| qj < qi }
  b += perm * lower_count
  qn.delete(qi)
end

puts (a - b).abs
