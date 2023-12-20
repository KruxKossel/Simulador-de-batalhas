local combat = {}

function combat.play(boss, player)
    repeat
        -- ações jogador

        -- simular o turno do jogador

        if boss.health <= 0 then
            break
        end

        -- simular turno da criatura

        if player.health <= 0 then
            break
        end
    until false
end

return combat