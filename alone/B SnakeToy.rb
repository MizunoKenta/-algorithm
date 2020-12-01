n, k = gets.strip.split.map(&:to_i)
i = gets.strip.split.map(&:to_i)
#数字以外のものは勝手に分けてくれる

x = i.sort.reverse
y = x[0,k]

puts y.sum
