# d(n) を n の真の約数の和と定義する. (真の約数とは n 以外の約数のことである. )
# もし, d(a) = b かつ d(b) = a (a ≠ b のとき) を満たすとき, a と b は友愛数(親和数)であるという.
# 例えば, 220 の約数は 1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110 なので d(220) = 284 である.
# また, 284 の約数は 1, 2, 4, 71, 142 なので d(284) = 220 である.
# それでは10000未満の友愛数の和を求めよ.
# 要件
=begin
  divisor_count(a) = b
  divisor_count(b) = a から、 divisor_count(divisor_count(a)) == a 
  a != b
=end


# 約数の合計値を返すメソッド
def divisor_count(num)
  (1..num).select{|i| num % i == 0 && num != i}.sum
end

sum = 0

# (1..9999).each do |a|
  1.upto(9999) do |a|
    div_a = divisor_count(a)
    div_b = divisor_count(div_a)
    if div_b == a && a != div_a
      sum += a
    end
  end

  p sum