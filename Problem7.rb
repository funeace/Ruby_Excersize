# 素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり, 6番目の素数は 13 である.
# 10 001 番目の素数を求めよ.
# 配列に入れると時間がかかりそうだから、素数でcountしながらその数字を出す

# モジュール使うパターン
# require 'prime'
# p Prime.take(10001).last

# 配列に入れると時間がかかりそうだから、素数でcountしながらその数字を出す
prime = 0
count = 0
current_num = 0
prime_bool = 0

# 素数か判定するためのメソッド
def prime?(num)
  (2..num).each do |i|
    if num % i == 0 && num == i
      return true
    elsif num % i == 0
      return false
    end
  end
end

# 素数のカウントが10001まで続く
until count == 10001
  # 現在の数が素数かどうか判定する処理
  if prime?(current_num)
    count += 1
    prime = current_num
  end
  current_num += 1
end

p prime