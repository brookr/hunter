require_relative "lib/hunter"
require_relative "lib/hunter/tool"
require_relative "lib/animal"

spear    = Hunter::Tool.new("Spear", 2, 5, 20)
hunter   = Hunter.new(5)
squirrel = Animal.new("Squirrel", 75)
squirrel.position = {x: 60, y: 90}

hunter.pickup spear

hunter.prey = squirrel

hunter.hunt
