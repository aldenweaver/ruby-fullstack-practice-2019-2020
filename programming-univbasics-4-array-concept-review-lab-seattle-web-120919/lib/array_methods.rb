def find_element_index(array, value_to_find)
  array.length.times { |index|
    if array[index] === value_to_find {
      return index
    }
    return nil
  }
end

def find_max_value(array)
  currentMax = 0
  array.length.times { |index|
    if array[index] > currentMax {
      currentMax = array[index]
    }
    return currentMax
  }
end

def find_min_value(array)
  currentMin = Integer::MAX
  array.length.times { |index|
    if array[index] < currentMin {
      currentMin = array[index]
    }
    return currentMin
  }
end
