# 日本でよく使われる紙幣は、 10000 円札、 5000 円札、 1000 円札です。
# 以下、「お札」とはこれらのみを指します。
# 青橋くんが言うには、彼が祖父から受け取ったお年玉袋にはお札が N 枚入っていて、
# 合計で Y 円だったそうですが、嘘かもしれません。
# このような状況がありうるか判定し、ありうる場合はお年玉袋の中身の候補を一つ見つけてください。
# なお、彼の祖父は十分裕福であり、お年玉袋は十分大きかったものとします。

otoshidama = gets.chomp.split(" ").map(&:to_i)
result_array = []

(0..otoshidama[0]).each do |hukuzawa|
  (0..otoshidama[0]).each do |higuchi|
    noguchi = otoshidama[0] - higuchi - hukuzawa
      if noguchi >= 0 && ((noguchi * 1000) + (higuchi * 5000) + (hukuzawa * 10000)) == otoshidama[1] && (noguchi + higuchi + hukuzawa) == otoshidama[0]
        result_array.push([noguchi,higuchi,hukuzawa])
        puts "#{noguchi} #{higuchi} #{hukuzawa}"
        exit
      end
    end
  end
  puts "-1 -1 -1"
