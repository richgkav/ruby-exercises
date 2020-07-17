def substrings(word, dictionary)

	output = Hash.new(0)
	count = 0;

	dictionary.each do | dict_word |

		count = word.scan(dict_word).count

		if (count > 0)
			output[dict_word] = count;
		end

	end

	puts output
	output

end

dictionary = [
	"below","down","go","going","horn","how","howdy",
	"it","i","low","own","part","partner","sit"
]
# needs to return a hash where the values are th qty the word is found
substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }
