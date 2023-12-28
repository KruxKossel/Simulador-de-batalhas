local barbarian = {}

barbarian.name = "BÁRBARO"

function barbarian.description()
    print([[
         ____________________________________________________________________________________________
        |
        | Para alguns, sua raiva brota da comunhão com espíritos de animais selvagens. Outros 
        | recorrem ao seu reservatório fervilhante de raiva. Para os bárbaros, a fúria é um poder 
        | que lhes proporciona não apenas frenesi cego em batalha, mas também reflexos 
        | extraordinários, resistência e feitos de força.
       
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

barbarian.potions = 2


return barbarian