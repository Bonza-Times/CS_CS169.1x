class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    player_1, choice_1 = player1
    player_2, choice_2 = player2

    case choice_1
    when "R" # Player 1 chooses rock
      if choice_2 == "S"
        return player1 #wins
      elsif choice_2 == "R"
        return player1 #tie goes to player1
      elsif choice_2 == "P"
        return player2 #loses
      else
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
      end
    when "P" # Player 1 chooses paper
      if choice_2 == "S"
        return player2 #loses
      elsif choice_2 == "R"
        return player1 #wins
      elsif choice_2 == "P"
        return player1 #tie goes to player1
      else
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
      end
    when "S" # Player 1 chooses scissors
      if choice_2 == "S"
        return player1 #tie goes to player1
      elsif choice_2 == "R"
        return player2 #loses
      elsif choice_2 == "P"
        return player1 #wins
      else
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
      end
    else
      raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
    
    
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end
