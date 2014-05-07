class Hunter
  class Tool
    attr_accessor :name, :damage, :weight, :condition, :range, :hunter

    def initialize(name, damage, weight, range)
      @condition = 100
      @name      = name
      @damage    = damage
      @weight    = weight
      @range     = range
    end

    def use_on(animal)
      animal.health -= rand(hunter.skill) * @damage - (100 - @condition)
      puts "Struck #{animal.name} with a #{@name}, leaving it with #{animal.health} health"
    end

  end
end
