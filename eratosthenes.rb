# エラストネスの秤

numbers = (2..10000).to_a
primes = []

# p numbers

loop do
  search_num = numbers.shift
  break if search_num == nil
  # 素数を入れる
  primes.push(search_num)
  # numbersからsearch_numで割り切れる数字を削除
  numbers.delete_if{|x| x % search_num == 0}
end

p primes