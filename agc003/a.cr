s = read_line

n_count = s.count('N')
w_count = s.count('W')
s_count = s.count('S')
e_count = s.count('E')

puts [n_count, s_count].count { |c| c > 0 } % 2 == 1 || [w_count, e_count].count { |c| c > 0 } % 2 == 1 ? "No" : "Yes"
