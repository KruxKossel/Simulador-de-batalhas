local designs = {}

--- comando para uso de emoji em windows
function designs.enableUtf8()
   os.execute("chcp 65001")
end

--- limpar tela windows / clear em linux
function designs.clean ()
   os.execute("cls")
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

--- Desenho do menu de seleção de personagens (personagens listados)
function designs.menuPp(menu)
   designs.clean()

   print([[

   |\                     /)
 /\_\\__               (_//
|   `>\-`     _._       //`)
 \ /` \\  _.-`:::`-._  //
  `    \|`    :::    `|/
        |     :::     |
        |.....:::.....|                       Bárbaro
        |:::::::::::::|                       Druida
        |     :::     |                       Bruxo             
        \     :::     /
         \    :::    /
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
function designs.menuCc(menu)
   designs.clean()

   print([[

         ______________                               
   ,===:'.,            `-._                           
           `:.`---.__         `-._                      
              `:.     `--.         `.                 
                \.        `.         `.                
        (,,(,    \.         `.   ____,-`.,             Espectro 
     (,'     `/   \.   ,--.___`.'                      Gárgula       
 ,  ,'  ,--.  `,   \.;'         `                      Harpia      
  `{D, {    \  :    \;                                 Osgo       
    \,,'    /  /    //                                    
    |;;    /  ,' ,-//.    ,---.      ,                    
    \;'   /  ,' /  _  \  /  _  \   ,'/                    
          \   `'  / \  `'  / \  `.' /                     
           `.___,'   `.__,'   `.__,' 

   
           Escolha uma criatura:
   ]])

   --local n = io.read("*l")
end

return designs