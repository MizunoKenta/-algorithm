n , y = gets.strip.split.map(&:to_i)
yukichi = 0
noguchi = 0
ichiyo = 0
flag1 = 0
for i in 0..2*n
  if y >= 10000
    y -= 10000
    yukichi += 1
  elsif y >= 5000
    y -= 5000
    ichiyo += 1
  elsif y > 0
    y -= 1000
    noguchi += 1
  end
end

while flag1 == 0 do
  save = n - (yukichi + ichiyo + noguchi)
  if save < 0
    flag = 1
    flag1 = 1
  elsif save == 0
    flag1 = 1
    flag = 0
  elsif save >= 4 && ichiyo >= 1
    ichiyo -= 1
    noguchi += 5
  elsif yukichi >= 1 && save >= 1
    yukichi -= 1
    ichiyo += 2
  else
    flag1 = 1
    flag = 1
  end
end

if flag == 0
  puts "#{yukichi} #{ichiyo} #{noguchi}"
else
  puts "-1 -1 -1"
end


# n , y = gets.strip.split.map(&:to_i)
# flag = 1
# yukichi = 0
# noguchi = 0
# ichiyo = 0
# save = n
# flag1 = 0
#
# for i in 0..2*n
#   if y >= 10000
#     y -= 10000
#     yukichi += 1
#   elsif y >= 5000
#     y -= 5000
#     ichiyo += 1
#   elsif y > 0
#     y -= 1000
#     noguchi += 1
#   else
#     flag = 0
#   end
# end
#
# while flag1 == 0 do
#   save = n - (yukichi + ichiyo + noguchi)
#   if save >= 2 && ichiyo >= 1
#     ichiyo -= 1
#     noguchi += 5
#   elsif yukichi >= 1 && save >= 1
#     yukichi -= 1
#     ichiyo += 2
#   else
#     flag1 = 1
#     flag = 1
#   end
#   if n == yukichi + ichiyo + noguchi
#     flag1 = 1
#     flag = 0
#     save = 0
#   end
#   if save < 0
#     flag = 1
#     flag1 = 1
#   end
# end
#
# if flag == 0
#   puts "#{yukichi} #{ichiyo} #{noguchi}"
# else
#   puts "-1 -1 -1"
# end
