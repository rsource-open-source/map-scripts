# lighting
This folder provides scripts and documentation for lighting modifications.

View the official [Roblox Developer Article](https://developer.roblox.com/en-us/api-reference/class/Lighting) about lighting.

## Lighting Property

To access the lighting property to modify environmental appearances, we need to retrieve the service from the Roblox "experience" via the model.
```lua
local Lighting = game:GetService("Lighting");
```
This can also be retrieved by doing the following, as the [strafes.net wiki](https://wiki.strafes.net/map_making/lighting_guide?rev=1624466270#:~:text=local%20l%20%3D%20game.Lighting) provides:
<!-- note to self: you can link to direct text by doing `link#:~:text=URIENCODEDTEXT.` Encode text here: https://www.urlencoder.org/ -->
```lua
local Lighting = game.Lighting
```
Discussion for which method of lighting retrival that is better is absent; either way works.

## Game Settings
As of 10/15/2021, both games use the [`Shadowmap`](https://devforum.roblox.com/t/future-vs-shadowmap/658587) lighting technology. Quaternions has no plans to turn the games to Future lighting. Shadowmap is the default lighting; the strafes.net wikipedia mentions on how to revert back to this if edited previously:

> To use that in Studio, in the explorer window, navigate to Lighting. Click on it and look at the properties. The Technology property needs to be changed to `Shadowmap`.

[`rev 1624466270`](https://wiki.strafes.net/map_making/lighting_guide?rev=1624466270#:~:text=Roblox%20Bhop%20and%20Surf%20use%20the%20Shadowmap%20lighting%20technology.%20To%20use%20that%20in%20Studio%2C%20in%20the%20explorer%20window%2C%20navigate%20to%20Lighting.%20Click%20on%20it%20and%20look%20at%20the%20properties.%20The%20Technology%20property%20needs%20to%20be%20changed%20to%20Shadowmap.)

Optimization concerns reportedly vary on each use case and user, but the Roblox Engine is not optimized ~~enough~~ to take advantage of it.
