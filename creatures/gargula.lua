local gargula = {}

gargula.name = "GÁRGULA"

function gargula.description()
    print([[
         ____________________________________________________________________________________________
        |
        | Aberrações rochosas aladas, famosas tanto por sua aparência monstruosa quanto por sua
        | maldade. É comum encontrá-los a serviço das forças do mal, pois graças ao seu mimetismo
        | natural e garras brutais são grandes guardiões.

    ]])
end

gargula.hitPointsMax = 52
gargula.hitPoints = 52
gargula.armorClass = 15
gargula.armorClassMax = 15

gargula.initiative = 2
gargula.attack = 5 -- 1d6 + 2

--- Chance de acerto
gargula.hitDc = 4 -- 1d20 + 4

gargula.threatLevel = 0.50 -- de 0 a 1.25, porcentagem

return gargula