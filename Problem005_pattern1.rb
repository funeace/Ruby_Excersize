# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.
# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

# 20の倍数であることは確定しているから 割り算の結果が0になればいい next = i * 20 
# a % i == 0

# 動いたが重すぎ(答え232792560　もうちょっと小さいと思って回して後悔した)
# # 初期値を20に設定
number = 20
answer = 0

until number == 0
  (1..20).each do |i|
    # loopの数字で割り切れるか確認
    if number % i == 0 && i == 20
      answer = number
      number = number % i
    elsif number % i != 0
      number += 20
      break
    end
  end
end
p answer
