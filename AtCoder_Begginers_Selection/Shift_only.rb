count = 0
number_count = gets.to_i
numbers = gets.chomp.split(" ").map(&:to_i)


result_array = []
loop do
  break if result_array.include?(false)

  numbers.length.times do |i|
    if numbers[i].even?
      result_array.push(true)
    else
      result_array.push(false)
    end
    numbers[i] = numbers[i] / 2
  end
  count = count + 1 unless result_array.include?(false)

end
p count