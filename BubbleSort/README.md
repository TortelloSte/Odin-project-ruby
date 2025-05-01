# Bubble Sort in Ruby

## Description

This project implements the **Bubble Sort** algorithm in Ruby.  
Bubble Sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order.

The process is repeated until the list is sorted.

## Implementation

```ruby
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

# Test
puts bubble_sort([4, 3, 78, 2, 0, 2]).inspect
# Output: [0, 2, 2, 3, 4, 78]
```

## How to Run the Code

### Option 1: Using IRB (Interactive Ruby)
1. Open your terminal.
2. Run `irb`.
3. Copy and paste the code above.

### Option 2: Create a Ruby File
1. Create a file named `bubble_sort.rb`.
2. Paste the code inside it.
3. Run it with:
   ```bash
   ruby bubble_sort.rb
   ```

## Quick Tips

- Don't use `Array#sort` — implement the logic manually!
- Use a `swapped` flag to track if the array is already sorted.
- Multiple passes are required to ensure the largest values "bubble" to the top.
