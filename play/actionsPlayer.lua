local designs = require("designs")
local player = require("player.player")
local boss = require("creatures.boss")

local actionsPlayer = {}

actionsPlayer.list = {}

---Cria uma lista de ações que é armazenada internamente.
function actionsPlayer.build()
    -- Reset list
    actionsPlayer.list = {}

    -- Atacar com espada
    local swordAttack = {
        description = "Atacar.",
        requirement = nil,
        execute = function()
            -- 1. Definir chance de sucesso
            local hitDc = math.random(1, 20)
            local successChance = (player.attribute.hitDc + hitDc) >= boss.attribute.armorClass
            local success = successChance

            -- 2. Calcular dano
            local attack = math.random(1, 12)
            local rawDamage = player.attribute.attack + attack
            local damage = math.max(1, math.ceil(rawDamage))

            if success then
                -- 3. Aplicar o dano em caso de sucesso
                boss.attribute.hitPoints = boss.attribute.hitPoints - damage
                
                -- 4. Apresentar resultado como print
                print(string.format("\n%s atacou a criatura e deu %d pontos de dano", player.attribute.name, damage))
                local healthRate = math.floor((boss.attribute.hitPoints / boss.attribute.hitPointsMax) * 10)
                print(string.format("\n%s: %s", boss.attribute.name, designs.getCombatBar(healthRate)))

            else
                print(string.format("\n%s tentou atacar, mas esqueceu a espada na mochila.", player.attribute.name))
            end
        end
    }

    -- Usar poção de regeneração
    local regenPotion = {
        description = "Tomar uma poção de regeneração.",
        requirement = function()
            return player.attribute.potions >= 1
        end,
        execute = function()
            -- Tirar poção do inventário
            player.attribute.potions =  player.attribute.potions - 1

            -- Recuperar vida
            local regenPoints = 10
            player.attribute.hitPoints = math.min(player.attribute.hitPointsMax, player.attribute.hitPoints + regenPoints)
            print(string.format("\n%s usou uma poção e recuperou alguns pontos de vida.", player.attribute.name))
        end
    }

    -- Populate list
    actionsPlayer.list[#actionsPlayer.list + 1] = swordAttack
    actionsPlayer.list[#actionsPlayer.list + 1] = regenPotion
end


---Retorna uma lista de ações válidas
---@return table
function actionsPlayer.getValidActions()
    local validActions = {}
    for _, actions in pairs(actionsPlayer.list) do
        local requirement = actions.requirement
        local isValid = requirement == nil or requirement()
        if isValid then
            validActions[#validActions+1] = actions
        end
    end
    return validActions
end

return actionsPlayer