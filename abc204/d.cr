n = read_line.to_i
t = read_line.split.map(&.to_i)

dp = [{ 0 => true }]

(1..n).each do |i|
  new_value = Hash(Int32, Bool).new
  dp[i - 1].each do |key, _value|
    new_value[key] = true
    new_value[key + t[i - 1]] = true
  end
  dp.push new_value
end

t_sum = t.sum
result = 1<<30
dp.last.keys.each do |key|
  if (t_sum / 2 - key).abs < (t_sum / 2 - result).abs && (t_sum / 2 <= key)
    result = key
  end
end

p result
