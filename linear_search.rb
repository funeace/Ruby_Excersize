# 線形探索方(リニアサーチ)
array = [1,3,7,9,4,2,5]
array_count = array.size

def linear_search(array,array_count,target)
  index = 0

  loop do
    # 一番最後の要素まで探索した場合
    if index == array_count
      puts "-1"
      return -1
    elsif array[index] == target
      return index
    end
    puts index += 1
  end
end

target = 5

result = linear_search(array,array_count,target)