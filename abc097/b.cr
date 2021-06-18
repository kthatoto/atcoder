x = read_line.to_i
if x == 1
  puts 1
  exit
end

result = 1
i = 2
while i**2 <= x
  pow = 2
  while i**pow <= x
    new_value = i**pow
    result = new_value if result < new_value && new_value <= x
    pow += 1
  end
  i += 1
end

puts result
