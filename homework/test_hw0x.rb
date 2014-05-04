require 'test/unit'
require_relative 'hw01'

class Hw0xTests < Test::Unit::TestCase

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
    # Test sum skills
    assert_equal(hw01.sum_to_n?(array_yes, n), true)
    assert_equal(hw01.sum_to_n?(array_no, n), false)
    assert_equal(hw01.sum_to_n?(array_one, n), false)
    assert_equal(hw01.sum_to_n?(array_empty, n), false) # taking too long
  end

    
end
