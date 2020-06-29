def substrings(word, dictionary) 
    hash = {

    }
    word = word.downcase
    original = word.clone
    #initialize hash to 0
    dictionary.each do |substring|
        hash = hash.merge(substring => 0)
    end
    dictionary.each do |dict_index|
        while word.include?(dict_index)
            hash[dict_index] += 1
            #remove from the word, so loop is not infinite
            word = word.sub(dict_index, "")
        end
        #restore the word to what it was originally
        word = original   
    end
    
    puts hash.select{|key,value| value > 0}
    return hash.select{|key,value| value > 0}
    
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)