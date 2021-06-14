n, q = read_line.split.map(&.to_u64)
a = read_line.split.map(&.to_u64)

q.times do
  k = read_line.to_u64

  if k < a.first
    puts k
    next
  end
  fcount = a.last - a.size
  if k > fcount
    puts a.last + (k - fcount)
    next
  end

  border = a.size // 2
  width = [a.size // 4, 1].max
  while k <= a[border - 1] - border || a[border] - (border + 1) < k
    if k <= a[border - 1] - border
      border -= width
    elsif a[border] - (border + 1) < k
      border += width
    end
    width //= 2 if width >= 2
    break if border == 0
  end

  lcount = a[border] - (border + 1)
  puts a[border] + (k - lcount)
end
