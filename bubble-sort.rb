# Build a method #bubble_sort that takes an array and returns a sorted array.
# It must use the bubble sort methodology
# (using #sort would be pretty pointless, wouldn’t it?).

#  > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(input)

	puts input.to_s
	changed = true

	while changed do
		changed = false

		for i in 0...input.size-1 do
			if (input[i] > input[i+1])
				input[i],input[i+1] = input[i+1],input[i]
				changed = true
			end
		end
	end

	puts input.to_s

end

bubble_sort([4,3,78,2,0,2])