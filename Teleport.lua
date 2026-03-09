local Islands = {

-- FIRST SEA
["Starter Island"] = CFrame.new(1037,16,1427),
["Jungle"] = CFrame.new(-1600,36,150),
["Pirate Village"] = CFrame.new(-1100,4,3800),
["Desert"] = CFrame.new(900,10,4400),
["Frozen Village"] = CFrame.new(1100,20,-1200),
["Marineford"] = CFrame.new(-4500,20,4300),
["Sky Island"] = CFrame.new(-4600,870,-1660),
["Prison"] = CFrame.new(4850,5,740),
["Colosseum"] = CFrame.new(-1500,7,-3000),
["Magma Village"] = CFrame.new(-5300,12,8500),
["Underwater City"] = CFrame.new(61000,10,1900),
["Fountain City"] = CFrame.new(5200,10,4050),

-- SECOND SEA
["Kingdom of Rose"] = CFrame.new(-390,73,160),
["Green Zone"] = CFrame.new(-2500,73,-4500),
["Graveyard"] = CFrame.new(-5500,8,-700),
["Snow Mountain"] = CFrame.new(600,400,-5300),
["Hot and Cold"] = CFrame.new(-6000,15,-4900),
["Cursed Ship"] = CFrame.new(920,125,32800),
["Ice Castle"] = CFrame.new(5400,28,-6230),
["Forgotten Island"] = CFrame.new(-3050,315,-10150),

-- THIRD SEA
["Port Town"] = CFrame.new(-290,7,5343),
["Hydra Island"] = CFrame.new(5750,610,-280),
["Great Tree"] = CFrame.new(2276,25,-6490),
["Floating Turtle"] = CFrame.new(-12460,375,-7550),
["Castle on the Sea"] = CFrame.new(-5050,315,-3150),
["Sea of Treats"] = CFrame.new(-1000,80,-14500),
["Haunted Castle"] = CFrame.new(-9500,142,5550),
["Peanut Land"] = CFrame.new(-2000,50,-10500),
["Ice Cream Island"] = CFrame.new(-820,65,-11000)

}

for name,pos in pairs(Islands) do
    Tab:Button({
        Title = name,
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end
    })
end
