# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n * m) where n is the length of array1 and m is the length of array 2 because in a worst case scenario you would have to iterate through the entire second array for each element in the first array
# Space complexity: n, if n < m; If every element in the smaller array overlaps, the size of the new array will equal the size of the smaller array.

def intersection(array1, array2)
  i = 0
  j = 0
  result = []
  if array1 && array2
    while i < array1.length
      while j < array2.length
        if array1[i] == array2[j]
          result << array1[i]
          break
        end
        j += 1
      end
      i += 1
      j = 0
    end
  end
  return result
end
