n = read_line.to_i
an = read_line.to_s.split.map(&.to_i)
i = 0
while an.all?(&.even?)
  i += 1
  an.map! {|a| a % 2 == 0 ? (a / 2).to_i : a}
end
puts i
