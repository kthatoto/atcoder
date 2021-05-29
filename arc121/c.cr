t = read_line.to_i

def sorted?(p : Array(Int32))
  result = true
  p.each_with_index(1) do |pi, i|
    if pi != i
      result = false
      break
    end
  end
  result
end

t.times do
  n = read_line.to_i
  p = read_line.split.map(&.to_i)

  if sorted?(p)
    puts 0
    puts
    next
  end

  ops = [] of Int32
  (4..n).to_a.reverse.each do |i|
    index = p.index(i).not_nil! + 1
    next if index == i
    while true
      if index % 2 == ops.size % 2
        dummy_op = index + 1 == i ? index - 1 : index + 1
        ops.push dummy_op
        p[(dummy_op - 1), 2] = [p[dummy_op], p[dummy_op - 1]]
        index = p.index(i).not_nil! + 1
      else
        break
      end
    end
    (index..(i - 1)).each do |j|
      ops.push j
      p[(j - 1), 2] = [p[j], p[j - 1]]
    end
  end
  p = p[0..2]
  while !sorted?(p)
    op = (ops.size % 2) + 1
    ops.push op
    p[(op - 1), 2] = [p[op], p[op - 1]]
  end

  puts ops.size
  puts ops.join(" ")
end
