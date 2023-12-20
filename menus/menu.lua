local designs = require("designs")
local menuC = require("menus.menuC")
local menuP = require("menus.menuP")

--- menu de seleção da primeira tela
local menu = {
    ["1"]= function ()
        print("Redireciona ao combate")
      local n = io.read("*l")
    end,
    ["2"] = function ()
      repeat

        designs.menuPp(2)
        local m = io.read()

        if m == "$" then
          break
        end
        
        menuP(m)
      until false
    end,
    ["3"] = function ()
      repeat
        
        designs.menuCc(3)
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