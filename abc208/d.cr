n, m = read_line.split.map(&.to_i64)

# {
#   1: {
#     2: 3,
#     3: 4,
#   }
# }
roads = Hash(Int64, Hash(Int64, Int64)).new
(1..m).map do
  a, b, c = read_line.split.map(&.to_i64)
  roads[a] = Hash(Int64, Int64).new unless roads[a]?
  roads[a][b] = c
end

# {
#   1: {
#     3: [
#       { cost: 5, visited: [2] },
#       { cost: 4, visited: [4] },
#     ]
#   }
# }
costs = Hash(Int64,
          Hash(Int64,
            Array(
              Hash(Symbol, Int64 | Array(Int64))
            )
          )
        ).new

(1..n).each do |a|
  a = a.to_i64
  costs[a] = Hash(Int64, Array( Hash(Symbol, Int64 | Array(Int64)) ) ).new
  (1..n).each do |b|
    b = b.to_i64
    next unless roads[a]?
    # [
    #   { curr: 2, cost: 3, visited: [4] },
    #   { curr: 3, cost: 5, visited: [4, 3] },
    # ]
    cands = roads[a].map do |n, cost|
      { curr: n, cost: cost, visited: [] of Int64 }
    end

#   [
#     { cost: 5, visited: [2] },
#     { cost: 4, visited: [4] },
#   ]
    reaches = [] of Hash(Symbol, Int64 | Array(Int64))
    while cands.size > 0
      new_cands = [] of Hash(Symbol, Int64 | Array(Int64))

      cands.each do |cand|
        if cand[:curr] == b
          reaches.push({:cost => cand[:cost], :visited => cand[:visited]})
          next
        end

        # { 2: <cost>, 3: <cost> }
        curr_roads = roads[cand[:curr]]?
        next if curr_roads.nil?
        curr_roads.each do |n, cost|
          next if cand[:visited].as(Array(Int64)).includes?(n)
          new_cands.push({
            :curr => n,
            :cost => cand[:cost].as(Int64) + cost,
            :visited => cand[:visited].as(Array(Int64)).concat([cand[:curr].as(Int64)])
          })
        end
      end
      cands = new_cands
    end

    costs[a][b] = reaches
  end
end

result = 0.to_i64
(1..n).each do |s|
  (1..n).each do |t|
    (1..n).each do |k|
      next if costs[s]?.nil?
      next if costs[s][t]?.nil?
      curr_costs = costs[s][t].select do |cost|
        (cost[:visited].as(Array(Int64))).all? { |v| v <= k }
      end
      next if curr_costs.size == 0
      result += curr_costs.min_by { |cost| cost[:cost].as(Int64) }[:cost].as(Int64)
    end
  end
end

p result
