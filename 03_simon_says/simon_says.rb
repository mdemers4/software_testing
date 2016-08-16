def echo(word)
	return word 
end

def shout(word)
	return word.upcase
end

def repeat(word , n = 2)
	string = word
	for index in 1..n-1
		string += " #{word}"
	end
	return string
end
puts repeat("the", 1)

def start_of_word(word, n)
	return word[0..n-1]
end

def first_word(sentance)
	first = sentance.split(" ")
	return first[0]
end

def titleize(sentance)
	sentance[0] = sentance[0].upcase
	words = sentance.split(" ")
	new_string = ""
	words.each_with_index do |word,index| 
		if words.length == index + 1 && word.length > 5 #last word
			word[0] = word[0].upcase
			new_string += word

		elsif words.length == index + 1 && word.length <= 5 #last word
			new_string += word

		elsif word.length >= 5
			word[0] = word[0].upcase
			new_string += word +"\s"

		else
			new_string += word +"\s"
			

		end
	end
	return new_string

end




