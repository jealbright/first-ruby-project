def translate words
  alpha = ('a'..'z').to_a # converts to array
  vowels = %w[a e i o u] # %w creates an array without quotes and commas
  consonants = alpha - vowels

  words = words.split
  new_words = [] # creates new array where I'll form new pig-latinized words
  words.each do |word|

if vowels.include?(word[0]) # checks if first letter is a vowel
          new_words << word +"ay" # simply adds the word with ay at the end to the array

      elsif word.slice(0..1) == "qu" #checks if first 2 letters are qu
      new_words << word.slice(2..-1) + word.slice(0..1) + "ay" #adds first 2 letters to the end of the word with an ay
      elsif word.slice(0..2).include? 'qu'
      new_words << word.slice(3..-1) + word.slice(0..2) + 'ay'
      elsif consonants.include?(word[0])&&consonants.include?(word[1])&&consonants.include?(word[2])
      new_words << word.split("").rotate(3).join("") + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      new_words << word.split("").rotate(2).join("") + "ay"
    else
      new_words << word.split("").rotate.join("") + "ay"
      end
      
    end
    new_words.join(" ")
end