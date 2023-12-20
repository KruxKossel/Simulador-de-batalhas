local harpia = {}

harpia.name = "Harpia"

function harpia.description()
    print([[
        Harpias são monstruosidades que misturam os atributos de uma mulher com os de um
        pássaro carniça. Eles são capazes de voar com suas asas emplumadas e cantar tão
        sublimemente que atraem todos os que os ouvem como cordeiros para a matança. Harpias
        empunham tacos toscos, às vezes feitos com os ossos monstruosos de suas vítimas.
    ]])
end

harpia.hitPointsMax = 38
harpia.hitPoints = 38
harpia.armorClass = 11

harpia.initiative = 1
harpia.attack = 6 -- 2d4 + 1

--- Chance de acerto
harpia.hitDc = 3 -- 1d20 + 3

return harpia