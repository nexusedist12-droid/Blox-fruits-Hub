for _,v in pairs(workspace.SeaBeasts:GetChildren()) do
    if v:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
    end
end
