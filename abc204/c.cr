n, m = read_line.split.map(&.to_i)

result = Hash(Int32, Array(Int32)).new
roads = Hash(Int32, Array(Int32)).new

m.times do
  a, b = read_line.split.map(&.to_i)
  roads[a] = [] of Int32 if roads[a]?.nil?
  roads[a].push b
end

start_goals = Hash(Int32, Array(Int32)).new

(1..n).each do |start|
  pos = start
  goals = Hash(Int32, Bool).new
  kouhos = [start] of Int32
  while kouhos.size > 0
    pos = kouhos.shift
    if start_goals[pos]?
      start_goals[pos].each do |g|
        goals[g] = true
      end
    else
      if roads[pos]?
        kouhos.concat(roads[pos])
      end
      kouhos = kouhos.uniq - goals.keys
      goals[pos] = true
    end
  end
  start_goals[start] = goals.keys
end

puts start_goals.sum { |start_goal| start_goal.last.size }
