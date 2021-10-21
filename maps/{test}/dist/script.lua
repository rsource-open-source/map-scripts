-- Compiled with roblox-ts v1.2.6
local TS = _G[script]
local CollectionService = TS.import(script, TS.getModule(script, '@rbxts', 'services')).CollectionService
for _, obj in ipairs(CollectionService:GetTagged('Lava')) do
  if obj:IsA('BasePart') then
    obj.Touched:Connect(function(part)
      local _result = part.Parent
      if _result ~= nil then
        _result = _result:FindFirstChildOfClass('Humanoid')
        if _result ~= nil then
          _result = _result:TakeDamage(100)
        end
      end
      return _result
    end)
  end
end
return nil
