def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  row_reduced = []

  row_index = 0
  while row_index < src.count do
    minimum = src[row_index][0]

    element_index = 0
    while element_index < src[row_index].count do
      test = src[row_index][element_index]
      minimum = test if test < minimum

      element_index += 1
    end
    row_reduced << minimum

    row_index += 1
  end
  
  row_reduced
end
