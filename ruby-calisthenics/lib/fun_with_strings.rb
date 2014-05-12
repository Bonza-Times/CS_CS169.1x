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
    res = self.split(//).select {|word| word =~ /[\w+\s]/ }.join.downcase   
    
    count_dict = Hash.new
    res.split(" ").each do |word|
      if count_dict.has_key?(word)
        count_dict[word] += 1
      else
        count_dict[word] = 1
      end
    end
    return count_dict
  end

  
  def anagram_groups
    require 'set'
    # let's get the words in a list
    res = self.split(//).select {|word| word =~ /[\w+\s]/ }.join
    use_res = res.downcase!
    # group words by set similarity
    #res.split(" ").each do |word.downcase.to_set|

    # this bit groups words by length
    set_array = []
    use_res.split(" ").each do |word|
      word.to_set
      set_array.push(word)
    end

    master_list = []
    for item in set_array do
      temp_list = []
      count = 0
      while count < set_array.length
        if count + 1 < set_array.length and
            (set_array[count + 1] & set_array[count]).length ==
            set_array[count].length
          temp_list.push(set_array[count])
          temp_list.push(set_array[count + 1])
          count += 2
        else
          temp_list.push(set_array[count])
          count += 1
        end
      end
      master_list.push(temp_list)
    end
    
    return master_list
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
