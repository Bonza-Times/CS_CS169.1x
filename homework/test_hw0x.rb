require 'test/unit'
require_relative 'hw01'
require_relative 'hw02'
require_relative 'hw03'

class Hw01Tests < Test::Unit::TestCase
  
  def test_sum()
    # Init class
    hw01 = Hw0x.new()
    # Sum numbers correctly
    array_pos = [1,2,3,4]
    array_neg = [-1,-2,-3,-4]
    array_null = []
    # Test sum skills
    assert_equal(hw01.sum(array_pos),10)
    assert_equal(hw01.sum(array_neg),-10)
    assert_equal(hw01.sum(array_null), 0)
   end

  def test_max_2_sum()
    # Init class
    hw01 = Hw0x.new()
    # Arrays to be sorted and summed
    array_zero = []
    array_one = [5]
    array_sort = [4,2,6,7]
    # Test sum skills
    assert_equal(hw01.max_2_sum(array_zero), 0)
    assert_equal(hw01.max_2_sum(array_one), 5)
    assert_equal(hw01.max_2_sum(array_sort), 13)
   end

  def test_sum_to_n?()
    # Init class
    hw01 = Hw0x.new()
    # Value of n
    n = 10
    # Arrays to be used to find a sum == n
    array_yes = [2,3,6,4]
    array_no =  [10,11,5,8]
    array_one = [5]
    array_empty = []

    # Failed on first test
    array_true = [3,0,5]

    
    # Test sum skills
    assert_equal(hw01.sum_to_n?(array_true, 5), true) # Failed this test
    assert_equal(hw01.sum_to_n?(array_yes, n), true)
    assert_equal(hw01.sum_to_n?(array_no, n), false)
    assert_equal(hw01.sum_to_n?(array_one, n), false)
    assert_equal(hw01.sum_to_n?(array_empty, n), false) 
  end
    
end


class Hw02Tests < Test::Unit::TestCase

  def test_hello
    # Init class
    hw02 = Hw02.new()
    # Strings to be used to concatenate
    first_last = "Tyler Brown"
    first = "Tyler"
    # Concat attack
    assert_equal(hw02.hello(first_last), "Hello, Tyler Brown")
    assert_equal(hw02.hello(first), "Hello, Tyler")
  end

  def test_starts_with_consonant?()
    # Init class
    hw02 = Hw02.new()
    # Strings possible beginning with a consenant
    upper_yes = "Tyler"
    lower_yes = "diane"
    upper_no = "Alex"
    lower_no = "Isaac"
    number_no = "1dunder"
    symbol_no = "#selfie"
    # Matchy matchy
    assert_equal(hw02.starts_with_consonant?(upper_yes), true)
    assert_equal(hw02.starts_with_consonant?(lower_yes), true)
    assert_equal(hw02.starts_with_consonant?(upper_no), false)
    assert_equal(hw02.starts_with_consonant?(lower_no), false)
    assert_equal(hw02.starts_with_consonant?(number_no), false)
    assert_equal(hw02.starts_with_consonant?(symbol_no), false)
  end


  def test_binary_multiple_of_4?()
    # Init class
    hw02 = Hw02.new()
    # String maybe represents a binary number that is a multiple of 4
    binary_yes1 = "1100100"
    binary_yes2 = "1000100"
    binary_no1 = "1100101"
    binary_no2 = "1100110"
    not_binary1 = "1105400"
    not_binary2 = "1300120"
    not_binary3 = "abcdefg"
    failed_test = "0"
    # Binary bonanza
    assert_equal(hw02.binary_multiple_of_4?(binary_yes1), true)
    assert_equal(hw02.binary_multiple_of_4?(binary_yes2), true)
    assert_equal(hw02.binary_multiple_of_4?(binary_no1), false)
    assert_equal(hw02.binary_multiple_of_4?(binary_no2), true)
    assert_equal(hw02.binary_multiple_of_4?(not_binary1), false)
    assert_equal(hw02.binary_multiple_of_4?(not_binary2), false)
    assert_equal(hw02.binary_multiple_of_4?(not_binary3), false)
    assert_equal(hw02.binary_multiple_of_4?(failed_test), true)
  end
                                              
end


class Hw03Tests < Test::Unit::TestCase
 
  ## price_as_string ##
  def test_price_as_string()
    # should display 40.00 as "$40.00"
    hw03 = BookInStock.new("012345", 40.0)
    assert_equal(hw03.price_as_string(), "$40.00")
  end

  def test_int_passed_not_float()
    # should display 20 as $20.00
    hw03 = BookInStock.new("012345", 20)
    assert_equal(hw03.price_as_string(), "$20.00")
  end


  ## constructor ##
  def test_invalid_isbn()
    # should reject invalid ISBN number
    hw03 = BookInStock.new("", 40.0)
    assert_raise(ArgumentError){ hw03.price_as_string()}
  end

  def test_zero_price()
    # should reject zero price
    hw03 = BookInStock.new("012345", 0)
    assert_raise(ArgumentError){ hw03.price_as_string()}
  end

  def test_negative_price()
    # should reject negative price
    hw03 = BookInStock.new("012345", -21.01)
    assert_raise(ArgumentError){ hw03.price_as_string()}
  end


  ## Failed some tests on so revising input ##
  def test_reject_invalid_ISBN()
    # BookInStock constructor should reject invalid ISBN number
    assert_raise(ArgumentError) {BookInStock.new('', 25.00)}
  end

  def test_reject_zero_price()
    # BookInStock constructor should reject zero price
    assert_raise(ArgumentError) {BookInStock.new('isbn1', 0)}
  end

  def test_reject_negative_price()
    # BookInStock constructor should reject negative price
    assert_raise(ArgumentError) {BookInStock.new('isbn1', -5.0)}
  end


  ## getters and setters ##  
  def test_isbn_setters_and_getters()
    hw03 = BookInStock.new("012345", 40.00)
    # should set ISBN
    hw03.isbn=("2468")
    # should be able to get that ISBN
    assert_equal(hw03.isbn, "2468")
  end

  def test_price_setters_and_getters()
    hw03 = BookInStock.new("012345", 40.00)
    # should set price
    hw03.price=(22.00)
    # should be able to get the changed price
    assert_equal(hw03.price, 22.0)
  end
 
end


