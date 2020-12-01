# 何年何月から何年何月まで

require 'date'

a, b, c, d =  gets.strip.split.map(&:to_i)
head = Date.new(a, b)
tale = Date.new(c, d)

year = a
mon = b

flag = 0

while flag == 0 do
  head = Date.new(year, mon).strftime("%B %Y")

  firstday_wday = Date.new(year,mon,1).wday   # 今月1日の曜日を取得(0~6)
  lastday_date = Date.new(year,mon,-1).day    # 今月の最終日を取得

  week = %w(Su Mo Tu We Th Fr Sa) # %w = 曜日を表す数、日曜日が0が０〜６

  puts head.center(20)        # 月と西暦中央寄せで出力
  puts week.join(" ")         # 曜日を出力
  print "   " * firstday_wday # 1日までの空白を出力

  wday = firstday_wday
  (1..lastday_date).each do |date|    # 1~最終日まで繰り返し
    print date.to_s.rjust(2) + " "    # 日付を右寄せで表示
    wday = wday+1
    if wday%7==0                      # 土曜日まで表示したら改行
      print "\n"
    end
  end
  if wday%7!=0
    print "\n"
  end

  puts "-" * 20

  if tale == Date.new(year, mon)
    flag += 1
  end

  mon += 1

  if mon == 13
    mon = 1
    year += 1
  end

end
