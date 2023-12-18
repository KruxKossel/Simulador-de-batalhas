local designs = require("designs")

local menu = {
    ["1"]= function ()
        print("Redireciona ao combate")
      local n = io.read("*l")
    end,
    ["2"] = function ()
        designs.menuPp(2)
    end,
    ["3"] = function ()
      designs.menuCc(3)
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