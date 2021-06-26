n = read_line.to_i
ab = [] of Array(Int32)
cd = [] of Array(Int32)
n.times { ab.push read_line.split.map(&.to_i) }
n.times { cd.push read_line.split.map(&.to_i) }

[
  [
    [1, 0],
    [0, 1]
  ],
  [
    [0, 1],
    [-1, 0]
  ],
  [
    [-1, 0],
    [0, -1]
  ],
  [
    [0, -1],
    [1, 0]
  ]
].each do |v|
  r_ab = ab.map do |abi|
    a = abi[0]
    b = abi[1]
    [a * v[0][0] + b * v[1][0], a * v[0][1] + b * v[1][1]]
  end

  n.times do |i|
    t_cd = cd[i]
    m_ab = r_ab[0]
    move = [t_cd[0] - m_ab[0], t_cd[1] - m_ab[1]]
    rm_ab = r_ab.map do |abi|
      [abi[0] + move[0], abi[1] + move[1]]
    end
    res = rm_ab.all? do |abi|
      cd.includes?(abi)
    end
    if res
      puts "Yes"
      exit
    end
  end
end

puts "No"
