#Hoa Huynh and Meredith Jones pairing

#Release 0:

#create a method that takes in array and integer
#compare each element of the array with the integer.
#return index if array element and integer match
#return nil if nothing matches.

def search_array(arr, int)
index = 0
  while index < arr.length
    if arr[index] == int
      return index
    elsif index == arr.length - 1 #due to 0-based index
      return nil
    else
      index += 1
    end
  end
end


#Release 1:

def fibonacci(num)
  fib_nums = [0, 1] #initializing array
  num_index = 0 #initialize index
  while fib_nums.length < num #loop up to num
    fib_nums << (fib_nums[num_index] + fib_nums[num_index + 1]) #fib equation
    num_index += 1 #increment index
  end
  return fib_nums
end

fibonacci(100)


#Release 2:

#Create method that takes in an array
#Compare the first two elements, then the 2nd and 3rd element, and so forth, until the end of the array.
#Swap from one element to the other if they are out of order.
#Repeat that until no more swapping needs to take place
#Return the final array

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

arr = [34, 56, 2, 4, 8, 23]
bubble_sort(arr)