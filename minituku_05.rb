# コンテンツ概要
# コード例で呼び出しているbuy_ticketsメソッドを定義しましょう。
# buy_ticketsメソッドの処理は、出力例から推測してください。

# 演習
# コード例の実行結果が出力例のようになるよう、コード例の中で使われている「buy_tickets」メソッドを定義してください。

# コード例
# buy_tickets("Sam", "Dave", "David")
# buy_tickets("John", "Paul", "Ringo", "George")
# 出力例
# Buying a ticket for Sam.
# Buying a ticket for Dave.
# Buying a ticket for David.
# Buying a group ticket for John, Paul, Ringo, George.

def buy_tickets(*names)
  if names.size == 3
    names.each do |name|
      puts "Buying a ticket for #{name}"
    end
  else
    puts "Buying a group ticket for #{names.join(", ")}."
  end
  # puts "Buying a ticket 
end

buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")
