local designs = require("designs")
local barbarian = require("player.class.barbarian")
local druid = require("player.class.druid")
local warlock = require("player.class.warlock")

--- 
local designsP = {}

function designsP.barbarian()
    designs.clean()

    -- pular linhas
    print([[
         
        ]])
    print("        | ".. barbarian.name)
    barbarian.description()

    print("\n\n               Vida:         " .. designs.getProgressBar(barbarian.hitPointsMax).." " .. barbarian.hitPointsMax)
    print("               Ataque:       " .. designs.getProgressBar(barbarian.attack))
    print("               Defesa:       " .. designs.getProgressBar(barbarian.armorClass).."                               |")
    print("               Iniciativa:   " .. designs.getProgressBar(barbarian.initiative).."                               |")
    print("               Hit/DC:       " .. designs.getProgressBar(barbarian.hitDc).."                               |")

    print([[
        ____________________________________________________________________________________________|
    ]])

    print("\n\nTecle ENTER para continuar:")
end

function designsP.druid()
    designs.clean()

    print([[
         
        ]])
    print("        | ".. druid.name)
    druid.description()

    print("\n\n               Vida:         " .. designs.getProgressBar(druid.hitPointsMax).." " .. druid.hitPointsMax)
    print("               Ataque:       " .. designs.getProgressBar(druid.attack))
    print("               Defesa:       " .. designs.getProgressBar(druid.armorClass).."                               |")
    print("               Iniciativa:   " .. designs.getProgressBar(druid.initiative).."                               |")
    print("               Hit/DC:       " .. designs.getProgressBar(druid.hitDc).."                               |")

    print([[
        ____________________________________________________________________________________________|
    ]])

    print("\n\nTecle ENTER para continuar:")
end

function designsP.warlock()
    designs.clean()

    print([[
         
        ]])
    print("        | ".. warlock.name)
    warlock.description()

    print("\n\n               Vida:         " .. designs.getProgressBar(warlock.hitPointsMax).." " .. warlock.hitPointsMax)
    print("               Ataque:       " .. designs.getProgressBar(warlock.attack))
    print("               Defesa:       " .. designs.getProgressBar(warlock.armorClass).."                               |")
    print("               Iniciativa:   " .. designs.getProgressBar(warlock.initiative).."                               |")
    print("               Hit/DC:       " .. designs.getProgressBar(warlock.hitDc).."                               |")

    print([[
        ____________________________________________________________________________________________|
    ]])

    print("\n\nTecle ENTER para continuar:")
end

return designsP