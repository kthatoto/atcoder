n = read_line.to_i

p = [] of Array(Int64)
max_x_indexes = [] of Int32
min_x_indexes = [] of Int32
max_y_indexes = [] of Int32
min_y_indexes = [] of Int32

n.times do |i|
  x, y = read_line.split.map(&.to_i64)
  p.push [x, y]

  max_x_indexes = max_x_indexes.concat([i]).sort_by { |j| p[j].first }.reverse[0..1]
  min_x_indexes = min_x_indexes.concat([i]).sort_by { |j| p[j].first }[0..1]
  max_y_indexes = max_y_indexes.concat([i]).sort_by { |j| p[j].last }.reverse[0..1]
  min_y_indexes = min_y_indexes.concat([i]).sort_by { |j| p[j].last }[0..1]
end

indexes = [max_x_indexes, min_x_indexes, max_y_indexes, min_y_indexes].flatten.uniq
values = [] of Int64
indexes.combinations(2).each do |ij|
  p1 = p[ij.first]
  p2 = p[ij.last]
  values.push [(p1.first - p2.first).abs, (p1.last - p2.last).abs].max
  values = values.sort.reverse[0..1]
end
puts values[1]
