n, m, q = read_line.split.map(&.to_i)
a, b, c, d = [] of Int32, [] of Int32, [] of Int32, [] of Int32
q.times do
  ai, bi, ci, di = read_line.split.map(&.to_i)
  a << ai; b << bi; c << ci; d << di
end

av = Array.new(n, 0)
result = 0
result_pointer = pointerof(result)

def dfs(index, value, n, m, q, a, b, c, d, av, result_pointer)
  if index == n
    score = 0
    q.times do |i|
      score += d[i] if av[b[i] - 1] - av[a[i] - 1] == c[i]
    end
    result_pointer.value = score if result_pointer.value < score
    return
  end

  (value..m).each do |new_value|
    av[index] = value
    dfs(index + 1, new_value, n, m, q, a, b, c, d, av, result_pointer)
  end
end

dfs(0, 1, n, m, q, a, b, c, d, av, result_pointer)

puts result
