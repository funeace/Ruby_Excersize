# 13195 の素因数は 5, 7, 13, 29 である.
# 600851475143 の素因数のうち最大のものを求めよ.
# 6857

number = 600851475143

# 割り切れなかった素数
# 失敗した例
# # 素数の判定をする（２個の正の約数を持つ自然数）
# array = []
# (2..number).each do |i|
#   (2..number).each do |j|
#     # 検索する数がi = jの関係が成り立っていて、 i % j が0のとき
#     if i == j && i % j == 0
#     p  array.push(i)
#     # 途中で割り切れたらout
#     elsif i % j == 0
#       break
#     end
#   end
# end


# 上手くいったほう
i = 1

# i 以上 number未満で判定
while i < number
  # number が iで割り切れるものを更新していく
  if number % i == 0
    number = number/i
  end
    i += 1
end

p number