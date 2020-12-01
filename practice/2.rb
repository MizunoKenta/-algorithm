word = gets.strip.split

def count_abc(word)
  puts word.scan("ABC").length
end

count_abc(word)
