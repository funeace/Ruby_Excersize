# シカのAtCoDeerくんは二次元平面上で旅行をしようとしています。
# AtCoDeerくんの旅行プランでは、時刻 0 に 点 ( 0 , 0 )を出発し、
# 1 以上 N 以下の各 i に対し、時刻 ti に 点 ( x i , y i ) を訪れる予定です。
# AtCoDeerくんが時刻 t t に 点 ( x , y )にいる時、 時刻 t + 1 には
# 点 ( x + 1 , y ), ( x − 1 , y ), ( x , y + 1 ), ( x , y − 1 ) のうちいずれかに存在することができます。
# その場にとどまることは出来ないことに注意してください。 AtCoDeerくんの旅行プランが実行可能かどうか判定してください。


# 行動範囲
# (x.abs - x[i-1].abs) 前回の位置との比較
# t = t(i+1)-t(i) 前回の時間との比較
# kyori = (xi+1 - xi).abs + (yi+1 - yi).abs 前回からどれくらい進んだか
# 条件
# x + y > time であればいけない t = 3, x = 3, y = 1はいけない
# 時間が偶数ならば位置も偶数である
times = gets.to_i
result = []
prev = [0,0,0]
move = (1..times).map{ gets.chomp.split(" ").map(&:to_i) }
move.each do |m|
  kyori = (m[1] - prev[0]).abs + (m[2] - prev[2]).abs
  if kyori <= m[0] && kyori % 2 == (m[0]-prev[0]) % 2
    result.push(true)
  else
    result.push(false)
  end
  prev = m
end

puts !result.include?(false)? "YES" : "NO"