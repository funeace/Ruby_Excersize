# 三角数の数列は自然数の和で表わされ, 7番目の三角数は 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28 である. 三角数の最初の10項は:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# となる.
# 最初の7項について, その約数を列挙すると, 以下のとおり.
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# これから, 7番目の三角数である28は, 5個より多く約数をもつ最初の三角数であることが分かる.
# では, 500個より多く約数をもつ最初の三角数はいくつか.
# 三角数の公式 n番目の三角数は Tn=n(n+1)/2
# 約数の個数の算出法
# ある整数の約数の個数を算出する方法は、
# 素因数分解して得られる各素数の指数から出せる

# 約数が500個以上ある数字
require 'prime'

num = 2
result = 0

# 三角数を出力するためのメソッド
def triangle_number(number)
  number * (number + 1) / 2
end

# 素因数分解して各素数の指数を出力(n=pe1**1⋅pe2**2⋯pem**mから、約数の個数は→で表せる。(e1+1)⋅(e2+1)⋯(em+1)
def number_division(number)
  Prime.prime_division(number).map{|a,b|b + 1 }.inject(:*)
end

until number_division(num) >= 500
  number_division(num)
  result = triangle_number(num)
  num += 1
end

p result