# 正の整数に以下の式で繰り返し生成する数列を定義する.
# n → n/2 (n が偶数)
# n → 3n + 1 (n が奇数)
# 13からはじめるとこの数列は以下のようになる.
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# 13から1まで10個の項になる. この数列はどのような数字からはじめても最終的には 1 になると考えられているが,
# まだそのことは証明されていない(コラッツ問題)
# さて, 100万未満の数字の中でどの数字からはじめれば最長の数列を生成するか.
# 注意: 数列の途中で100万以上になってもよい

num_length = 0
result = 0

# コラッツ数列の項数をチェックするメソッド
# 仕様
# numが偶数 num => num / 2
# numが奇数 num => (3 * num) + 1
# count += 1していく

def check_length(num)
  count = 1
  until num == 1
    if num % 2 == 0
      num = num / 2
      count = count + 1
    else
      num = (3 * num) + 1
      count = count + 1
    end
  end
  count
end


(1..999999).each do |num|
  if check_length(num) > num_length
    num_length = check_length(num)
    result = num
  end 
end

p num_length
p result