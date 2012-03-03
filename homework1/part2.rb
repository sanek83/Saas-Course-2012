class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless ['p','r','s'].include?(game[0][1].downcase) and ['p','r','s'].include?(game[1][1].downcase)
  play = [game[0][1].downcase, game[1][1].downcase]
  return game[0] if play[0] == play[1] 

  if play == ["r","s"] or play == ["p","r"] or play == ["s","p"] then
    return game[0]
  else
    return game[1]
  end
end

def rps_tournament_winner(game)
  if game[0][0].is_a?(String)
    return rps_game_winner(game)
  else
    rps_tournament_winner([rps_tournament_winner(game[0]), rps_tournament_winner(game[1])])
  end
end


