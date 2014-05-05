class BookInStock
  """
        Define a class BookInStock which represents a book with an isbn
        number, isbn, and price of the book as a floating-point number,
        price, as attributes. The constructor should accept the ISBN number
        (a string) as the first argument and price as second argument, and
        should raise ArgumentError (one of Ruby's built-in exception types)
        if the ISBN number is the empty string or if the price is less than
        or equal to zero.

        Include the proper getters and setters for these attributes. Include
        a method price_as_string that returns the price of the book with a
        leading dollar sign and trailing zeros, that is, a price of 20
        should display as '$20.00' and a price of 33.8 should display as
        '$33.80'.
    """
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price.to_f
    end
  end

  attr_accessor :isbn
  attr_accessor :price
  
  def check_input()
    if @isbn.length == 0 || @price <= 0
      raise ArgumentError
    else
        return true
    end
  end
  
  def price_format()
    str_price = @price.to_s
    str_price = str_price.split(".")
    str_len = str_price[1].length
    # Fix the string
    case str_len
    when 0
      new_price = "$" + str_price[0] + ".00"
    when 1
      new_price = "$" + str_price[0] + "." + str_price[1] + "0"
    when 2
      new_price = "$" + str_price[0] + "." + str_price[1] 
    else
    end
    # return the fixed string
    return new_price
  end
  
   
  def price_as_string()
    if self.check_input == true
      return self.price_format
    end
  end

end
