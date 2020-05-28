# コンテンツ概要
# BookクラスとLibraryクラスを定義しましょう。
# これらのクラスの機能は、コード例と出力例から推測してください。
# この演習を回答するのに必要と思われる時間は、10分です。

# 演習
# 以下のコード例に利用されているBookクラスとLibraryクラスを定義してください。
# なお、コード例を実行した上で、以下の出力例の文が標準出力へ出力されるように定義しておいてください。

class Book
  def initialize(data)
    @author = data[:author]
    @title = data[:title]
    data[:library].add(self)
  end

  def to_s
    "Title: #{@title}, Author: #{@author}"
  end
end

class Library
  def initialize
    @books = []
  end

  def add(book)
    @books.push(book)
  end

  # to_sメソッドを定義することで自動的に表示されるようにしている？？？
  def to_s
    puts "Library contents:"
    @books.join("\n")
  end
end

my_library = Library.new
Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
puts my_library