# 1 以上 N 以下の整数のうち、10 進法での各桁の和が A 以上 B 以下であるものの総和を求めてください

numbers = gets.chomp.split(" ").map(&:to_i)
result = 0

(1..numbers[0]).each do |number|
  num = number.to_s.split("").map(&:to_i).sum 
    if num.between?(numbers[1],numbers[2])
      result += number
    end
end
p result