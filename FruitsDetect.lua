for _,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Tool") and string.find(v.Name,"Fruit") then
        print("Fruit found:",v.Name)
    end
end
