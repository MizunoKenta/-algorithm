n = gets.to_i
ans = 1

while n >= ans do
  ans *= 2
end

puts ans/2

#while　条件式 do

#条件式を満たしている間常に続く

#今回の場合は８になった時にまだ続くから１６になる、それを一つ前に戻したいから最後に÷２になる。


# 別解（みっちー）
# as = gets.to_i
# ans = 0
# while as >= 2 do
#   as /= 2
#   ans += 1
# end
# puts 2**ans
