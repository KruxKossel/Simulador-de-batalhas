local designsC = require("creatures.designsC")

local menuC = {
    ["1"]= function ()
      designsC.espectro()
      local n = io.read("*l")
    end,
    ["2"] = function ()
      designsC.gargula()
      local n = io.read("*l")
    end,
    ["3"] = function ()
      designsC.harpia()
      local n = io.read("*l")
  end,
    ["4"] = function ()
      designsC.osgo()
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