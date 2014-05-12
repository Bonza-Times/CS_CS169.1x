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
    use_res = res.downcase.split(" ")
    # group words by set similarity
    #res.split(" ").each do |word.downcase.to_set|

    # this bit groups words by length
    temp_list = []
    use_res.each do |word.sort|
      temp_list.push(word)
    end

    master_list
    temp_list.each do |item|
      count = 0
      mini_list = []
      while count < temp_list.length do
          if count +1 < temp_list.length and 
              temp_list[count] == temp_list[count + 1]
            mini_list.push(temp_list[count])
            mini_list.push(temp_list[count + 1])
            count += 1
          else
            mini_list.push(temp_list[count]) 
          end
        end
        master_list.push(mini_list)
      end
    return master_list
  end
    
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
