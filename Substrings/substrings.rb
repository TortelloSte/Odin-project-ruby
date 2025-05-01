def substrings(word, dictionary)
  word.downcase!
  dictionary.each_with_object(Hash.new(0)) do |sub, result|
    count = word.scan(sub).length
    result[sub] += count if count > 0
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)