# 10以下の素数の和は 2 + 3 + 5 + 7 = 17 である.
# 200万以下の全ての素数の和を求めよ.
# エラトステネスの篩を使う
# A の最小の数を素数として, その数の倍数をすべて削除することをくり返す(あまり変わらなかった)

numbers = (2..2000000).to_a
prime = []
result = 0

until numbers.empty?
  numbers = numbers.reject{|n| n % numbers[0] == 0 }
  result = result + numbers[0] 
end

p result


# モジュール版
# require 'prime'
# p Prime.each(2000000).to_a.sum
