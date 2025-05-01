# Caesar Cipher in Ruby

This is a simple implementation of the Caesar Cipher encryption technique in Ruby.
The Caesar cipher is a substitution cipher where each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.

For example, with a right shift of 5:

"What a string!" becomes "Bmfy f xywnsl!"
This cipher preserves:

Letter case (uppercase/lowercase)
Non-alphabetic characters (punctuation, spaces, etc.)
## Assignment Context

In cryptography, a Caesar cipher (also known as Caesar’s code or Caesar shift) is one of the simplest and most widely known encryption techniques.
Julius Caesar used this method to encode his private correspondence.
The cipher involves shifting letters by a fixed number of positions in the alphabet.
## Implementation

```ruby
def caesar_cipher(text, shift)
  text.tr(
    'A-Za-z',
    ('A'..'Z').to_a.rotate(shift).join + ('a'..'z').to_a.rotate(shift).join
  )
end

# Test
puts caesar_cipher("What a string!", 5)
# Output: "Bmfy f xywnsl!"
```


## How to Run the Code

Option 1: Using IRB (Interactive Ruby)
Open your terminal.
Run irb.
Copy and paste the code above.
You should see:
Bmfy f xywnsl!
Option 2: Create a Ruby File
Create a file named caesar_cipher.rb.
Paste the code inside it.
Run it with:
ruby caesar_cipher.rb