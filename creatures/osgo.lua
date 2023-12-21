local osgo = {}

osgo.name = "OSGO"

function osgo.description()
    print([[
         ____________________________________________________________________________________________
        
        | Um grande duende que escraviza seus primos mais novos em virtude de seu poderio físico.
        | O osgo é facilmente reconhecível por seu focinho e orelhas de urso, bem como seus hábitos
        | antropófagos.

    ]])
end

osgo.hitPointsMax = 27
osgo.hitPoints = 27
osgo.armorClass = 16
osgo.armorClassMax = 16

osgo.initiative = 1
osgo.attack = 5 -- 1d6 + 2

--- Chance de acerto
osgo.hitDc = 4 -- 1d20 + 4

osgo.threatLevel = 0.25 -- de 0 a 1.25, porcentagem

return  osgo