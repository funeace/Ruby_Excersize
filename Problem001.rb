# 10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.
# 同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.

variable = 1000

answer = 0

for num in 1..variable -1
  if num % 3 == 0 || num % 5 == 0
    answer = answer + num
  end
end

puts answer