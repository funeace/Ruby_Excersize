# 完全数とは, その数の真の約数の和がそれ自身と一致する数のことである. 
# たとえば, 28の真の約数の和は, 1 + 2 + 4 + 7 + 14 = 28 であるので, 28は完全数である.
# 真の約数の和がその数よりも少ないものを不足数といい, 真の約数の和がその数よりも大きいものを過剰数と呼ぶ.
# 12は, 1 + 2 + 3 + 4 + 6 = 16 となるので, 最小の過剰数である.
# よって2つの過剰数の和で書ける最少の数は24である.
# 数学的な解析により, 28123より大きい任意の整数は2つの過剰数の和で書けることが知られている.
# 2つの過剰数の和で表せない最大の数がこの上限よりも小さいことは分かっているのだが, この上限を減らすことが出来ていない.

# 2つの過剰数の和で書き表せない正の整数の総和を求めよ.

def abundant_number(num)
  sum = (1..num).select{|i| num % i == 0 && num != i }.sum
  return num if sum > num
end

# 過剰数のインデックスを作る回
numbers = (1..28122).map do |num|
 abundant_number(num)
end.compact!

number_array = []

# numbersとnumbersの合計値を配列に突っ込んでいく
numbers.each do |x|
  numbers.each do |y|
    break if x + y > 28123
    number_array.push(x + y)
  end
end

number_array.uniq!

p (1..28123).reject{|i| number_array.include?(i)}.sum
# p numbers