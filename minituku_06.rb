# コンテンツ概要
# コード例で定義しているToolクラスを継承したHammerクラスを定義しましょう。
# Hammerクラスの処理は、出力例から推測してください。
# この演習を回答するのに必要と思われる時間は、10分です。
# 演習
# 「Tool」クラスを継承する、以下のコード例のように振舞う「Hammer」クラスを定義してください。

class Tool
  def use
    puts "Picks up #{@color} #{self.class.to_s}"
  end
 
  def initialize(color)
    @color = color
  end
end

class Hammer < Tool
  def use
    super
    puts "Bam bam bam"
  end
end
Hammer.new("red").use


# Picks up red Hammer
# Bam bam bam