# Alden Weaver
# 12/7/19

# MAP METHODS #
  # Return a new Array #
def map_to_negativize(source_array)
  return_array = []
  i = 0
  
  while i < source_array.length do
    return_array[i] = source_array[i] * (-1)
    i += 1
  end
  
  return return_array
end

def map_to_no_change(source_array)
  return_array = []
  i = 0
  
  while i < source_array.length do
    return_array[i] = source_array[i]
    i += 1
  end
  
  return return_array
end

def map_to_double(source_array)
  return_array = []
  i = 0
  
  while i < source_array.length do
    return_array[i] = source_array[i] * 2
    i += 1
  end
  
  return return_array
end

def map_to_square(source_array)
  return_array = []
  i = 0
  
  while i < source_array.length do
    return_array[i] = source_array[i] ** 2
    i += 1
  end
  
  return return_array
end


# REDUCE METHODS #
  # Return a value #
def reduce_to_total(source_array, starting_point)
  return_value = 0
  if starting_point != nil
    return_value = starting_point
  end
  
  i = 0

  while i < source_array.length do
    return_value += source_array[i]
    i += 1
  end
  
  return return_value
end

def reduce_to_all_true(source_array)
  return_value = true
  i = 0
  
  while i < source_array.length do
    if source_array[i] === false
      return_value = false
    end
    i += 1
  end
  
  return return_value
end

def reduce_to_any_true(source_array)
  return_value = false
  i = 0

  while i < source_array.length do
    if source_array[i] === true
      return_value = true
    end
    i += 1
  end
  
  return return_value
end
