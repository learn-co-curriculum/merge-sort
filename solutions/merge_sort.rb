def merge(arr1, arr2)
  result = []

  while arr1.length > 0 && arr2.length > 0
    result.push arr1.first < arr2.first ? arr1.shift : arr2.shift
  end

  result + arr1 + arr2
end

def merge_sort(arr)
  return arr if arr.length < 2

  middle = arr.length / 2
  left = merge_sort(arr[0...middle])
  right = merge_sort(arr[middle..-1])

  merge(left, right)
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [1, 2]"
  puts merge_sort([2, 1])

  puts

  puts "Expecting: [1, 2, 3]"
  puts merge_sort([1, 2, 3])

  puts

  puts "Expecting: [-10, 0, 2, 2, 5, 10, 20]"
  puts merge_sort([10, -10, 0, 2, 20, 5, 2])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
