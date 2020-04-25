class Question
  def initialize(s, a, b, c, d, correct)
    @sentence = s
    @option1 = a
    @option2 = b
    @option3 = c
    @option4 = d
    @correct_answer = correct
  end

  def display_question
    puts @sentence
    puts "1: " + @option1
    puts "2: " + @option2
    puts "3: " + @option3
    puts "4: " + @option4
  end

  def take_answer
    print "\tYour answer: "
    answer = gets.chomp.to_i
    if answer == @correct_answer
      puts "correct!"
      return true
    else
      puts "incorrect"
      return false
    end
  end
end
