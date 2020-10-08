dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","going"]

def substrings(string, dictionary)
words = string.downcase.split('') #splits given string into array of characters
stripped_string = words.reject { |char| char == "!" || char == "." || char ==","} #strips out punctuation
stripped_words = stripped_string.join('')#creates new array with each word as an item
words_array = stripped_words.split(' ')
i= 0
word_substrings = []
words_array.each do |item|#for each word
	for i in 0..item.length-1 do #create array of substrings from word, starting with first letter through letter.length-1
	substring = substring.to_s + item[i].to_s
	word_substrings.push(substring)
	i+=1
	end
end

results = word_substrings.reduce(Hash.new(0)) do |result, substring|
	if dictionary.include?(substring)
		result[substring] += 1
	end
	result
end
puts results
end


substrings("Howdy partner, have a horn, going going gone", dictionary)

