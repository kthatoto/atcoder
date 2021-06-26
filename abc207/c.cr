n = read_line.to_i
ranges = [] of Array(Int64)
n.times do
  ranges << read_line.split.map(&.to_i64)
end

result = 0
ranges.each_with_index do |range1, i|
  ((i + 1)..(ranges.size - 1)).each do |j|
    range2 = ranges[j]
    r1 = nil
    r2 = nil
    if range1[2] < range2[2]
      r1 = range1
      r2 = range2
    else
      r1 = range2
      r2 = range1
    end

    next if r1[2] < r2[1]
    if r2[1] < r1[2]
      result += 1
      next
    end
    if [1, 2].includes?(r2[0]) && [1, 3].includes?(r1[0])
      result += 1
    end
  end
end
p result
