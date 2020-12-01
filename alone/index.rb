s = gets.strip.split("")

even = s.each_slice(2).map(&:first)

puts even.join
