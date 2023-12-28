local designs = require("designs")
local player = require("player.player")
local boss = require("creatures.boss")

local combat = {}

function combat.play()

    designs.clean()

    boss.choice =  boss.ramdom()
    for key, valor in pairs(boss.choice) do
        boss.attribute[key] = valor
    end

    --boss.attribute(boss.choice)

    print(boss.attribute.name)
    print(player.attribute.name.."\n\n")

    print("boss life: ", boss.attribute.hitPoints)
    print("player life: ", player.attribute.hitPoints)


    designs.enter()

    -- retirada do repeat de combate

end

return combat