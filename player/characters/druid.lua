local druid = {}

druid.name = "Druida"

function druid.description()
    print([[
       
    ]])
end

druid.hitPointsMax = 11
druid.hitPoints = 11
druid.armorClass = 12

-- Jogadas de Habilidades
druid.initiative = 1
druid.attack = 3 -- 1d6 + 1d8

--- Chance de acerto
druid.hitDc = 2  -- 1d20 + 2
druid.hitDcBonus = 5  -- 1d20 + 5



return druid