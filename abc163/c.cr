n = read_line.to_i
bukas = Hash(Int32, Int32).new
read_line.split.map(&.to_i).each do |boss|
  bukas[boss] = 0 if bukas[boss]?.nil?
  bukas[boss] += 1
end

(1..n).each do |boss|
  puts bukas[boss]? || 0
end
