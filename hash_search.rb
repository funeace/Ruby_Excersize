h = [42,12,0,25,12,25,33,49,5,9]
 
 x = 25
 s = x % 11
 while h[s] != 0 # => ポイント　ハッシュの要素が0になるまでの間繰り返す
 if h[s] == x
  puts "格納場所は#{s}です"
   break
   elsif h[s] != x
    s = (s + 1) % 11
    end

  end
  if h[s] == 0
    puts "そのデータはありません"
  end