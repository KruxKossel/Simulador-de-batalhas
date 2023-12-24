local designs = require("designs")
local barbarian = require("player.class.barbarian")
local druid = require("player.class.druid")
local warlock = require("player.class.warlock")


local player = {}

function player.attribute(class)

    local attribute = {}

    attribute.hitPointsMax = class.hitPointsMax
    attribute.hitPoints = class.hitPoints
    attribute.armorClass = class.armorClass

-- Jogadas de Habilidades
   attribute.initiative = class.initiative
   attribute.attack = class.attack -- 1d12 + 3

--- Chance de acerto
   attribute.hitDc = class.hitDc  -- 1d20 + 5

return attribute
    
end

function player.class(class)

    if class == "1" then
        return  barbarian
    end

    if class == "2" then
        return druid
    end

    if class == "3" then
        return warlock
    end


    
end


return player