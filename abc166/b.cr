n, k = read_line.split.map(&.to_i)
snk = Array.new(n, false)

k.times do
  read_line
  a = read_line.split.map(&.to_i)
  a.each do |ai|
    snk[ai - 1] = true
  end
end

puts snk.count(false)
