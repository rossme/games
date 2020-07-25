require_relative "welcome"

def game
  run = true
  while run == true
  puts "Rock, Paper, Scissors. Make your choice..."
  user_answer = gets.chomp
  user_choice = user_answer.downcase

  computer_choice = ['rock', 'paper', 'scissors']
  choice = computer_choice.sample
    if user_choice == "rock" && choice == "paper"
      puts "You chose #{user_choice}, but I chose #{choice}. You lost!"
    elsif user_choice == "rock" && choice == "scissors"
      puts "You chose #{user_choice}, but I chose #{choice}. You win!"
    elsif user_choice == "paper" && choice == "scissors"
      puts "You chose #{user_choice}, and I chose #{choice}. You lost!"
    elsif user_choice == "paper" && choice == "rock"
      puts "You chose #{user_choice}, and I chose #{choice}. *You win!*"
    elsif user_choice == "scissors" && choice == "rock"
      puts "You chose #{user_choice}, but I chose #{choice}. You lost!"
    elsif user_choice == "scissors" && choice == "paper"
      puts "You chose #{user_choice}, and I chose #{choice}. *You win!*"
    elsif user_choice == choice
      puts "You chose #{user_choice} and I also chose #{choice}. It's a tie!"
    elsif user_choice == "the rock" && choice
     require_relative "the_rock_wins"
    else
      puts "Sorry I didn\'t understand."
      run == true
    end
    sleep(2)
    puts "=> Shall we play again? Y/N"
    user_yes_no = gets.chomp
    yes_no = user_yes_no.downcase
    if yes_no == "y"
      run == true
    elsif yes_no != "y" && yes_no != "n"
      puts "Sorry I didn\'t understand, so let's play one more time!"
    else
      break
    end
  end
end

game
