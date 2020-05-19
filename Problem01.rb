# [1:00,2:00,3:00],[1:00,2:00,3:00][1:00,3:00:400]
# 各日のindexを作る
# オーダーを各日のindexの番号 + 開始日


hoge =  [["1:00","2019/04/01"],["2:00","2019/04/01"],["3:00","2019/04/01"]],
        [["1:00","2019/04/02"]],
        [["1:00","2019/04/03"],["3:00","2019/04/03"]]

array = []

hoge.each do |hog|
  hog.each.with_index(1) do |hh,ind|
    array.push([ind,hh].flatten)
  end
end

p array.sort!

make = array.map.with_index(1) do |ar,index|
  [index,ar].flatten
end

p make