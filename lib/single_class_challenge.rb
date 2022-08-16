class GrammarStats
    def initialize
      @hash_text = {}
    end
  
    def check(text) # text is a string
        fails "No input" if text.nil?
   if text[0] == text[0].capitalize && text[-1] == "."
    @hash_text[text] = true
    return true
   else 
    @hash_text[text] = false
    return false
    end
end

    def percentage_good
        true_text_count = @hash_text.count { |k, v| v == true}
        return (true_text_count.to_f / @hash_text.length.to_f) * 100
    end
  
  end

#   
#     # Returns as an integer the percentage of texts checked so far that passed
#     # the check defined in the `check` method. The number 55 represents 55%.
#   end