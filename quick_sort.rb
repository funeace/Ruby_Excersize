# 1. 適当な数（今回は先頭）（ピボットという）を選択する
# 2. ピボットより小さい数を前方、大きい数を後方に移動させる （分割）
# 3. 二分割された各々のデータを、それぞれソートする

def quick_sort(a, l, r)
  return if l >= r

  # ピボットとなる値を求めている
  pivot = a[l]
  ll = l
  rr = r

  #　配列の左からピボット以上・以下の値が出てくる位置を探す
  loop do
    ll += 1 while a[ll] < pivot
    rr -= 1 while a[rr] > pivot

    break if ll >= rr

    # LLとRRを入れ替える
    a[ll], a[rr] = a[rr], a[ll]
    ll += 1
    rr -= 1
  end

  # ピボットの左側と右側を部分配列として再帰
  quick_sort(a, l, rr)
  quick_sort(a, rr + 1, r)
end

data = [4,2,82,8,3,-5,11,4,6,22]
quick_sort(data, 0, data.size - 1)
p data