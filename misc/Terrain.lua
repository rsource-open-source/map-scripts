local Terrain=workspace.Terrain

--Terrain settings
Terrain.WaterColor=Color3.new(0,0,0)
Terrain.WaterWaveSize=0.05
Terrain.WaterWaveSpeed=5
Terrain.WaterTransparency=0.6
Terrain.WaterReflectance=1

--Why does the FillCylinder input CFrame not match up with Cylinder part CFrames...
local CylinderFixCFrame=CFrame.new(0,0,0, 0,-1,0, 1,0,0, 0,0,1)

local function FillTerrain(Part,Material)
	if Part:IsA'Part' then
		if Part.Shape == Enum.PartType.Block then
			Terrain:FillBlock(Part.CFrame, Part.Size, Material)
		elseif Part.Shape == Enum.PartType.Ball then
			Terrain:FillBall(Part.Position, math.min(Part.Size.X,Part.Size.Y,Part.Size.Z)/2, Material)
		elseif Part.Shape == Enum.PartType.Cylinder then
			Terrain:FillCylinder(Part.CFrame*CylinderFixCFrame, Part.Size.X, math.min(Part.Size.Y,Part.Size.Z)/2, Material)
		end
	elseif Part:IsA'WedgePart' then
		Terrain:FillWedge(Part.CFrame, Part.Size, Material)
	end
end

--Index all materials because roblox will error if you try to access a material that doesn't exist
local MaterialIndex={}
local MaterialList=Enum.Material:GetEnumItems()
for i=1,#MaterialList do
	local Material=MaterialList[i]
	MaterialIndex[Material.Name]=Material
end

--Run through each Model/Folder in script.Parent named after a Material
--Pick any material name for the Models as it appears on https://developer.roblox.com/en-us/api-reference/enum/Material
local Models=script.Parent:GetChildren()
for i=1,#Models do
	local Model=Models[i]
	if Model~=script then
		--Check the Model name to determine which Material to use
		local Material=MaterialIndex[Model.Name]
		if Material then
			--Fill all the terrain regions using whichever part shapes are used
			local MaterialParts=Model:GetChildren()
			for j=1,#MaterialParts do
				local MaterialPart=MaterialParts[j]
				FillTerrain(MaterialPart,Material)
				MaterialPart.Transparency=1
			end
		else
			print("[Terrain Filler] WARNING: "..Model.Name.." is not a valid Material name.")
		end
	end
end