class Game
  attr_reader :player_1
  attr_reader :player_2
  attr_reader :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = @player_1
  end

  def attack
    opponent.receive_damage
  end

  def switch_turns
    @current_turn = opponent
  end

  private

  def opponent
    @current_turn == @player_1 ? @player_2 : @player_1
  end
end
