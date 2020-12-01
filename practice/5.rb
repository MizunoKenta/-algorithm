#みっちー

n = gets.to_i
as = gets.strip.split.map(&:to_i)
as = as.sort.reverse
ans = 0
for i in 0..n-1
  if i % 2 == 0
    ans += as[i]
  else
    ans -= as[i]
  end
end
puts ans
