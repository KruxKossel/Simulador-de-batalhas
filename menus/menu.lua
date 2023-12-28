local designs = require("designs")
local menuC = require("menus.menuC")
local menuP = require("menus.menuP")
local player = require("player.player")
local combat = require("combat")


--- menu de seleção da primeira tela
local menu = {
    ["1"]= function ()
        print("Redireciona ao combate")
        designs.enter()
        designs.clean()

      repeat

        designs.play()
        local m = io.read()

        if m == "$" then
          break
        end
        
        if m == "1" or m == "2" or m == "3" then
          player.choice = player.class(m)

          for key, valor in pairs(player.choice) do
            player.attribute[key] = valor
        end

          combat.play()
          
        else
          print("Opção inválida!")
          designs.enter()
          designs.clean()
        end


      until false
    end,
    ["2"] = function ()
      repeat

        designs.menuPp()
        local m = io.read()

        if m == "$" then
          break
        end
        
        menuP(m)
      until false
    end,
    ["3"] = function ()
      repeat
        
        designs.menuCc()
        local m = io.read()

        if m == "$" then
          break
        end
        
        menuC(m)
      until false

  end,
    default = function ()
        print("Opção inválida!")
      local n = io.read("*l")
    end
}


return function (value)
    local case = menu[value] or menu.default
    case()
end