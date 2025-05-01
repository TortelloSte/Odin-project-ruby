# Substrings Finder in Ruby

## Description

This project implements a simple Ruby method called `#substrings` that:
- Takes a string (`word`) as input.
- Accepts an array of valid substrings (your "dictionary").
- Returns a hash that counts how many times each dictionary word appears in the string.

The search is **case-insensitive**, and the input string can contain multiple words or punctuation.

## Implementation

```ruby
def substrings(word, dictionary)
  word.downcase!
  dictionary.each_with_object(Hash.new(0)) do |sub, result|
    count = word.scan(sub).length
    result[sub] += count if count > 0
  end
end

# Example dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Test 1
puts substrings("below", dictionary)
# Output: { "below" => 1, "low" => 1 }

# Test 2
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Output: { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

## How to Run the Code

### Option 1: Using IRB (Interactive Ruby)
1. Open your terminal.
2. Run `irb`.
3. Copy and paste the code above.
4. Observe the printed results.

### Option 2: Create a Ruby File
1. Create a file named `substrings.rb`.
2. Paste the code inside it.
3. Run it with:
   ```bash
   ruby substrings.rb
   ```