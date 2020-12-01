#West = 西　左
#East = 東　右

n = gets.to_i
s = gets.strip.split.map(&:to_f)

min = n

for i in 0..n.length-1
  for j in 0..n.length-1
    save = 0
    if i > j
      w =
