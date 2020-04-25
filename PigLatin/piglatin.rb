#this program translates between english and pig-latin

english = "words"
puts english[1..-1] + english[0] + "ay"

pig_latin = "ordsway"
puts pig_latin[pig_latin.length()-3] + pig_latin[0, pig_latin.length()-3]





#given a word in pig latin will return a word in english
def pig_to_english(pig_latin)
  return pig_latin[pig_latin.length()-3] + pig_latin[0, pig_latin.length()-3]
end

#given a word in english return a word in pig latin
def english_to_pig(english)
  return english[1..-1] + english[0] + "ay"
end
