# 1 から 5 までの数字を英単語で書けば one, two, three, four, five であり, 全部で 3 + 3 + 5 + 4 + 4 = 19 の文字が使われている.
# では 1 から 1000 (one thousand) までの数字をすべて英単語で書けば, 全部で何文字になるか.
# 注: 空白文字やハイフンを数えないこと. 例えば, 342 (three hundred and forty-two) は 23 文字,
# 115 (one hundred and fifteen) は20文字と数える. なお, "and" を使用するのは英国の慣習.

@numbers = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
           11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
           20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety", 100 => "hundred", 1000 => "onethousand"}


# 100以上であったら20以上の数字を分解し、数字をにするメソッド
# ３桁に揃える必要がある
def making_word(num)
  resolve_num = num.to_s.rjust(4,"0").split("").map(&:to_i)
  # 1000の位の判定
  if resolve_num[0] >= 1
  #   # 331だったら three handred and thirty-one
    make_thousand_word = @numbers[resolve_num[0]*1000]
  end

  # 100の位の判定
  if resolve_num[1] >= 1
  #   # 331だったら three handred and thirty-one
    make_hundred_word = "#{@numbers[resolve_num[1]]}hundredand"

    if resolve_num[2] == 0 && resolve_num[3] == 0
      make_hundred_word = "#{@numbers[resolve_num[1]]}hundred"
    end
  else
    make_hundred_word = @numbers[resolve_num[1]]
  end

  # 10の位の判定
  if resolve_num[2] >= 2
    make_ten_word = "#{@numbers[resolve_num[2] * 10]}#{@numbers[resolve_num[3]]}"
  else
    make_ten_word = @numbers[resolve_num[2]*10 + resolve_num[3]]
  end

 return "#{make_thousand_word}#{make_hundred_word}#{make_ten_word}".length
end


result = 0

(1..1000).each do |num|
  result = result + making_word(num)
end

p result
# p @numbers