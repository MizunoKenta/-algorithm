a, b, c, x, y = gets.strip.split.map(&:to_i)
xsave = x
ysave = y
ab = c * 2
ans = 0
flag = 0

while flag == 0 do
  if xsave >= 1 && ysave >= 1
    if a + b > ab
      ans += ab
    else
      ans += a + b
    end
    xsave -= 1
    ysave -= 1
  elsif xsave >= 1 && ysave <= 0
    if a > ab
      ans += ab
    else
      ans += a
    end
    xsave -= 1
  elsif xsave <= 0 && ysave >= 1
    if b > ab
      ans += ab
    else
      ans += b
    end
    ysave -= 1
  elsif xsave <= 0 && ysave <= 0
    flag += 1
  end

end

puts ans
