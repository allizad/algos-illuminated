ARRAY_LENGTH = 8

ARRAY = (0..50).to_a.sort{ rand() - 0.5 }[0..(ARRAY_LENGTH - 1)]

def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2
  left = array[0...middle]
  right = array[middle..-1]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted.concat(left).concat(right)
end
