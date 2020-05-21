# 英小文字からなる文字列 S が与えられます。 
# Tが空文字列である状態から始め、以下の操作を好きな回数繰り返すことで 
# S=Tとすることができるか判定してください。

search_word = gets.chomp

# dreameraserみたいな時失敗する
# search_word.gsub!(/dream|dreamer|erase|eraser/,"")
search_word.gsub!(/dream/,"")
search_word.gsub!(/dreamer/,"")
search_word.gsub!(/erase/,"")
search_word.gsub!(/eraser/,"")


if search_word == ""
  puts "YES" 
else
  puts "NO"
end