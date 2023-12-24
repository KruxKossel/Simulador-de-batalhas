local druid = {}

druid.name = "DRUIDA"

function druid.description()
    print([[
         ____________________________________________________________________________________________
        |
        | Invocando forças elementais ou emulando criaturas do mundo animal, os druidas são a 
        | personificação da resiliência, astúcia e fúria da natureza. Eles afirmam não ter domínio 
        | sobre a natureza. Em vez disso, eles são vistos como uma extensão da vontade indomável dele.
 
    ]])
end

druid.hitPointsMax = 11
druid.hitPoints = 11
druid.armorClass = 12

-- Jogadas de Habilidades
druid.initiative = 1
druid.attack = 3 -- 1d6 + 1d8

--- Chance de acerto
druid.hitDc = 2  -- 1d20 + 2
druid.hitDcBonus = 5  -- 1d20 + 5



return druid