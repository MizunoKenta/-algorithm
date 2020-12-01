n, a, b = gets.strip.split.map(&:to_i)

#各桁の和を求める
def digit_sum n
  sum = 0
  while n > 0 do
    sum += n % 10
    n /= 10
  end
  sum
end

ans = (1..n)
  .map{ |i| [i, digit_sum(i)] }
  .select{ |d| a<= d[1] && d[1] <= b }
  .inject(0) { |sum, d| sum + d|0| }

  puts ans


  #みっちー回答

  # n , a , b = gets.strip.split.map(&:to_i)
  # ans = 0
  #
  # for i in 1..n
  #   jadge = i
  #   save = 0
  #   flag = 0
  #   while flag == 0
  #     save += jadge % 10
  #     jadge /= 10
  #     if jadge < 1
  #       flag = 1
  #     end
  #   end
  #
  #   if a <= save && save <= b
  #     ans += i
  #   end
  # end
  # puts ans
