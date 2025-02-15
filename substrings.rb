def substrings(words, dictionary)
  # make array of words
  words_array = words.split(" ")
  # make output hash
  substring_hash = Hash.new(0)
  
  words_array.each do |word|
    dictionary.each do |element|
      if word.include?(element)
        substring_hash[element] += 1
      end
    end
  end

  return substring_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p substrings("Howdy partner, sit down! How's it going?", dictionary)
#    { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
