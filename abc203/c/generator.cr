File.open("./test_case.txt", "w") do |file|
  file.puts "200000 #{(rand * 10.to_u64**8).to_u64}"
  200000.times do
    file.puts "#{(rand * 10.to_u64**18).to_u64} #{(rand * 10.to_u64**8).to_u64}"
  end
end
