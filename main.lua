--- comando para uso de emoji em windows
os.execute("chcp 65001")
--- limpar tela windows / clear em linux
os.execute("cls")

local designs = require("designs")
local menu = require("menu")

repeat
  os.execute("cls")

  designs.start()
  local m = io.read()

  if m == "$" then
    break
  end

  menu(m)

until false


