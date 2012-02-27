class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
  
def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless ['p','r','s'].include?(game[0][1].downcase) and ['p','r','s'].include?(game[1][1].downcase)
  
  if ((game[0][1].downcase == game[1][1].downcase) or (game[0][1].downcase == 'r' and game[1][1].downcase == 's') or (game[0][1].downcase == 's' and game[1][1].downcase == 'p')or (game[0][1].downcase == 'p' and game[1][1].downcase == 'r')) then
    'returns the list ' + game[0].to_s + ' wins since '+ game[0][1]+'>'+game[1][1]
  else
    'returns the list ' + game[1].to_s + " wins since "+ game[1][1]+">"+game[0][1]
  end     
end

p rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ])
p rps_game_winner([ [ "Armando", "S" ], [ "Dave", "S" ] ])
p rps_game_winner([ [ "Armando", "r" ], [ "Dave", "S" ] ])
p rps_game_winner([ [ "Armando", "P" ], [ "Dave", "r" ] ])

