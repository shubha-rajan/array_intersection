# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n + m) where n is the length of array1 and m is the length of array 2 because you would have to iterate through the entire first array to build the hash table, and the entire second array to check if values are in the hash table
# Space complexity: n, if n < m; If every element in the smaller array overlaps, the size of the new array will equal the size of the smaller array. The size of the hash table is also proportional to the size of the array.

def intersection(array1, array2)
  hash_table = {}
  result = []
  if array1 && array2
    i = 0
    while i < array1.length
      hash_table[array1[i]] = 1
      i += 1
    end
    i = 0
    while i < array2.length
      if hash_table[array2[i]]
        result << array2[i]
      end
      i += 1
    end
  end
  return result
end
