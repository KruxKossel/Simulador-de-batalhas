local barbarian = {}

barbarian.name = "Bárbaro"

function barbarian.description()
    print([[
       
    ]])
end

barbarian.hitPointsMax = 14
barbarian.hitPoints = 14
barbarian.armorClass = 14

-- Jogadas de Habilidades
barbarian.initiative = 2
barbarian.attack = 4 -- 1d12 + 3

--- Chance de acerto
barbarian.hitDc = 5  -- 1d20 + 5


return barbarian