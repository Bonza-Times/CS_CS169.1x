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
    # let's get the words in a list
    res = self.split(//).select {|word| word =~ /[\w+\s]/ }.join
    use_res = res.split(" ")
    # group words by set similarity
    #res.split(" ").each do |word.downcase.to_set|


    # Make a dictionary where each key is a sorted word mapped to
    # words with those letters

    anagram_dict = {}
    use_res.each do |word|
      sorted_word = word.downcase.chars.sort.join
      if anagram_dict.has_key?(sorted_word)
        anagram_dict[sorted_word] = anagram_dict[sorted_word].push(word)
      else
        anagram_dict[sorted_word] = []
      end
    end

    # Return the data structure as specified in the tests
    specified_data_structure = []
    anagram_dict.each_value{|value| specified_data_structure.push(value)}
    # Include a list if an empty string was passed
    if specified_data_structure.length == 0
      specified_data_structure.push([])
    end
    return specified_data_structure

  end  
  
end    
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
