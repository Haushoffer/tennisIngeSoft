class Player
  attr_reader :points, :name

  def initialize(name='')
    @name = name
    @points = 0
  end  

  def wins_point
    @points += 1
  end

  def score
    if @points == 0
      '0'
    elsif @points == 1
      '15'
    elsif @points == 2
      '30'
    elsif @points == 3
      '40'
    end
  end
end

class TennisGame  
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two  
  end

  def wins_point(player)
    @player_one.wins_point
  end

  def player_one_score
    @player_one.score
  end

  def player_two_score
    @player_two.score
  end
  
  def score
    if @player_one.points <3 and @player_two.points<3 and (@player_one.points != @player_two.points)
       return  "#{@player_one.score} #{@player_two.score}"
    end
    if @player_one.points == @player_two.points and @player_one.points<3 and @player_two.points<3
        return "#{@player_one.score} iguales"
    end
  
    if @player_one.points == 3 and @player_two.points == 3
       return 'deuce'
    elsif (@player_one.points == @player_two.points + 1) and (@player_two.points >=3)
        return "Ventaja #{@player_one.name}"
    elsif (@player_one.points >= 4) and (@player_one.points >= (@player_two.points + 2))
       return "Game #{@player_one.name}"
    end
  end
end