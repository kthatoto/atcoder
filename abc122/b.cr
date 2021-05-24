s = read_line

result = 0
counter = 0
s.split("").each do |char|
  if ["A", "C", "G", "T"].includes?(char)
    counter += 1
    result = counter if counter > result
  else
    counter = 0
  end
end
puts result
