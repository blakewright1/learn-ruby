#this program translates between english and pig-latin

#given a word in pig latin will return a word in english
def pig_to_english(pig_latin)
  return pig_latin[pig_latin.length()-3] + pig_latin[0, pig_latin.length()-3]
end

#given a word in english return a word in pig latin
def english_to_pig(english)
  return english[1..-1] + english[0] + "ay"
end

puts "Welcome to the pig-latin <--> english translator"


choice = 1
while choice != 0      #when 0 is entered stop the program, otherwise continue
  puts "Select one of the following options: "
  puts "1) translate a word from english to pig-latin"
  puts "2) translate a sentence from english to pig-latin"
  puts "3) translate a word from pig-latin to english"
  puts "4) translate a sentence from pig-latin to english"
  puts "0) exit the program"
  case choice
  when 1
    print "enter a word in english: "
    word = gets.chomp
    print english_to_pig(word)
  when 2
    print "enter a sentence in english: "
    sentence = gets.chomp

  when 3
    print "enter a word in pig-latin: "
    word = gets.chomp
    print pig_to_english(word)
  when 4
    print "enter a sentence in pig_latin: "
    sentence = gets.chomp
  else
    puts "invalid option, enter a number from the menu"
  end

end
puts "Goodbye!"
