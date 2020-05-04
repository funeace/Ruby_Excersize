# 最初の10個の自然数について, その二乗の和は,
# 12 + 22 + ... + 102 = 385
# 最初の10個の自然数について, その和の二乗は,
# (1 + 2 + ... + 10)2 = 3025
# これらの数の差は 3025 - 385 = 2640 となる.
# 同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.

square_sum = 0
sum_square = 0

(1..100).each do |i|
  square_sum = square_sum + i ** 2
end

# p square_sum

(1..100).each do |i|
  sum_square += i
end

sum_square = sum_square ** 2

p sum_square - square_sum