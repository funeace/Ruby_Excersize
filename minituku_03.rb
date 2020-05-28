# コンテンツ概要
# コード例で定義しているPostcardクラスは、Mailモジュールをインクルードしています。そのMailモジュールを定義しましょう。Mailモジュールがインクルードした結果、Postcardクラスに渡される機能は、出力例から推測してください。

# この演習を回答するのに必要と思われる時間は、10分です。

# 演習
# 以下のコード例を実行した時に、出力例のような文が標準出力へ出力されるように、コードにincludeされる「Mail」モジュールを定義してください。

module Mail
  require 'Date'
  def write(text)
    @write = text
  end
  def send
    puts "Postcard of " + DateTime.now.strftime("%a %b %d %H:%M:%S %z") + ": Sending a Postcard to #{@recipient}"
  end
  def to_s
    "Dear #{@recipient},\ñ#{@write}\n\nSincerely,\n\n#{@sender}"
  end
end

class Postcard
  include Mail
  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end
end

card = Postcard.new("Me", "Friend")
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
sleep(2)
puts card