# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.


def translate(sentance)
	words = sentance.downcase.split(" ")
	alpha = ('a'..'z').to_a
	vowels = ['a','e','u','i','o']
	consonants = alpha - vowels
	print consonants
	results = []

	words.each do |word|
		pig_latin_word = ""
		if vowels.include? word[0]
			pig_latin_word = word + "ay"
			results.push(pig_latin_word)
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
			pig_latin_word = word[3..-1] + word[0..2] + "ay"
			results.push(pig_latin_word)
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) && word[2] == vowels[2]
			pig_latin_word = word[3..-1] + word[0..2] + "ay"
			results.push(pig_latin_word)
		elsif consonants.include?(word[0]) && consonants.include?(word[1])
			pig_latin_word = word[2..-1] + word[0..1] + "ay"
			results.push(pig_latin_word)
		elsif consonants.include?(word[0]) && word[1] == vowels[2]
			pig_latin_word = word[2..-1] + word[0..1] + "ay"
			results.push(pig_latin_word)
		elsif consonants.include?(word[0])
			pig_latin_word = word[1..-1] + word[0] + 'ay'
			results.push(pig_latin_word)
		end
	end
	return results.join(' ')
end 

# puts translate("school")
# puts translate("banana banana")
# puts translate("eat pie")









