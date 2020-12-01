# length = gets.to_i
# word = gets
#
# def count_abc(word)
#   puts word.scan("ABC").length
# end
#
# count_abc(word)

a = gets.to_i
word = gets
def count(word)
  puts word.scan('ABC').length
end


count(word)
