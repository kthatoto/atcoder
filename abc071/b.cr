s = read_line
('a'..'z').each do |c|
  if s.index(c).nil?
    puts c
    exit
  end
end

puts "None"
