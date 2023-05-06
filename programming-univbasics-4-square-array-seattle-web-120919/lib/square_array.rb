def square_array(array)
  counter = 0
  squares = []
  
  while array[counter] do
    squared = array[counter]**2
    squares.push(squared)
    counter += 1
  end
  return squares
end

