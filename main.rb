require './classes/Game';

new_game = Game.new

while new_game.active == true do
  new_game.new_round
end