def substrings(word, dictionary)
  # make array of words .split("") words.new = []
  # make output hash
  substring_hash = Hash.new(0)
  
  dictionary.each do |element|
    if word.include?(element)
      substring_hash[element] += 1
    end
  end
  return substring_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "below" => 1, "low" => 1 }
