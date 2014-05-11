
class Hw0x

  def sum(int_array)
    """
    Define a method sum which takes an array of integers as an argument and
    returns the sum of its elements. For an empty array it should return
    zero.
    """
    total = 0
    for number in int_array
      total += number
    end
    return total
  end

  
  def max_2_sum(int_array)
    """
    Define a method max_2_sum which takes an array of integers as an
    argument and returns the sum of its two largest elements. For an empty
    array it should return zero. For an array with just one element, it
    should return that element.
    """
    size_array = int_array.length
    sorted_array = int_array.sort.reverse

    if size_array == 0
      return 0
    elsif size_array == 1
      return int_array[0]
    else
      return sorted_array[0] + sorted_array[1]
    end
  end


  def sum_to_n?(int_array, n)
    """
    Define a method sum_to_n? which takes an array of integers and an
    additional integer, n, as arguments and returns true if any two
    distinct elements in the array of integers sum to n. An empty array
    or single element array should both return false.
    """
    # Use the size of the array to find out if we should return false
    count = 0
    size_array = int_array.length
    sorted_array = int_array.sort.reverse

    # Return false if the array is empty or has one element
    if size_array <= 1
      return false

    else
      # loop and scoop
      while count < size_array
        array_walk = 1
        while array_walk < size_array
          if count + array_walk < size_array &&
              sorted_array[count] + sorted_array[count + array_walk] == n
            return true
          else
            array_walk += 1
          end
        end
        count += 1
      end
      return false
    end
  end
      
  
end




 
