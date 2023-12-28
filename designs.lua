local designs = {}

--- comando para uso de emoji em windows
function designs.enableUtf8()
   os.execute("chcp 65001")
end

--- limpar tela windows / clear em linux
function designs.clean ()
   os.execute("cls")
end

--- comando para entrada de enter
function designs.enter()
  local n = io.read("*l")
end

---Pergunta ao usuário por um número, que é retornado pela função.
---@return any
function designs.ask()
  io.write("> ")
  local answer = io.read("*n")
  return answer
end

--- Desenho tela de inicío
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
     _|  |  |                                                         1 - PLAY
  __/ |  |  |\                                                       2 - CLASSES
 /  \ |  |  |  \                                                    3 - CRIATURAS
    __|  |  |   |
 /\/  |  |  |   |\
  <   +\ |  |\ />  \
   >   + \  | \\    |
         + \|+  \  < \
   (O)      +    |    )           $ - ENCERRAR JOGO
    |             \  /\ 
  ( | )   (o)      \/  )_____________________________________________________________________________________________________________
 _\\|//__( | )______)_/__________________________________________________________________________________________________________________
 ________\\|//_______________________________________________________________________________________________________________________________
   
]])


--local n = io.read("*l")

end

function designs.play()

  print([[
                      Com qual classe deseja jogar?
  ____       ____
  /    )     (    \ 
 /    (  ^_^  )    \         1 - Bárbaro
|  {   \('v')/   }  |        2 - Druida
|   {   /   \   }   |        3 - Feiticeiro 
|_)(   /\   /\   )(_|
|)  (_ | \|/  |_)  (|
'     "--^^^^--"    '        $ - Voltar
  
  ]])
  
end

--- Desenho do menu de seleção de personagens (personagens listados)
function designs.menuPp()
   designs.clean()

   print([[

   |\                     /)
 /\_\\__               (_//
|   `>\-`     _._       //`)
 \ /` \\  _.-`:::`-._  //
  `    \|`    :::    `|/
        |     :::     |
        |.....:::.....|                       1 - Bárbaro
        |:::::::::::::|                       2 - Druida
        |     :::     |                       3 - Feiticeiro            
        \     :::     /
         \    :::    /                        $ - Voltar
          `-. ::: .-'
           //`:::`\\
          //   '   \\
         //         \\       
         

                           Escolha uma Classe:
   ]])

   --- recebe enter como entrada
   -- local n = io.read("*l")
end

--- Desenho do menu de seleção de criaturas (criaturas  listadas)
function designs.menuCc()
   designs.clean()

   print([[

         ______________                               
   ,===:'.,            `-._                           
           `:.`---.__         `-._                      
              `:.     `--.         `.                 
                \.        `.         `.                
        (,,(,    \.         `.   ____,-`.,             1 - Espectro 
     (,'     `/   \.   ,--.___`.'                      2 - Gárgula       
 ,  ,'  ,--.  `,   \.;'         `                      3 - Harpia      
  `{D, {    \  :    \;                                 4 - Osgo       
    \,,'    /  /    //                                    
    |;;    /  ,' ,-//.    ,---.      ,                 $ - Voltar  
    \;'   /  ,' /  _  \  /  _  \   ,'/                    
          \   `'  / \  `'  / \  `.' /                     
           `.___,'   `.__,'   `.__,' 

   
                                      Escolha uma criatura:
   ]])

   --local n = io.read("*l")
end

function designs.sword()
  print([[
    
          O                                     O
    {o)xxx|===============-  *  -===============|xxx(o}
          O                                     O
  
  ]])
end

--- Função que retorna lvl de ameaça ao receber atributo
function designs.getThreatBar(attribute)

   local fullChar = "❗"
   local emptyChar = "❕"
 
   local result = ""
 
   for i = 0, 1, 0.25 do
     if i < attribute then
       result = result .. fullChar
     else
       result = result .. emptyChar
     end
   end
   return result
end

--- Função para retornar barra de progresso ao receber atributo
function designs.getProgressBar(attribute)
   local fullChar = "🔳"
   local emptyChar = "⬜"
 
   local result = ""
   for i = 1, 20, 1 do
     if i <= attribute then
       result = result .. fullChar
     else
       result = result .. emptyChar
     end
   end
   return result
end

function designs.getCombatBar(attribute)
  local fullChar = " ❤️"
  local emptyChar = "🖤"

  local result = ""
  for i = 1, 10, 1 do
    if i <= attribute then
      result = result .. fullChar
    else
      result = result .. emptyChar
    end
  end
  return result
end

return designs