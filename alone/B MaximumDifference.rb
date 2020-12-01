x = gets.to_i

i = gets.strip.split.map(&:to_i)

ans = i.max - i.min

puts ans
