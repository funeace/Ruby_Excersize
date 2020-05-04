# 左右どちらから読んでも同じ値になる数を回文数という. 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.
# では, 3桁の数の積で表される回文数の最大値を求めよ.
# 回文数を求めるメソッド
# 100〜999
# 
number = 0
multiplication = 0
# 入力値と反転させた数字が一致していることを確認するためのメソッド
(100..999).each do |first|
  (100...999).each do |second|
    multiplication = first * second
    # reverseは文字列型しか使えなかったので一回文字列に変換して数に変換
    if multiplication == multiplication.to_s.reverse.to_i
      # p "#{multiplication},#{first},#{second}"
      # p multiplication.to_s.reverse.to_i
      # 現在の数字が反転した数字よりも大きかったらmultiplicationの値に更新
      if multiplication > number
        number = multiplication
      end
    end
  end
end

p number