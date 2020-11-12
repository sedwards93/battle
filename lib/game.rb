class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = 0
  end

  def damage
    receiving_player.hp -= 10
    switch_turn
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attacking_player #player giving damage
    return player_1 if @turn == 0
    return player_2
  end

  def receiving_player #player receiving damage
    return player_2 if @turn == 0
    return player_1
  end

  private 


  def switch_turn
    @turn = (@turn + 1) % 2
  end

end