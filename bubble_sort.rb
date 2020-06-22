# バブルソート
# 隣り合う数字を比較して、左辺の方が大きければ右辺と値を入れ替える

data = gets.chomp.split(" ").map(&:to_i)

data.size.times do |i|
  (data.size-(i+1)).times do |j|
    if data[j] > data[j + 1]
      data[j],data[j+1] = data[j+1],data[j]
      puts "exchange #{data[j]} => #{data[j+1]}"
    end
  end
end

p data