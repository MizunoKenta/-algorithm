def main(lines)
  s = gets.strip.split.map(&:to_i)
  count = 0
  discount = 0
  ans = []

  if s.include?("decompress")
    for i in 1..(s.size) do
    end
  end

  if s.include?("compress")
    for i in 1..(s.size) do
      if(s[i-1] == s[i])
        count += 1
      else
        print("#{s[i-1]}#{count+1}")
        discount -= 1
      end
    end
  end

  lines.each_index do |i|
    v = lines[i]
    puts "line[#{i}]: #{v}"
  end
end

main(readlines)
