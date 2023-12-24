local espectro = {}

espectro.name = "ESPECTRO"

function espectro.description()
    print([[
         ____________________________________________________________________________________________
        |
        | A figura de um humanoide furioso flutua no campo, drenando a vida das flores e vermes
        | que se aproximam dele em seu rastro. Mais do que piedade e compaixão, esta aparição
        | provoca repulsa pelo mal óbvio que exala.

    ]])
end

espectro.hitPointsMax = 22
espectro.hitPoints = 22
espectro.armorClass = 12
espectro.armorClassMax = 12

espectro.initiative = 0
espectro.attack = 10 -- 3d6 + 1

--- Chance de acerto
espectro.hitDc = 2 -- 1d20 + 2

espectro.threatLevel = 0.25 -- de 0 a 1.25, porcentagem

return espectro