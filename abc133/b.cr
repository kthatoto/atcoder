n, d = read_line.split.map(&.to_i)

x = [] of Array(Int32)
n.times do
  x.push read_line.split.map(&.to_i)
end

def int_check(x1 : Array(Int32), x2 : Array(Int32)) : Bool
  sum = 0
  x1.each_with_index do |xi, i|
    sum += (xi - x2[i])**2
  end
  sum == (sum**(1 / 2)).to_i ** 2
end

result = 0
x.each_with_index do |xi, i|
  ((i + 1)..(x.size - 1)).each do |j|
    result += 1 if int_check(xi, x[j])
  end
end

puts result
