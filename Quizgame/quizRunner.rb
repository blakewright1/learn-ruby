require_relative 'question' #includes the Question class

#create questions
q1 = Question.new("What act looks like a floating hula hoop?",
  "Spanish web", "Lyra", "Still rings", "Cradle", 2)
q2 = Question.new("Where is Cirque du Soleil based?",
  "USA", "France", "Canada", "Italy", 3)
q3 = Question.new("What are the lines used to hold equipment in place called?",
  "Cables", "Locks", "Down-guys", "Snakes", 3)
q4 = Question.new("What is a funambulist?",
  "Tightrope walker", "Juggler", "Foot juggler", "Clown", 1)
q5 = Question.new("Where was the first circus?",
  "Greece", "Egypt", "Babylon", "Rome", 4)
list_of_questions = [q1, q2, q3, q4, q5]


score = 0
puts "Welcome to Circus Trivia!"

#loop through each question, if answered correctly increment score
list_of_questions.each do |q|
  q.display_question
  if q.take_answer
    score += 1
  end
end

#final output
puts "Your score is: " + score.to_s + "/" + list_of_questions.length.to_s
