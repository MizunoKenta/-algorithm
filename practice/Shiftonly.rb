n = gets.to_i
as= gets.strip.split.map(&:to_i)
flag = 0
ans = 0
while flag == 0 do
  #flag1 = 0
  for k in 0..n-1
    if as[k] % 2 == 0
      as[k] /= 2
    else
      #flag1 = 1
      flag = 1
      break
    end
  end
  if flag != 0
    break
  end
  ans += 1
  # if flag1 == 0
  #   ans += 1
  # end

end
puts ans
