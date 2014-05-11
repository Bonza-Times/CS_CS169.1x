module FunWithStrings
  
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
    #@check_string = @check_string.gsub("[^A-z]", "")
    rest = self.split(//).select {|word| word =~ /\w+/}.join
    rest.downcase == rest.downcase.reverse
    
    # Does the string read the same forwards and reversed?
    #if @check_string == @check_string.reverse 
    #    return true
    #else
    #    return false
    #end
    #end
  end
  
  def count_words

    # Split string by spaces
    res = self.split(//).select {|word| word =~ /[\w+\s]/ }.join   
 
    count_dict = Hash.new
    res.each do |word|
      if count_dict.has_key?(word)
        count_dict[word] += 1
      else
        count_dict[word] = 1
      end
    end
    return count_dict

      

    ####### Partial Ruby solution #############
    #res = self.split(//).select {|word| word =~ /\w+/ }.join
    #res.each {|word|
    

    ########## Python #################
    #word_dict = {} 
    #for word in res:
    #   if word in word_dict:
    #       word_dict[word] += 1
    #    else:
    #       word_dict[word] = 1
    #return word_dict
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
