
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
    size_array = int_array.length

    # Return false if the array is empty or has one element
    if size_array <= 1
      return false

    # Check to see if two elements in the array can be combined to equal n.
    # If so, then return true
    else
      sorted_array = int_array.sort.reverse
      count = 0
      while count < size_array

        # Ignore number if it's larger than or equal to n
        if sorted_array[count] > n
          # pass

        # Otherwise, loop through and try to find a sum equal to n
        else
          array_walk = 1
          for number in sorted_array[count...size_array]
            if number + sorted_array[count + array_walk] == n

              # Yes, we found a sum == n 
              return true
            end

            # No, let's keep walking down the array to hopefully find one
            array_walk += 1
          end
        # We didn't find a sum == n, so let's continue looping through the
        # array
        end
      # We did not find a sum == n, in this array so let's close the loop
      end
      # And return false
      return false
    end       
  end
  
end
