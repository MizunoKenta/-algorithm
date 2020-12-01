h , w = gets.strip.split.map(&:to_i)
as = h.times.map{gets}
s = []
for i in 0..h-1
  as = gets.split("")
  s.push(as)
end
ans = s
for i in 0..h-1
  for j in 0..w-1
    save = 0
    if s[i][j] == "."
      a = i-1
      b = i+1
      if i == 0
        a = 0
      end
      if i == h-1
        b = h-1
      end
      c = j-1
      d = j+1
      if j == 0
        c = 0
      end
      if j == w-1
        d = w-1
      end
      for k in a..b
        for l in c..d
          if s[k][l] == "#"
            save += 1
          end
        end
      end
      ans[i][j] = save
    end
  end
end
puts  ans.join
