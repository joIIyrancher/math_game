def generate_question
  num1 = rand(1..20)
  num2 = rand(1..20)
  #p (num1 + num2)
  question = "What does #{num1.to_s} plus #{num2.to_s} equal? "
  question
end

def prompt_player_for_answer
  counter = 0
  while true
    player = ""
    if counter % 2 == 0
      player = "1"
    else
      player = "2"
    end
    question = generate_question
    print "Player #{player}: #{question}"
    user_input = gets.chomp
    break unless verify_answer(question, user_input)

    counter += 1
  end
end

def verify_answer(question, input)
  question_arr = question.split(" ")
#  p question_arr
  answer = question_arr[2].to_i+question_arr[4].to_i
#  p answer
  #index 4 and 6 of the array are numbers
  if answer == input.to_i
    return true
  else
    return false
  end
end

prompt_player_for_answer