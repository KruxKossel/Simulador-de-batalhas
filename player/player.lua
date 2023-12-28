local designs = require("designs")
local barbarian = require("player.class.barbarian")
local druid = require("player.class.druid")
local warlock = require("player.class.warlock")


local player = {}


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

--- tabela que recebe o valor de uma das classes
player.attribute = {}


return player