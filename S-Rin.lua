_G.Gojo = true
_G.Anos = true

pcall(function()
    if _G.Anos == true then
        local player = game.Players.LocalPlayer
        local playergui = player:FindFirstChild("PlayerGui")

        local Anos = Instance.new("Tool")
        Anos.Name = "Anos"
        Anos.Parent = player.Backpack

        Anos.Equipped:Connect(function()
            if playergui:FindFirstChild("SkillAnos") then
                playergui.SkillAnos.Enabled = true
            end
        end)

        Anos.Unequipped:Connect(function()
            if playergui:FindFirstChild("SkillAnos") and playergui.SkillAnos.Enabled == true then
                playergui.SkillAnos.Enabled = false
            end
        end)
    end
end)

pcall(function()

if _G.Gojo == true then
    local gojo = Instance.new("Tool")
    gojo.Name = "Gojo"
    local player = game.Players.LocalPlayer
    local playergui = player:FindFirstChild("PlayerGui")

    gojo.Equipped:Connect(function()
        if playergui:FindFirstChild("SkillGojo") then
            playergui.SkillGojo.Enabled = true
        end
    end)

    task.wait()

    gojo.Unequipped:Connect(function()
        if playergui:FindFirstChild("SkillGojo") and playergui.SkillGojo.Enabled == true then
            playergui.SkillGojo.Enabled = false
        end
    end)

end

end)
