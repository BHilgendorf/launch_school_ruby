class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game  #add the < Game
  def rules_of_play
    #rules
  end
end

# What can we add to Bingo class to allow it to inherit the play method?

game_of_bingo = Bingo.new
game_of_bingo.play