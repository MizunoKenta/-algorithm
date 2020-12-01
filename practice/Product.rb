a, b = gets.strip.split.map(&:to_i)
#puts (a * b).odd? ? 'Odd' : 'Even'

if a * b % 2 == 0
  puts "Even"
else
  puts "odd"
end
