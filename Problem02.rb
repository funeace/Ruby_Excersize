# （１）今月の最終日をdateクラスを利用して出力しなさい。
# （２）あなたは学習をする間、毎日１問の問題を必ず解くことに決めました。
# 　　　また、日付に４がつく日は２問、素数の日は３問を解くことにしました。
# 　　　初日から学習を開始した場合、今月は何問の問題を解くことができるでしょう？
# 　　　※但し、primeクラスのメソッドを使用せずに解くこと。
# （３）今月のカレンダーを次のような形式で出力してください。（右寄せ曜日対応）

# 今月の最終日
require 'Date'

today = Date.today
date = Date.new(today.year,today.month,-1)

puts date

# 素数判定
def prime?(num)
  # 1日だったら素数じゃない
  return false if num == 1

  (2..num).each do |i|
    if num % i == 0 && num == i
      return true
    elsif num % i == 0
      return false
    end
  end
end

# 今月の月末を作成
last_date = Date.new(today.year, today.month, -1).to_s.split("-")[2].to_i

# rejectは配列に対して行わないとならない
puts (1..last_date).select{|x| x.to_s.include?("4") }.size * 2 + (1..last_date).select{|x| prime?(x)}.size * 3  + (1..last_date).to_a.reject{|x| x.to_s.include?("4") || prime?(x)}

# 日曜：０　月曜：１　火曜：２　水曜：３　木曜：４　金曜：５　土曜：６
calendar = ["日","月","火","水","木","金","土"].join

ins_date = []
puts calendar
(1..last_date).each do |day|
  ins_date.push(day.to_s.rjust(2," "))
  if Date.new(today.year, today.month, day).wday == 6
    puts ins_date.join.rjust(14)
    ins_date = []
  elsif Date.new(today.year, today.month, day).wday != 6 && day == last_date
    puts ins_date.join
    ins_date = []
  end
end
