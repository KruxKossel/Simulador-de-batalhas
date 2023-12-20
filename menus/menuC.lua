local designsC = require("creatures.designsC")

local menuC = {
    ["1"]= function ()
        print("Redireciona ao Espectro")
      local n = io.read("*l")
    end,
    ["2"] = function ()
      print("Redireciona ao Gárgula")
      local n = io.read("*l")
    end,
    ["3"] = function ()
      print("Redireciona ao Hapia")
      local n = io.read("*l")
  end,
    ["4"] = function ()
      print("Redireciona ao Osgo")
      local n = io.read("*l")
  end,
    default = function ()
        print("Opção inválida!")
      local n = io.read("*l")
    end
}


return function (value)
    local case = menuC[value] or menuC.default
    case()
end