def select_sort(array)
  i = 0
  while i < array.size
    # 初期値を最小値とする
    min_number = i
    static_number = i + 1
    while static_number < array.size
      if array[static_number] < array[min_number]
        min_number = static_number
      end
      static_number += 1
    end
    array[i],array[min_number] = array[min_number],array[i]
    i += 1
  end
  return array
end

numbers = [1,3,4,7,6,5]

p select_sort(numbers)