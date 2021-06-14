a, b, c = read_line.split.map(&.to_i64)

if a == b
  puts "="
elsif c % 2 == 0
  a = a.abs
  b = b.abs
  if a == b
    puts "="
  elsif a < b
    puts "<"
  else
    puts ">"
  end
else
  if a < b
    puts "<"
  elsif a > b
    puts ">"
  end
end
