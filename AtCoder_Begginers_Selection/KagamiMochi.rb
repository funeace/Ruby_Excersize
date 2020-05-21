# X 段重ねの鏡餅 ( X ≥ 1 ) (X≥1) とは、 X 枚の円形の餅を縦に積み重ねたものであって、
# どの餅もその真下の餅より直径が小さい（一番下の餅を除く）もののことです。例えば、直径 10 8、
# 6 センチメートルの餅をこの順に下から積み重ねると 3 3 段重ねの鏡餅になり、
# 餅を一枚だけ置くと 1 1 段重ねの鏡餅になります。
# ダックスフンドのルンルンは N 枚の円形の餅を持っていて、
# そのうち i i 枚目の餅の直径は d i di センチメートルです。
# これらの餅のうち一部または全部を使って鏡餅を作るとき、最大で何段重ねの鏡餅を作ることができるでしょうか。
mochi_count = gets.to_i

def mochi_count(mochi_counts)
  mochi_counts.sort!.reverse!
  mochi_size = mochi_counts.max + 1
  count = 0

  mochi_counts.each do |size|
    if mochi_size > size
     mochi_size = size
     count += 1
    end
  end
  count
end

mochi_counts = (1..mochi_count).map{ gets.to_i }

p mochi_count(mochi_counts)