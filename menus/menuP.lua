local designsP = require("player.characters.designsP")

local menuP = {
    ["1"]= function ()
        print("Redireciona ao Bárbaro")
      local n = io.read("*l")
    end,
    ["2"] = function ()
      print("Redireciona ao Druida")
      local n = io.read("*l")
    end,
    ["3"] = function ()
      print("Redireciona ao Bruxa")
      local n = io.read("*l")
  end,
    default = function ()
        print("Opção inválida!")
      local n = io.read("*l")
    end
}


return function (value)
    local case = menuP[value] or menuP.default
    case()
end