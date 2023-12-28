

-- dependências
local designs = require("designs")
local menu = require("menus.menu")
local combat = require("combat")
local attribute = require("player.player")

designs.enableUtf8()
designs.clean()


-- inicialização do programa
repeat
  designs.clean()

  designs.start()
  local m = io.read()

  if m == "$" then
    break
  end

  menu(m)

until false

designs.clean()


