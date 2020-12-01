a , b = gets.strip.split.map(&:to_i)
ans = 0
for i in a..b
  x = i.to_s
  x = x.strip.split("")
  xreverse = x.reverse
  if x == xreverse
    ans += 1
  end
end

puts ans
