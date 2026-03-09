local place = game.PlaceId

local Sea = ""

if place == 2753915549 then
Sea = "First"
print("First Sea")
elseif place == 4442272183 then
Sea = "Second"
print("Second Sea")
elseif place == 7449423635 then
Sea = "Third"
print("Third Sea")
end

if Sea == "First" then
print("Loading First Sea Script")
end

if Sea == "Second" then
print("Loading Second Sea Script")
end

if Sea == "Third" then
print("Loading Third Sea Script")
end

loadstring(game:HttpGet("https://gist.githubusercontent.com/nexusedist12-droid/9173d225556b32a6070c1c2e3d527d0b/raw"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexusedist12-droid/Blox-fruits-Hub/main/Sea.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexusedist12-droid/Blox-fruits-Hub/main/Teleport.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexusedist12-droid/Blox-fruits-Hub/main/FruitsDetect.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexusedist12-droid/Blox-fruits-Hub/main/Raid%20lua.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexusedist12-droid/Blox-fruits-Hub/main/Sea%20event.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexusedist12-droid/Blox-fruits-Hub/main/Boos.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexusedist12-droid/Blox-fruits-Hub/main/Blox%20Fruits%20Hub.lua"))()

print("Hub Loaded")

game.StarterGui:SetCore("SendNotification",{
Title = "Blox Fruits Hub",
Text = "Script Loaded",
Duration = 5
})
