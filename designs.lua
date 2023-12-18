local designsP = require("characters.designsP")
local designsC = require("creatures.designsC")


local designs = {}

-- Desenho tela de inicío
function designs.start()
print([[

         _
        (_)
        |=|                    
        |=|                      __                                                                                     
    /|__|_|__|\                 (_   o  ._ _        |   _.   _|   _   ._     _|   _     |_    _.  _|_   _.  |  |_    _. 
   (    ( )    )                __)  |  | | |  |_|  |  (_|  (_|  (_)  |     (_|  (/_    |_)  (_|   |_  (_|  |  | |  (_| 
    \|\/\"/\/|/
      |  Y  |
      |  |  |
      |  |  |                                   
     _|  |  |                                                         PLAY
  __/ |  |  |\                                                     PERSONAGENS
 /  \ |  |  |  \                                                    CRIATURAS
    __|  |  |   |
 /\/  |  |  |   |\
  <   +\ |  |\ />  \
   >   + \  | \\    |
         + \|+  \  < \
   (O)      +    |    )           ENCERRAR JOGO
    |             \  /\ 
  ( | )   (o)      \/  )_____________________________________________________________________________________________________________
 _\\|//__( | )______)_/__________________________________________________________________________________________________________________
 ________\\|//_______________________________________________________________________________________________________________________________
   
]])


--local n = io.read("*l")

end

-- pensar em transformar as duas abaixo em apenas uma função com recebimento de parametro, e utilizar if

--- Desenho do menu de seleção de personagens (personagens listados)
function designs.menuPp(menu)
   os.execute("cls")

   print([[

    nome dos pp
   
   ]])

   --- recebe enter como entrada
   local n = io.read("*l")
end

function designs.menuCc(menu)
   os.execute("cls")

   print([[

    nome das cc
   
   ]])

   local n = io.read("*l")
end

return designs