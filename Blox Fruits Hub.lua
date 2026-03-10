-- HUB WINDOW

local Window = redzlib:MakeWindow({
	Name = "Blox Fruits Hub",
	SubTitle = "Nexus Hub",
	SaveFolder = "BloxFruitsHub"
})

-- TAB HOME
local MainTab = Window:MakeTab({
	Name = "Home",
	Icon = "home"
})

-- TAB FARM
local FarmTab = Window:MakeTab({
	Name = "Farm",
	Icon = "swords"
})

-- TAB TELEPORT
local TeleportTab = Window:MakeTab({
	Name = "Teleport",
	Icon = "map"
})

---------------------------------------------------
-- HOME
---------------------------------------------------

MainTab:AddButton({
	Name = "Check Script",
	Callback = function()
		print("Blox Fruits Hub Loaded")
	end
})

---------------------------------------------------
-- FARM
---------------------------------------------------

FarmTab:AddToggle({
	Name = "Auto Farm Level",
	Default = false,
	Callback = function(v)
		_G.AutoFarm = v
		
		while _G.AutoFarm do
			print("Farming level...")
			task.wait(1)
		end
	end
})

FarmTab:AddToggle({
	Name = "Auto Boss",
	Default = false,
	Callback = function(v)
		print("Auto Boss:",v)
	end
})

FarmTab:AddToggle({
	Name = "Auto Sea Beast",
	Default = false,
	Callback = function(v)
		print("Auto Sea Beast:",v)
	end
})

---------------------------------------------------
-- TELEPORT
---------------------------------------------------

TeleportTab:AddButton({
	Name = "Teleport Spawn",
	Callback = function()
		local player = game.Players.LocalPlayer
		
		player.Character.HumanoidRootPart.CFrame =
		CFrame.new(0,50,0)
	end
})

TeleportTab:AddButton({
	Name = "Teleport Random Player",
	Callback = function()

		local Players = game:GetService("Players")
		local plrs = Players:GetPlayers()
		local target = plrs[math.random(1,#plrs)]

		if target.Character then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
			target.Character.HumanoidRootPart.CFrame
		end

	end
})
