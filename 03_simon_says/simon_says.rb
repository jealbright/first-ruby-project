def echo(something)
	return something
end

def shout(something)
	return something.upcase
end

def repeat(something, times=2)
	("#{something} " * times).strip
end

def start_of_word(word, letters)
	word.slice(0, letters)
end

def first_word(phrase)
	phrase.split.first
end

def titleize(string)
	words = string.split(' ')
	words.each do |x|
		if x.length > 3
			x.capitalize! unless (x == 'over')
	end
end
words[0].capitalize!
words.join(' ')
end