local Islands = {
["Starter Island"] = CFrame.new(100,10,100),
["Jungle"] = CFrame.new(-1200,20,400),
["Pirate Village"] = CFrame.new(-1100,15,3500),
["Desert"] = CFrame.new(900,15,4500)
}

for name,pos in pairs(Islands) do
    Tab:Button({
        Title = name,
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end
    })
end
