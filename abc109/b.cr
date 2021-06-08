n = read_line.to_i
w = (1..n).map { read_line }

if w.size != w.uniq.size
  puts "No"
  exit
end

next_char = w[0][-1]
(1..(n - 1)).each do |i|
  if next_char == w[i][0]
    next_char = w[i][-1]
    next
  end

  puts "No"
  exit
end

puts "Yes"
