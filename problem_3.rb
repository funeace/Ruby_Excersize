# リファクタリング練習用

# height,width = gets.chomp.split(" ").map(&:to_i)
# chocolates = (1..height).map{ gets.chomp.split(" ").map(&:to_i) }

# alice = []
# bob = []
# result = []
# answer = []

# (chocolates).each do |choco|
#     (choco).each.with_index(0) do |c,i|
#         alice = choco[0..i].sum
#         bob = choco[i+1..(choco.size-1)].sum
#         if alice == bob
#             result.push(("A" * (i+1)).ljust(choco.size, "B"))
#         end
#     end
# end

# unless chocolates.size == result.size
#     puts "No"
# else
#     puts "Yes"
#     answer.each{|ans|puts ans}
# end

# 今回の敗因：resultのサイズ== データのサイズの判定を思いつかなかった

height,width = gets.chomp.split(" ").map(&:to_i)
chocolates = (1..height).map{ gets.chomp.split(" ").map(&:to_i) }
@result = []

def sugar(chocolate)
  alice = []
  bob = []
  chocolate.size.times do |i|
    alice = chocolate[0..i].sum
    bob = chocolate[i+1..(chocolate.size)].sum
    if alice == bob
      @result.push( ("A"*(i+1)).ljust(chocolate.size, "B") )
    end
  end
end

chocolates.each{ |c| sugar(c) }
unless @result.size == chocolates.size
  puts "No"
else
  puts "Yes"
  @result.each{|re|puts re}
end