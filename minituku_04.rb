# コンテンツ概要
# コード例で生成している各オブジェクトごとにlifeメソッドを定義しましょう。
# lifeメソッドのおこなう処理は、コメントアウトされている出力例から推測してください。

# 演習
# 以下のコードがコメント部分の通りの出力となるように、（A)の部分に当てはまる適切なコードを書いてください。

# コード例

class Planet
  def life?
    puts "Who knows?"
  end  
end

pluto = Planet.new()
earth = Planet.new()
mars = Planet.new()

# 定義したらいけた
def pluto.life?()
  puts "Probably not."
end

def earth.life?()
  puts "Positively!"
end



pluto.life?()  #=> Probably not.
earth.life?()  #=> Positively!
mars.life?()   #=> Who knows?