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