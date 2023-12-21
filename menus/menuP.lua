local designsP = require("player.characters.designsP")

local menuP = {
    ["1"]= function ()
      designsP.barbarian()
      local n = io.read("*l")
    end,
    ["2"] = function ()
      designsP.druid()
      local n = io.read("*l")
    end,
    ["3"] = function ()
      designsP.warlock()
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