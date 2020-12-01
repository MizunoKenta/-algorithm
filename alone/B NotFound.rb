# s = gets.strip.split("")
#
# x = s.sort
#
# p x

as = gets.strip.split("")
as = as.sort
a = "a"

for i in 0..as.length-1
  if a == as[i]
    a = (a.ord+1).chr
  end
end

#AがあったらBになって、の繰り返し。下から上に上書きしながら戻る。

if a == ("z".ord+1).chr
  a = "None"
end

puts a
