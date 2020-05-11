# 5000個以上の名前が書かれている46Kのテキストファイル filenames.txt を用いる. まずアルファベット順にソートせよ.
# のち, 各名前についてアルファベットに値を割り振り, リスト中の出現順の数と掛け合わせることで, 名前のスコアを計算する.
# たとえば, リストがアルファベット順にソートされているとすると, COLINはリストの938番目にある. 
# またCOLINは 3 + 15 + 12 + 9 + 14 = 53 という値を持つ. よってCOLINは 938 × 53 = 49714 というスコアを持つ.
# ファイル中の全名前のスコアの合計を求めよ.

# 考え方
# indexの番号 * 文字のハッシュの合計値

result = 0

read_file = File.open("TEXT/problem022.txt", "r"){ |f| f.read.gsub('"','').split(",") }.sort!
split_alpha = read_file.map do |column|
                column.split("")
              end

def alpha_sum(word)
  word_mapping = {"A" => 1,"B" => 2,"C" => 3,"D" => 4,"E" => 5,"F" => 6,"G" => 7,"H" => 8,"I" => 9,"J" => 10,
                "K" => 11,"L" => 12,"M" => 13,"N" => 14,"O" => 15,"P" => 16,"Q" => 17,"R" => 18,"S" => 19,"T" => 20,
                "U" => 21,"V" => 22,"W" => 23,"X" => 24,"Y" => 25,"Z" =>26}
  sum = 0
  0.upto(word.size - 1) do |i|
    sum += word_mapping[word[i]]
  end
  sum
end

split_alpha.each.with_index(1) do |word,index|
  result = result + alpha_sum(word) * index
end

p result