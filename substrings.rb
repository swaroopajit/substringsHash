def substrings(word, dictionary)
    subFreq = {}
    word = word.downcase
    for i in 0..dictionary.length-1 do
        if word.include?(dictionary[i])
            subFreq[dictionary[i]] = word.scan(/(?=#{dictionary[i]})/).count
        end
    end
    return subFreq
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrings("Howdy partner, sit down! How's it going?", dictionary))