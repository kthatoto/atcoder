n, k = read_line.split.map(&.to_i64)
a = read_line.split.map(&.to_i64)

a = a.map_with_index { |v, i| { value: v, index: i } }

a = a.sort_by { |ai| ai[:value] }.
      map_with_index { |ai, i| { value: ai[:value], index: ai[:index], sort: i } }.
      sort_by { |ai| ai[:index] }

a.each do |ai|
  puts (k // n) + (k % n >= ai[:sort] + 1 ? 1 : 0)
end
