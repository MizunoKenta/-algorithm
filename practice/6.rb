n = gets.to_i
mochis = n.times.map {gets.to_i}
puts mochis.uniq.size

# n = gets.to_i
# x = []
# save = 9999999999999
# ans = 0
# for i in 1..n
#   a = gets.to_i
#   x << a
# end
# x = x.sort.reverse
# for i in 0..n-1
#   if save > x[i]
#     save = x[i]
#     ans += 1
#   end
# end
# puts ans
