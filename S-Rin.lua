_G.Gojo = false
_G.Anos = true

local UserInputService = game:GetService("UserInputService")

pcall(function()
if _G.Anos == true then
    local player = game.Players.LocalPlayer
    local equipped = false

    local Anos = Instance.new("Tool")
    Anos.Name = "Anos"
    Anos.Parent = player.Backpack

    Anos.Equipped:Connect(function()
        equipped = true
    end)

    Anos.Unequipped:Connect(function()
        equipped = false
    end)

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if equipped and not gameProcessed then
            local skillRemote = game.ReplicatedStorage.Anos.Remote
            if input.KeyCode == Enum.KeyCode.Z then
                skillRemote.SkillZ:FireServer()
            elseif input.KeyCode == Enum.KeyCode.X then
                skillRemote.SkillX:FireServer()
            elseif input.KeyCode == Enum.KeyCode.C then
                skillRemote.SkillC:FireServer()
            elseif input.KeyCode == Enum.KeyCode.V then
                skillRemote.SkillV:FireServer()
            end
        end
    end)
end

end)

pcall(function()

if _G.Gojo == true then
    local gojo = Instance.new("Tool")
    gojo.Name = "Gojo"
    gojo.Parent = game.Players.LocalPlayer.Backpack
    gojo.Equipped:Connect(function()
        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed then
                if input.KeyCode == Enum.KeyCode.Z then
                    game.ReplicatedStorage.Gojo.Remote.SkillZ:FireServer()
    
                elseif input.KeyCode == Enum.KeyCode.X then
                    game.ReplicatedStorage.Gojo.Remote.SkillX:FireServer()
    
                elseif input.KeyCode == Enum.KeyCode.C then
                    game.ReplicatedStorage.Gojo.Remote.SkillC:FireServer()
    
                elseif input.KeyCode == Enum.KeyCode.V then
                    game.ReplicatedStorage.Gojo.Remote.SkillV:FireServer()
                end
            end
        end)
    end)
    task.wait()
    gojo.Unequipped:Connect(function()
        print("une")
    end)

end

end)
