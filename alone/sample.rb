def main(lines)
  # このコードは標準入力と標準出力を用いたサンプルコードです。
  # このコードは好きなように編集・削除してもらって構いません。
  # ---
  # This is a sample code to use stdin and stdout.
  # Edit and remove this code as you like.

  lines.each_index do |i|
    v = lines[i]
    puts "line[#{i}]: #{v}"
  end
end

main(readlines)
