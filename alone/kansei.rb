def main(lines)
  lines = lines[0].strip.split(" ")
  flag = 2
if lines[0] == "compress"
  flag = 0
elsif lines[0] == "decompress"
  flag = 1
end
ans = []
lines.each_index do |i|
  if i == 0

  else
    v = lines[i]
    as = v.strip.split("")
    pp = 0
    if flag == 0
      bx = 0
      for j in 0..as.length-1
        ax = 0
        count = 1
        discount = 0
        if pp > j

        else
          if as[j] == as[j+1]
            pp += 1
            for k in j..as.length-1
              if as[k] == as[k+1]
                count += 1
                pp += 1
              else
                ans[bx] = count
                bx += 1
                ans[bx] = as[j]
                bx += 1
                count = 1
                break
              end
            end
            if count > 1
              ans[bx] = count
              bx += 1
              ans[bx] = as[j]
              bx += 1
            end
          else
            for k in j..as.length-1
              if as[k] != as[k+1]
                discount += 1
                pp += 1
                ax += 1
              else
                ax -= 1
                ans[bx] = '-'
                bx += 1
                ans[bx] = discount
                bx += 1
                for x in j..j+ax
                  ans[bx] = as[x]
                  bx += 1
                end
                discount = 0
                break
              end
            end
            if discount > 0
              ans[bx] = '-'
              bx += 1
              ans[bx] = discount
              bx += 1
              for x in j..j+ax-1
                ans[bx] = as[x]
                bx += 1
              end
            end
          end
        end
      end
      #decompress
    elsif flag == 1
      x = as.map(&:to_i)
      bx = 0
      for j in 0..x.length-1
        if x[j] > 0
          a = x[j]
          ax = j + a
          if as[j-1] == "-"
            for k in j+1..ax
              ans[bx] = as[k]
              bx += 1
            end
          else
            for k in 1..a
              ans[bx] = as[j+1]
              bx += 1
            end
          end
        end
      end
    end
  end
end

puts ans.join
end

main(readlines)
