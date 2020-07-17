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
# Solution is to brute force it ;)
# run through the array and calculate difference between the current day
# and then the next one etc etc storing the results in another array
#
# [[buy day, sell day, difference],[buy day, sell day, difference]]
# [[0,1,diff],[0,2,diff],[0,3,diff]] etc
#
# then find the array day with the most profit using enumerable.max_by method

def stock_picker(day_prices)
	all_diff = []
	last_index = day_prices.length - 2		# no need to test last index

	day_prices.each_with_index do | day1_price, d1_index |

		# inner only needs to iterate from outer index position to end
		d1_index.upto last_index do | d2_index |
			diff = day_prices[d2_index] - day1_price
			all_diff << [d1_index, d2_index, diff]
		end
	end

	# all_diff looks like this [[0,1,diff],[0,2,diff],[0,3,diff], etc
	max = all_diff.max_by{ | each_test | each_test[2]}
	puts max.to_s
	max
end

stock_picker([17,3,6,9,15,8,6,1,10])

# => [1,4]  # for a profit of $15 - $3 == $12