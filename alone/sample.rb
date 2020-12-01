def main(lines)

  lines.each_index do |i|
    v = lines[i]
    puts "line[#{i}]: #{v}"
  end
end

main(readlines)
