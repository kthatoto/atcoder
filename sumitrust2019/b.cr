n = read_line.to_i
x = (n * 100 / 108).to_i
if (x * 108 / 100).to_i == n
  puts x
else
  if ((x + 1) * 108 / 100).to_i == n
    puts x + 1
  else
    puts ":("
  end
end
