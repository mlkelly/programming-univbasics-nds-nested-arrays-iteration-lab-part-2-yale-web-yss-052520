def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  
  row_index = 0
  lowest_temps = []

  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      min_temp = src[row_index][-1]
      if src[row_index][element_index] < min_temp
        min_temp = src[row_index][element_index]
        lowest_temps << min_temp
      end
      element_index += 1
    end
    row_index += 1
  end
 
  lowest_temps

end