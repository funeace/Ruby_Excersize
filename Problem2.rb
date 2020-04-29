# # フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.
# # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# # 数列の項の値が400万以下の, 偶数値の項の総和を求めよ.
# # Note:この問題は最近更新されました. お使いのパラメータが正しいかどうか確認してください.

variable = 4000000
array = []
# summery = 0

# # フィボナッチ数列を作成する処理
for num in 1..variable
  # 最初の２項を指定
  if num <= 2
    p array.push(num.to_i)
  else
    p array.push(array.last(2).sum)
  end

  if array.last >= variable
    break
  end
end

# 偶数を足し合わせる処理
p array.select{|e| e.even? }.sum