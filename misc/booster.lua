-- Vertical booster script (set "height" to how high the player should jump after
-- jumping on this), then put the script inside the part you want to turn into a booster

local gravity = 100 --bhop: 100, surf: 50
local height = 20 --height in studs

script.Parent.Velocity = Vector3.new(0, math.sqrt(2 * gravity * height), 0)
