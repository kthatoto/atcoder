x, y = read_line.split.map(&.to_i)

if x != y
  if [x, y].sort == [0, 1]
    puts 2
  elsif [x, y].sort == [0, 2]
    puts 1
  elsif [x, y].sort == [1, 2]
    puts 0
  end
else
  puts x
end
