--[[
Authors:
    insyri; roblox: 145291526, github: insyri
    veryunhappydoge; roblox: 1455906620, github: dowoge
]]

function transparencyShift(
	targetTransparencyShiftTo: number,
	elapsedTimeLength: number,
	easingStyle: Enum,
	part: BasePart
)
	--[[ documentation
	
	REQUIRED | targetTransparencyShiftTo : number [0..1]    = the transparency value the object is changing to

	REQUIRED | elapsedTimeLength         : number           = how long it takes to change from the original transparency to the new assigned transparency
	
	OPTIONAL | easingStyle               : Enum.EasingStyle = the transparency shift style, if not populated, default is Linear
	https://developer.roblox.com/en-us/api-reference/enum/EasingStyle
	
	OPTIONAL | part                      : BasePart         = target part to be applied to; if not populated, default is script parent
	
	]]

	-- optional arguments parsing

	if easingStyle == nil then
		easingStyle = 'Linear'
	end

	-- return values

	local numberLimits = 'parameter must be equal to or lower than 1 AND equal to or higher than 0, type passed: '
	local typeNum = 'parameter should be a number'

	-- type checking

	assert(
		type(targetTransparencyShiftTo) == 'number',
		'targetTransparencyShiftTo' .. typeNum .. type(targetTransparencyShiftTo)
	)
	assert(targetTransparencyShiftTo > 1 or targetTransparencyShiftTo < 0, 'targetTransparencyShiftTo' .. numberLimits)
	assert(type(elapsedTimeLength) == 'number', 'elapsedTimeLength' .. typeNum .. type(targetTransparencyShiftTo))

	-- code

	game
		:GetService('TweenService')
		:Create(
			(part == nil and script.Parent or part),
			TweenInfo.new(elapsedTimeLength, Enum.EasingStyle[easingStyle], Enum.EasingDirection.Out, 0, false, 0),
			{ Transparency = targetTransparencyShiftTo }
		)
		:Play()
end
