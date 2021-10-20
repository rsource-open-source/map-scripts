local   bar   =   false
local  baz      = 0

x       +=    1 
  x   -=   7

local Object = {ClassName = "Object"}
Object.__tostring = function(self) return self.ClassName end

Object.__tostring = function(self): string
    return self.ClassName
end
