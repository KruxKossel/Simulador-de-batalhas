local designs = require("designs")
local player = require("player.player")
local boss = require("creatures.boss")

local actionsBoss = {}

actionsBoss.list = {}

---Cria uma lista de ações que é armazenada internamente.
function actionsBoss.build()
    -- Reset list
    actionsBoss.list = {}

    -- Atacar com o corpo
    local bodyAttack = {
        description = "\nAtacar com o corpo.",
        requirement = nil,
        execute = function()
            -- 1. Definir chance de sucesso
            local hitDc = math.random(1, 20)
            local successChance = (boss.attribute.hitDc + hitDc) >= player.attribute.armorClass
            local success = successChance

            -- 2. Calcular dano
            local attack = math.random(1, 12)
            local rawDamage = (boss.attribute.attack + attack) - math.random() * player.attribute.armorClass
            local damage = math.max(1, math.ceil(rawDamage))

            if success then
                -- 3. Aplicar o dano em caso de sucesso
                player.attribute.hitPoints = player.attribute.hitPoints - damage
                
                -- 4. Apresentar resultado como print
                print(string.format("\n%s atacou %s e deu %d pontos de dano", boss.attribute.name, player.attribute.name, damage))
                local healthRate = math.floor((player.attribute.hitPoints / player.attribute.hitPointsMax) * 10)
                print(string.format("\n%s: %s", player.attribute.name, designs.getCombatBar(healthRate)))
            else
                print(string.format("\n%s tentou atacar, mas errou.", boss.attribute.name))
            end
        end
    }

    -- Ataque sonar
    local sonarAttack = {
        description = "\nAtaque sonar",
        requirement = nil,
        execute = function()
            -- Calcular dano
            local rawDamage = boss.attribute.attack - math.random() * player.attribute.armorClass
            local damage = math.max(1, math.ceil(rawDamage * 0.3))

            -- Aplicar o dano
            player.attribute.hitPoints = player.attribute.hitPoints - damage
            
            -- Apresentar resultado como print
            print(string.format("\n%s atacou %s e deu %d pontos de dano", boss.attribute.name, player.attribute.name, damage))
            local healthRate = math.floor((player.attribute.hitPoints / player.attribute.hitPointsMax) * 10)
            print(string.format("\n%s: %s", player.attribute.name, designs.getCombatBar(healthRate)))
        end
    }

    -- Aguardar
    local waitAction = {
        description = "\nAguardar",
        requirement = nil,
        execute = function()
            -- Apresentar resultado como print
            print(string.format("\n%s decidiu aguardar, e não fez nada nesse turno.", boss.attribute.name))
        end
    }

    -- Populate list
    actionsBoss.list[#actionsBoss.list + 1] = bodyAttack
    actionsBoss.list[#actionsBoss.list + 1] = sonarAttack
    actionsBoss.list[#actionsBoss.list + 1] = waitAction
end


---Retorna uma lista de ações válidas
---@return table
function actionsBoss.getValidActions()
    local validActions = {}
    for _, actions in pairs(actionsBoss.list) do
        local requirement = actions.requirement
        local isValid = requirement == nil or requirement()
        if isValid then
            validActions[#validActions+1] = actions
        end
    end
    return validActions
end


return actionsBoss