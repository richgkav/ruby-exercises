# Implement a method #stock_picker that takes in an array of stock prices, one 
# for each hypothetical day. It should return a pair of days representing the 
# best day to buy and the best day to sell. Days start at 0.

# e.g.

#  > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12
#
# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day
# or the highest day is the first day.
#
# run through the array and calculate difference between the current day
# and then the next one etc etc storing the results in another array that
# saves the following values
# [[buy day, sell day, difference],[buy day, sell day, difference]]
#
# [[0,1,diff],[0,2,diff],[0,3,diff]] etc
#
# then find the array day with the most profit
