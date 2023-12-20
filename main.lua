

-- dependências
local designs = require("designs")
local menu = require("menus.menu")
local combat = require("combat")


designs.enableUtf8()
designs.clean()

local boss = "creature"


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


