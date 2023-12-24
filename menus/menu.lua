local designs = require("designs")
local menuC = require("menus.menuC")
local menuP = require("menus.menuP")
local player = require("player.player")
local barbarian = require("player.class.barbarian")
local druid = require("player.class.druid")
local warlock = require("player.class.warlock")

--- menu de seleção da primeira tela
local menu = {
    ["1"]= function ()
        print("Redireciona ao combate")
      local n = io.read("*l")

      repeat

        designs.play()
        local m = io.read()

        if m == "$" then
          break
        end
        
        player.attribute(player.class(m))
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