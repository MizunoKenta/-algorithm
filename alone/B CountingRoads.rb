# n, m = gets.strip.split.map(&:to_i)
# i = gets.strip.split.map(&:to_i) #道路
# as = n　#出力で使いたい
# number = 1
#
# for k in 0..i.length-1
#   if number = i
#

n , m = gets.strip.split.map(&:to_i)
ans = []

for i in 0..n-1
  ans.push(0)
end

for i in 1..m
  a , b = gets.strip.split.map(&:to_i)
  ans[a-1] += 1 #番地に数を足していく
  ans[b-1] += 1 #番地に数を足していく
end

puts ans
