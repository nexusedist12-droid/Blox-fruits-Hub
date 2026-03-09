for _,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Tool") and string.find(v.Name,"Fruit") then
        print("Fruit found:",v.Name)
    end
end

Tab:Button({
Title = "Teleport Nearest Boss",
Callback = function()

local player = game.Players.LocalPlayer
local char = player.Character
local root = char.HumanoidRootPart

local nearestBoss = nil
local distance = math.huge

for _,v in pairs(workspace.Enemies:GetChildren()) do
if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then

if v.Humanoid.Health > 0 and string.find(v.Name,"Boss") then

local dist = (root.Position - v.HumanoidRootPart.Position).Magnitude

if dist < distance then
distance = dist
nearestBoss = v
end

end
end
end

if nearestBoss then
root.CFrame = nearestBoss.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
end

end
})

local AutoFruitTP = false

Tab:Toggle({
Title = "Auto Teleport Fruit",
Default = false,
Callback = function(v)

AutoFruitTP = v

while AutoFruitTP do
task.wait(1)

for _,fruit in pairs(workspace:GetChildren()) do

if fruit:IsA("Tool") and string.find(fruit.Name,"Fruit") then

local player = game.Players.LocalPlayer
local char = player.Character
local root = char.HumanoidRootPart

root.CFrame = fruit.Handle.CFrame * CFrame.new(0,5,0)

task.wait(2)

end
end

end

end
})

local AutoFruit = false

Tab:Toggle({
Title = "Fruit Teleport",
Default = false,
Callback = function(v)

AutoFruit = v

while AutoFruit do
task.wait(1)

local player = game.Players.LocalPlayer
local root = player.Character.HumanoidRootPart

local nearestFruit = nil
local distance = math.huge

for _,v in pairs(workspace:GetChildren()) do

if v:IsA("Tool") and string.find(v.Name,"Fruit") then

local dist = (root.Position - v.Handle.Position).Magnitude

if dist < distance then
distance = dist
nearestFruit = v
end

end
end

if nearestFruit then
root.CFrame = nearestFruit.Handle.CFrame * CFrame.new(0,5,0)
end

end

end
})
