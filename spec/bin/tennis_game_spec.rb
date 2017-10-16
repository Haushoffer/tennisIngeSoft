require "./bin/tennisGame"
describe TennisGame do
    it 'returns 15 for player one when player one wins the point' do
    player_one = Player.new()
    player_two = Player.new()

    game = TennisGame.new(player_one, player_two)
    player_one.wins_point

    player_one_score = game.player_one_score
    player_two_score = game.player_two_score

    expect(player_one_score).to eq('15')

  end
    it 'returns 30 for player one when player one wins two points' do
    player_one = Player.new
    player_two = Player.new

    game = TennisGame.new(player_one, player_two)
    player_one.wins_point
    player_one.wins_point

    player_one_score = game.player_one_score
    player_two_score = game.player_two_score

    expect(player_one_score).to eq('30')
  
  end
  it 'returns 40 for player one when player one wins three points' do
    player_one = Player.new
    player_two = Player.new

    game = TennisGame.new(player_one, player_two)
    player_one.wins_point
    player_one.wins_point
    player_one.wins_point

    expect(game.player_one_score).to eq('40')
    
  end
  it 'return 30-15 when a player scored 1 point and the other 2 points' do
    player_one = Player.new
    player_two = Player.new

    game = TennisGame.new(player_one, player_two)
    player_one.wins_point
    player_one.wins_point

    player_two.wins_point
    
    expect(game.score).to eq("30 15")
  end
  it 'return 30-iguales when both players have 2 points scored' do
    player_one = Player.new
    player_two = Player.new

    game = TennisGame.new(player_one, player_two)
    player_one.wins_point
    player_one.wins_point

    player_two.wins_point
    player_two.wins_point
    expect(game.score).to eq("30 iguales")
  end
  it 'returns deuce both players have won 3 points' do
    player_one = Player.new
    player_two = Player.new

    game = TennisGame.new(player_one, player_two)
    player_one.wins_point
    player_one.wins_point
    player_one.wins_point

    player_two.wins_point
    player_two.wins_point
    player_two.wins_point

    expect(game.score).to eq('deuce')
  end
  it 'returns Ventaja for the player with one more point after 3 points' do

    player_one = Player.new('J1')
    player_two = Player.new('J2')

    game = TennisGame.new(player_one, player_two)
    player_one.wins_point
    player_one.wins_point
    player_one.wins_point

    player_two.wins_point
    player_two.wins_point
    player_two.wins_point

    player_one.wins_point

    expect(game.score).to eq("Ventaja #{player_one.name}")
  end 
  it "Game 'Game name' when a player" do

    player_one = Player.new('J1')
    player_two = Player.new('J2')

    game = TennisGame.new(player_one, player_two)
    player_one.wins_point
    player_one.wins_point
    player_one.wins_point
    player_one.wins_point
    player_two.wins_point

    expect(game.score).to eq("Game #{player_one.name}")
  end
  
end