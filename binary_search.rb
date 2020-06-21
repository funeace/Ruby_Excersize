# 手順
# １：配列を昇順もしくは降順にソートする。
# ２：配列の中央の要素を調べる
# ３：中央の要素が目的のデータより大きければ中央より後半の部分を調べる、
#    また目的のデータより小さければ中央より前半の部分を調べる。
# ４：２に戻る

# 配列の長さと検索する数字を引数にする
def binary_search(arr_size, num)
  arr = (1..arr_size).to_a

  left = 0
  right = arr.last
  mid = 0

  while left <= right
    mid = (left + right) / 2
    if arr[mid] == num
      puts "Found"
      break
    elsif arr[mid] < num
      puts left = mid + 1
    else 
      puts right = mid - 1
    end
  end
end

binary_search(1000,100)