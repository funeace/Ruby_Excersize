# あなたは、500 円玉を A 枚、 
# 100 円玉を B 枚、50 円玉を C 枚持っています。
# これらの硬貨の中から何枚かを選び、合計金額をちょうど X 円にする方法は何通りありますか。
a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
count = 0


(0..a).each do |aa|
  (0..b).each do |bb|
    (0..c).each do |cc|
      if (aa * 500 + bb * 100 + cc * 50) == x
        count += 1
      end
    end
  end
end

p count