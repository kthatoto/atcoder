n, a, b = read_line.split.map(&.to_i)
s = read_line

ab_count = 0
b_count = 0

n.times do |j|
  i = s[j]
  if i == 'a' && ab_count < a + b
    ab_count += 1
    puts "Yes"
  elsif i == 'b' && ab_count < a + b && b_count < b
    ab_count += 1
    b_count += 1
    puts "Yes"
  else
    puts "No"
  end
end
