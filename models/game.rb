class Game
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def compare_choices()
# there has to be a more elegant way of doing this, maybe iterating through the array somehow?
    if @player1 == @player2
      return "It's a draw: play again!"
    end

    if @player1 == "rock"
      if@player2 == "scissors"
        return "Rock smashes scissors: Player1 wins!"
      elsif @player2 == "paper"
        return "Paper covers rock: Player2 wins!"
      end
    end

    if @player1 == "paper"
      if@player2 == "scissors"
        return "Scissors cut paper: Player2 wins!"
      elsif @player2 == "rock"
        return "Paper covers rock: Player1 wins!"
      end
    end

    if @player1 == "scissors"
      if@player2 == "paper"
        return "Scissors cut paper: Player1 wins!"
      elsif @player2 == "rock"
        return "Rock smashes scissors: Player2 wins!!"
      end
    end

  end
end
