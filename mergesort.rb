ARRAY_LENGTH = 2

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
  i = 0
  j = 0
  sorted_array = []

  for k in 0..(ARRAY_LENGTH - 1) do

    arr_a = splits[0]
    arr_b = splits[1]

    puts "arr_a[i] < arr_b[j] => #{arr_a[i]} < #{arr_b[j]}"

    if arr_a[i].nil? # end of arr_a
      sorted_array[k] = arr_b[j]
    elsif arr_b[j].nil?
      sorted_array[k] = arr_a[i]
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

# mergesort
def mergesort(array)
  splits = split(array)

  merge(splits)
end
