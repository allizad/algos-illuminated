ARRAY_LENGTH = 4

# ARRAY = (0..50).to_a.sort{ rand() - 0.5 }[0..(ARRAY_LENGTH - 1)]

# split

def split(array)
  # return array unless array.length > 1
  # the split
  [
    array[0...(array.length / 2)],
    array[(array.length / 2)..-1]
  ]
end

# sort
def merge(splits)

  # need to loop until each piece is broken into 2-length arrays

  i = 0
  j = 0
  sorted_array = []

  arr_a = splits[0]
  arr_b = splits[1]

  for k in 0..(ARRAY_LENGTH - 1) do
    # do less indexing, and more splitting and concatenating

    puts "arr_a[i] < arr_b[j] => #{arr_a[i]} < #{arr_b[j]}"

    if arr_a[i].nil?
      # empty - sort rest of this array and concat
      sorted_array.concat(sort(arr_b))
      break
    elsif arr_b[j].nil?
      # empty - sort rest of this array and concat
      sorted_array.concat(sort(arr_a))
      break
    else
      if arr_a[i] < arr_b[j]
        sorted_array[k] = arr_a[i]
        puts "sorted_array: #{sorted_array}"
        i += 1
      else
        sorted_array[k] = arr_b[j]
        puts "sorted_array: #{sorted_array}"
        j += 1
      end
    end

  end

  sorted_array
end

def sort(arr)
  if arr.length > 1
    splits = split(arr)
    merge(splits)
  else
    arr
  end
end

# mergesort - only works on arrays of length 2
def mergesort(array)
  splits = split(array) # how to recursively split and prepare for merge?
  merge(splits)
end
