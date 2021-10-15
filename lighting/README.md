# lighting
This folder provides scripts and documentation for lighting modifications.

To access the lighting property to modify environmental appearances, we need to retrieve the service from the Roblox "experience" via the model.
```lua
local Lighting = game:GetService("Lighting");
```
This can also be retrieved by doing the following, as the [strafes.net wiki](https://wiki.strafes.net/map_making/lighting_guide?rev=1624466270#:~:text=local%20l%20%3D%20game.Lighting) provides:
<!-- note to self: you can link to direct text by doing `link#:~:text=URIENCODEDTEXT.` Encode text here: https://www.urlencoder.org/ -->
```lua
local Lighting = game.Lighting
```
Discussion for which method of lighting retrival is better is absent; either way works.
