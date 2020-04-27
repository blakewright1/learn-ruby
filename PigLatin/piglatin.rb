#this program translates between english and pig-latin

#given a word in pig latin, return a word in english
def pig_to_english(pig_latin)
  print pig_latin[pig_latin.length()-3] + pig_latin[0, pig_latin.length()-3]
end

#given a word in english return a word in pig latin
def english_to_pig(english)
  print english[1..-1].to_s + english[0].to_s + "ay"
  #[1..-1] gives index 1 through end
end

#given a sentence in english, print a sentence in pig-latin
def english_sentence(str)
  words = str.split(' ')  #words becomes an array of words, split by ' '
  words.each do |s|       #for each s in words
    english_to_pig(s)
    print " "
  end
  puts ""
end

#given a sentence in pig-latin, print a sentence in english
def pig_sentence(str)
  words = str.split(' ')
  words.each do |s|
    pig_to_english(s)
    print " "
  end
  puts ""
end

puts "\t\t~ Welcome to the pig-latin <--> english translator ~"

choice = 1
while choice != 0      #when 0 is entered stop the program, otherwise continue
  puts "\nSelect one of the following options: "
  puts " 1) translate a word from english to pig-latin"
  puts " 2) translate a sentence from english to pig-latin"
  puts " 3) translate a word from pig-latin to english"
  puts " 4) translate a sentence from pig-latin to english"
  puts " 0) exit the program"
  choice = gets.chomp.to_i
  case choice
  when 1      #given english word
    print "enter a word in english: "
    word = gets.chomp
    english_to_pig(word)
    puts ""
  when 2      #given english sentence
    print "enter a sentence in english: "
    sentence = gets.chomp
    english_sentence(sentence)
  when 3      #given pig-latin word
    print "enter a word in pig-latin: "
    word = gets.chomp
    pig_to_english(word)
    puts ""
  when 4      #given pig-latin sentence
    print "enter a sentence in pig_latin: "
    sentence = gets.chomp
    pig_sentence(sentence)
  when 0      #exit the program
    puts "Goodbye!"
  else
    puts "invalid option, enter a number from the menu"
  end
end
