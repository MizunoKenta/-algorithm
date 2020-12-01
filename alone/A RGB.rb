r, g, b = gets.strip.split.map(&:to_i)
sum = r * 100 + g * 10 + b

if sum % 4 == 0
  puts "YES"
else
  puts "NO"
end

# puts r * 100 + g * 10 + b
