module FunWithStrings
  
  def initialize(check_string)
    @check_string = check_string
  end

  attr_accessor :check_string
  
  def palindrome? 
    """
       A palindrome is a word or phrase that reads the same forwards as
       backwards, ignoring case, punctuation, and nonword characters. (A
       'nonword character' is defined for our purposes as 'a character that
       Ruby regular expressions would treat as a nonword character'.)

       You will write a method palindrome? that returns true if and only if
       its receiver is a palindrome.

       'redivider'.palindrome?    # => should return true
       'adam'.palindrome?         # => should return false or nil
    """ 
    # strip punctuation, remove casing, and nonword characters with regex
    @check_string = @check_string.sub("[^A-z]", "")
    @check_string.lower!

    # Does the string read the same forwards and reversed?
    if @check_string == @check_string.reverse 
        return true
    else
        return false
    end
  end
  
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
