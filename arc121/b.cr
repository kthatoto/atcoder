n = read_line.to_i
rdocs = [] of Int64
gdocs = [] of Int64
bdocs = [] of Int64

(n * 2).times do
  ai, ci = read_line.split
  case ci
  when "R"
    rdocs << ai.to_i64
  when "G"
    gdocs << ai.to_i64
  when "B"
    bdocs << ai.to_i64
  end
end

all_docs = [rdocs, gdocs, bdocs]
if all_docs.count { |docs| docs.size % 2 == 0 } == 3
  puts 0
  exit
end

all_docs = all_docs.map(&.sort)
even_docs = all_docs.select { |docs| docs.size % 2 == 0 }.first
docs1, docs2 = all_docs.select { |docs| docs.size % 2 == 1 }

def calculate_min(docs1, docs2)
  res_i, res_j = 0, 0
  i, j = 0, 0
  min = [docs1, docs2].flatten.max
  while i < docs1.size && j < docs2.size
    fuman = (docs1[i] - docs2[j]).abs
    if fuman < min
      min = fuman
      res_i, res_j = i, j
    end
    if docs1[i] < docs2[j]
      i += 1
    else
      j += 1
    end
  end
  return min, res_i, res_j
end

min1, _, _ = calculate_min(docs1, docs2)
if even_docs.size == 0
  puts min1
  exit
end
min2, even_i, _ = calculate_min(even_docs, docs1)
even_docs.delete_at(even_i)
min3, _, _ = calculate_min(even_docs, docs2)

puts [min1, min2 + min3].min
