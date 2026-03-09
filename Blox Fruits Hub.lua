local WindUI = loadstring(game:HttpGet(
"https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"
))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- WINDOW
local Window = WindUI:CreateWindow({
    Title = "Blox Fruits Hub",
    Icon = "swords",
    Author = "Nexus Hub",
    Folder = "BFHub",
    Size = UDim2.fromOffset(430,360),
    Transparent = true
})

-- TABS
local MainTab = Window:Tab({
    Title = "Home",
    Icon = "home"
})

local SettingsTab = Window:Tab({
    Title = "Settings",
    Icon = "settings"
})

---------------------------------------------------
-- FARM
---------------------------------------------------

MainTab:Paragraph({
    Title = "Farm",
    Desc = "Auto farm options"
})

MainTab:Toggle({
    Title = "Auto Farm Level",
    Default = false,
    Callback = function(v)
        _G.AutoFarm = v
        while _G.AutoFarm do
            print("Farming level...")
            task.wait(1)
        end
    end
})

MainTab:Toggle({
    Title = "Auto Quest",
    Default = false,
    Callback = function(v)
        print("Auto quest:",v)
    end
})

MainTab:Toggle({
    Title = "Auto Boss",
    Default = false,
    Callback = function(v)
        print("Auto boss:",v)
    end
})

---------------------------------------------------
-- PLAYER
---------------------------------------------------

MainTab:Paragraph({
    Title = "Player",
    Desc = "Player options"
})

MainTab:Slider({
    Title = "WalkSpeed",
    Value = {
        Min = 16,
        Max = 200,
        Default = 16
    },
    Callback = function(v)
        LocalPlayer.Character.Humanoid.WalkSpeed = v
    end
})

MainTab:Slider({
    Title = "JumpPower",
    Value = {
        Min = 50,
        Max = 200,
        Default = 50
    },
    Callback = function(v)
        LocalPlayer.Character.Humanoid.JumpPower = v
    end
})

MainTab:Toggle({
    Title = "Infinite Energy",
    Default = false,
    Callback = function(v)
        print("Infinite Energy:",v)
    end
})

---------------------------------------------------
-- TELEPORT
---------------------------------------------------

MainTab:Paragraph({
    Title = "Teleport",
    Desc = "Teleport options"
})

MainTab:Button({
    Title = "Teleport Spawn",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(0,50,0)
    end
})

MainTab:Button({
    Title = "Teleport Random Player",
    Callback = function()
        local plr = Players:GetPlayers()
        local target = plr[math.random(1,#plr)]

        if target.Character then
            LocalPlayer.Character.HumanoidRootPart.CFrame =
            target.Character.HumanoidRootPart.CFrame
        end
    end
})

---------------------------------------------------
-- FRUIT
---------------------------------------------------

MainTab:Paragraph({
    Title = "Fruit",
    Desc = "Fruit options"
})

MainTab:Toggle({
    Title = "Fruit ESP",
    Default = false,
    Callback = function(v)
        print("Fruit ESP:",v)
    end
})

MainTab:Toggle({
    Title = "Auto Store Fruit",
    Default = false,
    Callback = function(v)
        print("Auto store:",v)
    end
})

---------------------------------------------------
-- SETTINGS
---------------------------------------------------

SettingsTab:Button({
    Title = "Test Notification",
    Callback = function()

        WindUI:Notify({
            Title = "Blox Fruits Hub",
            Content = "Script Loaded",
            Duration = 3
        })

    end
})
