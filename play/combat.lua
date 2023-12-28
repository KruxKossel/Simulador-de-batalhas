local designs = require("designs")
local player = require("player.player")
local boss = require("creatures.boss")

local actionsBoss = require("play.actionsBoss")
local actionsPlayer = require("play.actionsPlayer")

local combat = {}

function combat.play()

    designs.clean()

    boss.choice =  boss.ramdom()
    for key, valor in pairs(boss.choice) do
        boss.attribute[key] = valor
    end

    print(string.format("\n             %s lutará contra %s.\n", player.attribute.name, boss.attribute.name))
    designs.sword()

    print("\n\nTecle ENTER: ")
    io.write("> ")
    designs.enter()

    -- retirada do repeat de combate

    actionsPlayer.build()
    actionsBoss.build()


    repeat
        designs.clean()

        -- Mostrar ações para o jogador
    print()
    print(string.format("\nQual será a próxima ação de %s?\n", player.attribute.name))
    local validPlayerActions = actionsPlayer.getValidActions()
    for i, actions in pairs(validPlayerActions) do
        print(string.format("%d. %s", i, actions.description))
    end
    local chosenIndex = designs.ask()
    local chosenAction = validPlayerActions[chosenIndex]
    local isActionValid = chosenAction ~= nil

    -- Simular o turno do jogador
    if isActionValid then
        print("\nSeu turno: \n")
        chosenAction.execute()
    else
        print(string.format("\nSua escolha é inválida. %s perdeu a vez.\n", player.attribute.name))
    end

    -- Ponto de saída: Criatura ficou sem vida
    if boss.attribute.hitPoints <= 0 then
        break
    end

    print("\n\nTurno da criatura: ")
    designs.enter()

    -- Simular turno da criatura
    print()
    local validBossActions = actionsBoss.getValidActions()
    local bossAction = validBossActions[math.random(#validBossActions)]
    bossAction.execute()

    -- Ponto de saída: Jogador ficou sem vida
    if player.attribute.hitPoints <= 0 then
        break
    end

    print("\n\nTecle ENTER: ")
    io.write("> ")
    designs.enter()
        
    until false

    -- Processar condições de vitória e derrota
    if player.attribute.hitPoints <= 0 then
      print()
      print("---------------------------------------------------------------------")
      print()
      print("😭")
      print(string.format("\n%s não foi capaz de vencer %s.\n", player.attribute.name, boss.attribute.name))
      print("\nQuem sabe na próxima vez...\n")
      print()
    elseif boss.attribute.hitPoints <= 0 then
      print()
      print("---------------------------------------------------------------------")
      print()
      print("🥳")
      print(string.format("\n%s prevaleceu e venceu %s.\n", player.attribute.name, boss.attribute.name))
      print("\nParabéns!!!\n")
      print()
    end


    print("\n\nTecle ENTER: ")
    io.write("> ")
    designs.enter()
    designs.enter()

    -- fim

end

return combat