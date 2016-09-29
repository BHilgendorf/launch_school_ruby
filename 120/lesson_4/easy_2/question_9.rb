class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    # more stuff
  end
end

# what happens if we add a play method to Bingo class?

answer: anytime "play" is called on an instance of the Bingo class, Ruby will
use the "play" method defined in the Bingo class