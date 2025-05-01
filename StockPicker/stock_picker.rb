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
puts stock_picker([17,3,6,9,15,8,6,1,10])