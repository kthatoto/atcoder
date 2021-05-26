n, m = read_line.split.map(&.to_i)
if n % 2 == 1
  m.times do |i|
    puts "#{i + 1} #{n - i}"
  end
else
  m.times do |i|
    pos1 = i + 1
    pos2 = n - i
    pos2 -= 1 if pos2 - pos1 <= n / 2
    puts "#{pos1} #{pos2}"
  end
end
