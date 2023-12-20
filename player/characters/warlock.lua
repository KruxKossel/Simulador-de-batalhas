local warlock = {}

warlock.name = "Bruxo"

function warlock.description()
    print([[
       
    ]])
end

warlock.hitPointsMax = 10
warlock.hitPoints = 10
warlock.armorClass = 12

-- Jogadas de Habilidades
warlock.initiative = 1
warlock.attack = 4 -- 1d10 + 3

--- Chance de acerto
warlock.hitDc = 5  -- 1d20 + 5

return warlock