x = gets.to_i
ans = 0

for i in 1..9
  if x % i == 0 && x / i < 10
    ans += 1
  end
end

if ans > 0
  puts "Yes"
else
  puts "No"
end
