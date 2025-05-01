# Stock Picker in Ruby

## Description

This Ruby method implements a **stock picker** tool that determines the best days to buy and sell a stock for maximum profit.  
It accepts an array of prices, where each element represents the stock price on a given day (starting from day 0).

The function returns a pair of days:  
- The first is the **best day to buy**,  
- The second is the **best day to sell**,  
such that you **buy before you sell**, and the **profit is maximized**.

## Implementation

```ruby
def stock_picker(prices)
  best_pair = [0, 0]
  max_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day + 1..-1].each_with_index do |sell_price, offset|
      sell_day = buy_day + 1 + offset
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        best_pair = [buy_day, sell_day]
      end
    end
  end

  best_pair
end

# Test
puts stock_picker([17,3,6,9,15,8,6,1,10])
# Output: [1, 4]  # for a profit of $12
```

## How to Run the Code

### Option 1: Using IRB (Interactive Ruby)
1. Open your terminal.
2. Run `irb`.
3. Copy and paste the code above.

### Option 2: Create a Ruby File
1. Create a file named `stock_picker.rb`.
2. Paste the code inside it.
3. Run it with:
   ```bash
   ruby stock_picker.rb
   ```

## Quick Tips

- You must **buy before you sell**.
- Consider edge cases like:
  - The lowest price being on the **last day**.
  - The highest price being on the **first day**.
- The method should return `[0, 0]` if no profitable trade is possible.
