def insertsort(array)
  (1..(array.size-1)).each do |i|
    j = i - 1
    tmp = array[i]
    while j >= 0
      if tmp < array[j]
        array[j],array[j + 1] = array[j + 1],array[j]
      end
      j -= 1
      p array
    end
  end
  return array
end

array = (1..100).to_a.shuffle
puts insertsort(array)