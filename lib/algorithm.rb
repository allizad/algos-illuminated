module Algorithm

  def self.merge_sort(array)
    return array if array.length <= 1

    middle = array.length / 2
    left = array[0...middle]
    right = array[middle..-1]

    merge(merge_sort(left), merge_sort(right))
  end

  def self.merge(left, right)
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

end

