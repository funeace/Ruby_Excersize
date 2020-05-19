# AtCoDeerくんは二つの正整数 a,bを見つけました。 a と b の積が偶数か奇数か判定してください。
p num_chk = gets.chomp.split(" ").map(&:to_i).inject(1){|result,item| result * item}.even? ? "Even" : "Odd"
 