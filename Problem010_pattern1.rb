# 10以下の素数の和は 2 + 3 + 5 + 7 = 17 である.
# 200万以下の全ての素数の和を求めよ.

# 以下重すぎた。別ファイルを作成する
# 素数判定用のメソッド
def prime?(num)
  (2..num).each do |i|
    if num % i == 0 && num == i
      return true
    elsif num % i == 0
      return false
    end
  end
end

result = 0
init = 2000000
num = 2

until num == 2000000
  if prime?(num)
    result = result + num
  end
 num = num + 1
end
p result