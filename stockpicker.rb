#  > stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  # for a profit of $15 - $3 == $12

#select the days where it will be most profitable
#buy first then sell

def stockpicker(price_per_day)
  min_price = price_per_day[0]
  best_day = [0, 0]
  max_profit = 0
  cheapest_day = 0
  
  price_per_day.each_with_index do | price, day|

    if price < min_price
      min_price = price
      cheapest_day = day
    end

    if price - min_price > max_profit
      max_profit = price - min_price
      #only record cheapest_day if profit is max
      best_day = [cheapest_day, day]
    end

  end
  
  best_day

end

data = [17,3,6,9,15,8,6,1,10]
p stockpicker(data)

p stockpicker([1,2,4,16,14,10,3,6])

p stockpicker([11,2,4,1,14,10,3,6,12,1,16])

