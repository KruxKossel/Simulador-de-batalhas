

-- dependências
local designs = require("designs")
local menu = require("menus.menu")
local combat = require("play.combat")
local attribute = require("player.player")

designs.enableUtf8()
designs.clean()


-- inicialização do programa
repeat
  designs.clean()

  designs.start()
  io.write("> ")
  local m = io.read()

  if m == "$" then
    break
  end

  menu(m)

  print("cabo?")

until false

designs.clean()


