class Hunter
  attr_accessor :skill, :health, :tools, :equipped, :prey, :position

  def initialize(skill)
    @position = {x: 0, y: 0}
    @health = 100
    @skill = skill
    @tools = []
  end

  def pickup(tool)
    tool.hunter = self
    @tools << tool
    @equipped = @tools.last
    puts "Now using a #{@equipped.name}, with a range of #{@equipped.range}"
  end

  def hunt
    if distance_from_prey < @equipped.range
      until @prey.health < 1
        attack
      end
    else
      track
    end
  end

  def track
    if @prey.health > 0
      @position[:x] = rand(100)
      @position[:y] = rand(100)
      puts "Jumped to #{@position[:x]}, #{@position[:y]}"
      hunt
    else
      puts "A dinner of #{@prey.name} has been acquired!"
    end
  end

private
  def attack
    equipped.use_on @prey
  end

  def distance_from_prey
    distance = Math.hypot(@prey.position[:x] - @position[:x], @prey.position[:y] - @position[:y]).to_i
    puts "Currently #{distance} away from #{@prey.name}..."
    distance
  end
end
