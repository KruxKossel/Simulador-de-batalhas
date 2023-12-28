local warlock = {}

warlock.name = "FEITICEIRO"

function warlock.description()
    print([[
         ____________________________________________________________________________________________
        |
        | Os feiticeiros são buscadores do conhecimento que está escondido no multiverso. Através 
        | de pactos feitos com seres poderosos de poder sobrenatural, os feiticeiros desencadeiam 
        | efeitos mágicos sutis e espetaculares e coletam segredos arcanos para aumentar seu 
        | próprio poder.

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

warlock.potions = 4

return warlock