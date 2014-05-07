class Animal
  attr_accessor :name, :health, :position

  def initialize(name, health)
    @name = name
    @position = {x: 0, y: 0}
    @health = health
  end

end
