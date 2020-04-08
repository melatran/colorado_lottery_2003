class ColoradoLottery
  attr_reader :registered_contestants, :winners, :current_contestants

  def initialize
    @registered_contestants= {}
    @winners = []
    @current_contestants = {}
  end

  def interested_and_18?(contestant, game)
    if contestant.game_interests.include?(game.name) && contestant.age > 18
      true
    else
      false
    end
  end

  def can_register?(contestant, game)
    if interested_and_18?(contestant, game) == true || contestant.out_of_state? == false
      true
    else
      false
    end
  end

  def register_contestant(contestant, game)
    @registered_contestants[game.name] = contestant
  end

  def eligible_contestants(pick_4)
end
