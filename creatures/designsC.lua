local designs = require("designs")
local espectro = require("creatures.espectro")
local gargula = require("creatures.gargula")
local harpia = require("creatures.harpia")
local osgo = require("creatures.osgo")

local designsC = {}

function designsC.espectro()
    designs.clean()

    -- pular linhas
    print([[
         
        ]])
    print("        | ".. espectro.name)
    espectro.description()

    print("           Nível de ameaça: ".. designs.getThreatBar(espectro.threatLevel).."\n\n")

    print("               Vida:         " .. designs.getProgressBar(espectro.hitPointsMax).." " .. espectro.hitPointsMax)
    print("               Ataque:       " .. designs.getProgressBar(espectro.attack))
    print("               Defesa:       " .. designs.getProgressBar(espectro.armorClassMax))
    print("               Iniciativa:   " .. designs.getProgressBar(espectro.initiative))
    print("               Hit/DC:       " .. designs.getProgressBar(espectro.hitDc))

    print("\n\nTecle ENTER para continuar:")
end

function designsC.gargula()
    designs.clean()

    print([[
         
        ]])
    print("        | ".. gargula.name)
    gargula.description()

    print("           Nível de ameaça: ".. designs.getThreatBar(gargula.threatLevel).."\n\n")

    print("               Vida:         " .. designs.getProgressBar(gargula.hitPointsMax).." " .. gargula.hitPointsMax)
    print("               Ataque:       " .. designs.getProgressBar(gargula.attack))
    print("               Defesa:       " .. designs.getProgressBar(gargula.armorClassMax))
    print("               Iniciativa:   " .. designs.getProgressBar(gargula.initiative))
    print("               Hit/DC:       " .. designs.getProgressBar(gargula.hitDc))

    print("\n\nTecle ENTER para continuar:")
end

function designsC.harpia()
    designs.clean()

    print([[
         
        ]])
    print("        | ".. harpia.name)
    harpia.description()

    print("           Nível de ameaça: ".. designs.getThreatBar(harpia.threatLevel).."\n\n")

    print("               Vida:         " .. designs.getProgressBar(harpia.hitPointsMax).." " .. harpia.hitPointsMax)
    print("               Ataque:       " .. designs.getProgressBar(harpia.attack))
    print("               Defesa:       " .. designs.getProgressBar(harpia.armorClassMax))
    print("               Iniciativa:   " .. designs.getProgressBar(harpia.initiative))
    print("               Hit/DC:       " .. designs.getProgressBar(harpia.hitDc))

    print("\n\nTecle ENTER para continuar:")
end

function designsC.osgo()
    designs.clean()

    print([[
         
        ]])
    print("        | ".. osgo.name)
    osgo.description()

    print("           Nível de ameaça: ".. designs.getThreatBar(osgo.threatLevel).."\n\n")

    print("               Vida:         " .. designs.getProgressBar(osgo.hitPointsMax).." " .. osgo.hitPointsMax)
    print("               Ataque:       " .. designs.getProgressBar(osgo.attack))
    print("               Defesa:       " .. designs.getProgressBar(osgo.armorClassMax))
    print("               Iniciativa:   " .. designs.getProgressBar(osgo.initiative))
    print("               Hit/DC:       " .. designs.getProgressBar(osgo.hitDc))

    print("\n\nTecle ENTER para continuar:")
end




return designsC