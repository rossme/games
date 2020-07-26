require_relative "welcome"

def game

  run = true
  while run == true
  hand = ["rock", "paper", "scissors"]
  choice = hand.sample

  puts "=> Please choose 'rock', 'paper' or 'scissors'"
  user_answer = gets.chomp
  user_choice = user_answer.downcase

  you_lost = "=> You chose #{user_choice}, but I chose #{choice}. You lost!"
  you_won = "=> You chose #{user_choice}, and I chose #{choice}. You won!"

    if user_choice == "rock" && choice == "paper" ||
       user_choice == "paper" && choice == "scissors" ||
       user_choice == "scissors" && choice == "rock"
       puts you_lost
      elsif user_choice == "rock" && choice == "scissors" ||
        user_choice == "paper" && choice == "rock" ||
        user_choice == "scissors" && choice == "paper"
        puts you_won
      elsif user_choice == choice
        puts "=> You chose #{user_choice} and I also chose #{choice}. It's a tie!"
      elsif user_choice == "the rock" && choice
      require_relative "the_rock_wins"
      else
        puts "=> Sorry I didn\'t understand."
        run == true
    end
    sleep(2)
    puts "=> Shall we play again? Y/N"
    yes_no = gets.chomp
    play_again = yes_no.downcase
    if play_again == "y"
      run == true
    elsif play_again != "y" && play_again != "n"
      puts "=> Sorry I didn\'t understand, so let's play one more time!"
    else
      break
    end
  end
end

game

