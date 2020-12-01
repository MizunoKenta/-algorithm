a = gets.split("")
as = 700

for i in 0..a.length-1
  if a[i] == "o"
    as += 100
  end
end

puts as
