# ブラックジャックを作る
# 初期カードは52枚。引く際にカードの重複は無いようにする
# プレイヤーとディーラーの2人対戦。プレイヤーは実行者、ディーラーは自動的に実行
# 実行開始時、プレイヤーとディーラーはそれぞれ、カードを2枚引く。引いたカードは画面に表示する。ただし、ディーラーの2枚目のカードは分からないようにする
# その後、先にプレイヤーがカードを引く。プレイヤーが21を超えていたらバースト、その時点でゲーム終了
# プレイヤーは、カードを引くたびに、次のカードを引くか選択できる
# プレイヤーが引き終えたら、その後ディーラーは、自分の手札が17以上になるまで引き続ける
# プレイヤーとディーラーが引き終えたら勝負。より21に近い方の勝ち
# JとQとKは10として扱う
# Aはとりあえず「1」としてだけ扱う。「11」にはしない
# ダブルダウンなし、スプリットなし、サレンダーなし、その他特殊そうなルールなし

mark = ["ハート","ダイヤ","クローバー","スペード"]
card = [1,2,3,4,5,6,7,8,9,10,11,12,13]

@tramp = []
@user_point = 0
@dealer_point = 0

def blackjack
  now_card = @tramp.sample
  @user_point += now_card[1]
  @tramp.delete_if {|x| x[0] == now_card[0] && x[1] == now_card[1]}
  puts "あなたの引いたカードは#{now_card[0]}の#{now_card[1]}です"
  puts "あなたの現在の得点は#{@user_point}です。"
  if @user_point >= 22
    puts "あなたの負け"
    exit
  end
end

def dealer_blackjack
  now_card = @tramp.sample
  @dealer_point += now_card[1]
  @tramp.delete_if {|x| x[0] == now_card[0] && x[1] == now_card[1]}
  puts "ディーラーの引いたカードは#{now_card[0]}の#{now_card[1]}です"
  puts "ディーラーの現在の得点は#{@dealer_point}です。"
  if @dealer_point >= 22
    puts "あなたの勝ち"
    exit
  end
end


# カードの一覧を作る処理
mark.each do |m|
  card.each do |c|
    @tramp.push([m,c])
  end
end

puts "ゲームを開始します"

loop do
  blackjack

  puts "カードをを引きますか？引く場合はY、引かない場合はNを入力してください"
  break if gets.chomp == "N"
end

while @dealer_point < 17
  dealer_blackjack
end


if @user_point > @dealer_point
  puts "あなたの勝ち"
elsif @user_point == @dealer_point
  puts "引き分け"
else
  puts "あなたの負け"
end
