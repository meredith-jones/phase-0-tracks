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

#Release 1

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


#Release 2