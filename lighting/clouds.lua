--[[
    Clouds: https://developer.roblox.com/en-us/articles/dynamic-clouds
    Clouds Class: https://developer.roblox.com/en-us/api-reference/class/Clouds 
]]

local Clouds = Instance.new('Clouds')

-- Example
Clouds.Parent = game.Workspace.Terrain
Clouds.Color = Color3.fromRGB(255, 255, 255)
Clouds.Cover = .625
Clouds.Density = 1