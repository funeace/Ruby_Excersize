# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.
# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

# 20の倍数であることは確定しているから 割り算の結果が0になればいい next = i * 20 
# a % i == 0

# 素数を出す処理
# 素数とそれ以外の配列
prime_array = []
normal_array = []

# 素数とそれ以外を分けて考える
(2..20).each do |i|
  (2..20).each do |j|
    # 検索する数がi = jの関係が成り立っていて、 i % j が0のとき
    if i == j && i % j == 0
    p  prime_array.push(i)
    # 途中で割り切れたらout
    elsif i % j == 0
    p  normal_array.push(i)
      break
    end
  end
end


# 素数の公倍数を判定(それぞれが公倍数だからかけるだけ)


prime_product = prime_array.inject(1) {|result,item|  result * item }
normal_product = normal_array.inject(1) {|result,item| p result * item }

 prime_product
normal_product
prime_product * normal_product

# 公倍数を出すメソッド
p normal_product.lcm(prime_product)