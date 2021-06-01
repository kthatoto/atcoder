q, h, s, d = read_line.split.map(&.to_u64)
n = read_line.to_u64

qs = (q * 4).to_f64
hs = (h * 2).to_f64
ss = s.to_f64
ds = (d / 2).to_f64

priority = [[qs, 1 / 4], [hs, 1 / 2], [ss, 1], [ds, 2]].sort_by { |pv| pv.first }

result = 0_u64
priority.each do |pv|
  if pv.last <= 1
    result += (n * pv.first).to_u64
    break
  else
    result += (n // 2) * d
    if n % 2 == 0
      break
    else
      n = 1
    end
  end
end

puts result
