local FruitESP = false

Tab:Toggle({
Title = "Fruit ESP",
Default = false,
Callback = function(v)
FruitESP = v

while FruitESP do
task.wait(1)

for _,v in pairs(workspace:GetChildren()) do
if string.find(v.Name,"Fruit") then

if not v:FindFirstChild("ESP") then

local bill = Instance.new("BillboardGui",v)
bill.Name = "ESP"
bill.Size = UDim2.new(0,100,0,40)
bill.AlwaysOnTop = true

local text = Instance.new("TextLabel",bill)
text.Size = UDim2.new(1,0,1,0)
text.BackgroundTransparency = 1
text.TextColor3 = Color3.fromRGB(0,255,0)
text.TextScaled = true

task.spawn(function()

while bill.Parent do

local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
text.Text = v.Name.." ["..math.floor(dist).."]"

task.wait()

end

end)

end
end
end
end

end
})
