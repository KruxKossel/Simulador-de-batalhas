local designs = require("designs")
local espectro = require("creatures.espectro")
local gargula = require("creatures.gargula")
local harpia = require("creatures.harpia")
local osgo = require("creatures.osgo")

local boss = {}


function boss.ramdom()
    local creatures = {espectro, gargula, harpia, osgo}

    math.randomseed(os.time())
    return creatures[math.random(#creatures)]
end


--- tabela que recebe o valor de uma das criaturas
boss.attribute = {}

--table.insert(boss.attribute, boss.choice)



return boss