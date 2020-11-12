class Player
  attr_reader :name
  attr_accessor :hp
  FULL_HEALTH = 60


  def initialize(name)
    @name = name
    @hp = FULL_HEALTH
  end

  def attack(name)
    name.hp -= 10
  end


  
end