n = gets.to_i
flag = 0

for i in 0..100
  for j in 0..100
    if 4*i + 7*j == n
      flag = 1
    end
  end
end

if flag == 1
  puts "Yes"
else
  puts "No"
end


#i,j,k
# puts i,j
# 0,0
# 0,1
# 0,2
# 0,100
# -----------
# 1,0
# 1,1
# 1,100
# ------------
# 2,0
# 2,1
# 2,2
# -------------
# 3,0
# 3,1
# 3,2
# 3,3

# 別解（みっちー）
#
as = gets.to_i
flag = 0
for i in 0..as / 4
  for k in 0..as / 7
    flag = 1 if i * 4 + k * 7 == as
  end
end
if flag == 1
  puts "Yes"
else
  puts "No"
end
