require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score > bank_score && player_score < 21
    'You won!'
  elsif player_score == 21
    'Black Jack'
  elsif player_score == bank_score
    'Push!'
  else
    'You lost!'
  end
end
