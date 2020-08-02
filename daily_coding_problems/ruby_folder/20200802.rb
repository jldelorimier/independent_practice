# Problem from August 1:
# Given a array of numbers representing the stock prices of a company in chronological order, write a function that calculates the maximum profit you could have made from buying and selling that stock once. You must buy before you can sell it.

# For example, given [9, 11, 8, 5, 7, 10], you should return 5, since you could buy the stock at 5 dollars and sell it at 10 dollars.

# We need to maximize the difference between a sell price (a later value) and a buy price (a former value). The buy price must come before the sell price.

# TRY 1
# def profitMaximizer (array)
#   lowestBuy = array[0]
#   p lowestBuy
#   array.each do |price|
#     if price < lowestBuy
#       lowestBuy = price
#     end
#     p lowestBuy
#     # I don't think I can use each.do because I have to store the i because I need to make sure my sell price comes after my buy price.
#   end
# end

# TRY 2

# prices = [9, 11, 8, 5, 7, 10]

# def profitMaximizer (array)
#   lowestBuy = array[0]
#   p lowestBuy
#   i = 0
#   integerLowestBuy = i
#   while i < array.length
#     if array[i] < lowestBuy
#       lowestBuy = array[i]
#       integerLowestBuy = i
#     end
#     p "Current lowestBuy is #{lowestBuy}"
#     p "Current integerLowestBuy is #{integerLowestBuy}"
#     i += 1
#   end
#   highestSell = lowestBuy
#   i  = integerLowestBuy
#   while i < array.length
#     if array[i] > highestSell
#       highestSell = array[i]
#       p "Current highestSell is #{highestSell}"
#     end
#     i += 1
#   end
#   profit = highestSell - lowestBuy
#   p profit
#   return profit
# end

# profitMaximizer(prices)

# example2 = [4, 3, 12, 1, 6]
# profitMaximizer(example2)

# ^ This is too simple. It doesn't work in every case (e.g. example 2) because the greatest difference does not use the lowest possible buy price. The lowest buy price comes after the greatest price difference.

# I think we need to assess the difference in prices as it's own wholistic unit; we can't separate finding the lowestBuy price and the subsequent highestSell price in the function. One has to be inside the other. I think a loop inside a loop will help. 

# I could try looping through it backwards and then for each subsequent integer (which will actually be an earlier integer if I'm looping backwards), storing the highest difference as I continue to loop backwards. So for each "sell" integer I could store a highest profit value in a separate array and then return the max value in the new array at the end. This will work, but I think there's a way I can simplify more.

# TRY 3

# prices = [9, 11, 8, 5, 7, 10]
# example2 = [4, 3, 12, 1, 6]

# def profitMaximizer (array)
#   i = array.length-1
#   arrayOfProfits = []
#   p "i is #{i}"
#   while i > 0
#     sellPrice = array[i]
#     # p "i is #{i}"
#     # p "array is #{array}"
#     # p "array[i] is #{array[i]}"
#     j=i-1
#     p "j is #{j}"
#     highestProfit = array[i] - array[j]
#       while j > 0
#         # p "array[i] is #{array[i]}"
#         # p "array[j] is #{array[j]}"
#         profit = array[i]-array[j]
#         p "This profit is #{profit}, aka #{array[i]} - #{array[j]}"
#         if profit > highestProfit
#           p "Resetting highest profit value..."
#           highestProfit = profit
#         end
#         p "The current highestProfit is #{highestProfit}"
#         p "Current highestProfit is #{highestProfit} =========== New j..."
#         j-=1
#       end
#       arrayOfProfits << highestProfit
#       p "The array of profits for this i is #{arrayOfProfits}"
#       p "**** NEW I ****"
#       i -= 1
#     end
#   p "The final arrayOfProfits is #{arrayOfProfits}" 
#   p "The highest profit for this array is #{arrayOfProfits.max}"
#   return arrayOfProfits.max
# end
  
# profitMaximizer(prices)
# profitMaximizer(example2)

# TRY 3 should work!!! I'm pretty confident that this does the thing correctly (though I'm sure there's a way to do it more eloquently). Now let's clean it up...

# prices = [9, 11, 8, 5, 7, 10]
# example2 = [4, 3, 12, 1, 6]

# def profitMaximizer (array)
#   i = array.length-1
#   arrayOfProfits = []
#   while i > 0
#     sellPrice = array[i]
#     j=i-1
#     highestProfit = array[i] - array[j]
#       while j > 0
#         profit = array[i]-array[j]
#         if profit > highestProfit
#           highestProfit = profit
#         end
#         j-=1
#       end
#       arrayOfProfits << highestProfit
#       i -= 1
#     end
#   p "The highest profit is #{arrayOfProfits.max}"
#   return arrayOfProfits.max
# end
  
# profitMaximizer(prices)
# profitMaximizer(example2)

# TRY 4

prices = [9, 11, 8, 5, 7, 10]
example2 = [4, 3, 12, 1, 6]

def profitMaximizer (array)
  i = array.length-1
  highestProfit = 0
  while i > 0
    sellPrice = array[i]
    j=i-1
    highestProfitForThisI = array[i] - array[j]
      while j > 0
        profit = array[i]-array[j]
        if profit > highestProfitForThisI
          highestProfitForThisI = profit
        end
        j-=1
      end
      if highestProfitForThisI > highestProfit
        highestProfit = highestProfitForThisI
      end
      i -= 1
    end
  p "The highest profit is #{highestProfit}"
  return highestProfit
end
  
profitMaximizer(prices)
profitMaximizer(example2)



