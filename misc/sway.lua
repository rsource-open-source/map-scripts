--[[
Authors:
    insyri; roblox: 145291526, github: insyri
    veryunhappydoge; roblox: 1455906620, github: dowoge
    
    note: this will not work at all if targetDir is not set correctly, please verify that the directory path is valid
]]

local curCam = game.Workspace.CurrentCamera -- player's camera instance

local targetDir = game.Workspace.swayDirectory -- this is the group, folder, or directory of all the parts this will affect; do the sway
-- change this value to where it actually is

local distance = 50 -- max distance for visual effects to happen (in studs)

-- this is the part names for what you want these to affect specifically
local names = {
  'bigTree',
  'medTree',
  'smallTree',
  'plant',
}
-- the amplitude of the movement (smaller = moves more, bigger = moves less)
local amps = {
  bigTree = { 25, 50 },
  medTree = { 15, 30 },
  smallTree = { 12.5, 25 },
  plant = { 5, 10 },
}
-- main sway function
function SwayPart(part)
  if table.find(names, part.Name) then
    local PartCF = part.CFrame
    local pos = PartCF.p
    local tall = part.Size.Y
    game:GetService('RunService').Stepped:connect(function()
      local _, isOnScreen = curCam:WorldToViewportPoint(part.Position)
      if ((curCam.CFrame.p - part.Position).Magnitude <= distance) and isOnScreen then
        local T = tick()
        local x = (math.sin(T + (pos.x / amps[part.Name][1])) * math.sin(T / amps[part.Name][2])) / amps[part.Name][1]
        local z = (math.sin(T + (pos.z / amps[part.Name][1])) * math.sin(T / amps[part.Name][2])) / amps[part.Name][1]
        part.CFrame = (PartCF + Vector3.new(x, 0, z)) * CFrame.Angles(z / tall, 0, x / -tall)
      end
    end)
  end
end

-- operate
for _, v in pairs(targetDir:GetChildren()) do
  if v:IsA('BasePart') then
    SwayPart(v)
  end
end
