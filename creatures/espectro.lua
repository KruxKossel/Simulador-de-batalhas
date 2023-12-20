local espectro = {}

espectro.name = "Espectro"

function espectro.description()
    print([[
        A figura de um humanoide furioso flutua no campo, drenando a vida das flores e vermes
        que se aproximam dele em seu rastro. Mais do que piedade e compaixão, esta aparição
        provoca repulsa pelo mal óbvio que exala.
    ]])
end

espectro.hitPointsMax = 22
espectro.hitPoints = 22
espectro.armorClass = 12

espectro.initiative = 0
espectro.attack = 10 -- 3d6 + 1

--- Chance de acerto
espectro.hitDc = 4 -- 1d20 + 4

return espectro