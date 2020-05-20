# N 枚のカードがあります.
# i 枚目のカードには,ai という数が書かれています.
# Alice と Bob は, これらのカードを使ってゲームを行います.
# ゲームでは, Alice と Bob が交互に 1 枚ずつカードを取っていきます.
# Alice が先にカードを取ります. 2 人がすべてのカードを取ったときゲームは終了し,
# 取ったカードの数の合計がその人の得点になります. 2 人とも自分の得点を最大化するように最適な戦略を取った時,
# Alice は Bob より何点多く取るか求めてください.

cards = gets.to_i
card_numbers = gets.chomp.split(" ").map(&:to_i).sort.reverse

times = 1
alice = 0
bob = 0

card_numbers.each_with_index do |card,idx|
  if idx.even?
    alice += card
  else
    bob += card
  end
end

p alice - bob