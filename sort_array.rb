def sort some_array # This "wraps" recursive_sort.
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.empty?

  smallest_word_index = 0
  unsorted_array.length.times do |i|
    if unsorted_array[i] < unsorted_array[smallest_word_index]
      smallest_word_index = i
    end
  end

  sorted_array << unsorted_array.delete_at(smallest_word_index)
  recursive_sort(unsorted_array, sorted_array)
end

puts sort(['aabb', 'aaaa', 'bbb', 'vvaa', 'aasdew'])