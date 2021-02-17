class Player
attr_reader :name, :hp
DEFAULT_HP = 100
ATTACK = rand(1..15)
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attacked(damage = ATTACK)
    @damage = damage
    @hp = @hp - @damage
  end
end
