_G.Gojo = false
_G.Anos = true

local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["Enabled"] = false


-- StarterGui.ScreenGui.Z
G2L["2"] = Instance.new("TextButton", G2L["1"]);
G2L["2"]["TextWrapped"] = true;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["TextSize"] = 14;
G2L["2"]["TextScaled"] = true;
G2L["2"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2"]["Size"] = UDim2.new(0, 135, 0, 44);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Text"] = [[Z]];
G2L["2"]["Name"] = [[Z]];
G2L["2"]["Position"] = UDim2.new(0.75417, 0, 0.28419, 0);


-- StarterGui.ScreenGui.Z.UIAspectRatioConstraint
G2L["3"] = Instance.new("UIAspectRatioConstraint", G2L["2"]);
G2L["3"]["AspectRatio"] = 3.06818;


-- StarterGui.ScreenGui.X
G2L["4"] = Instance.new("TextButton", G2L["1"]);
G2L["4"]["TextWrapped"] = true;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextSize"] = 14;
G2L["4"]["TextScaled"] = true;
G2L["4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["Size"] = UDim2.new(0, 135, 0, 44);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[X]];
G2L["4"]["Name"] = [[X]];
G2L["4"]["Position"] = UDim2.new(0.75417, 0, 0.40385, 0);


-- StarterGui.ScreenGui.X.UIAspectRatioConstraint
G2L["5"] = Instance.new("UIAspectRatioConstraint", G2L["4"]);
G2L["5"]["AspectRatio"] = 3.06818;


-- StarterGui.ScreenGui.C
G2L["6"] = Instance.new("TextButton", G2L["1"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextScaled"] = true;
G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["Size"] = UDim2.new(0, 135, 0, 44);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[C]];
G2L["6"]["Name"] = [[C]];
G2L["6"]["Position"] = UDim2.new(0.75417, 0, 0.51709, 0);


-- StarterGui.ScreenGui.C.UIAspectRatioConstraint
G2L["7"] = Instance.new("UIAspectRatioConstraint", G2L["6"]);
G2L["7"]["AspectRatio"] = 3.06818;


-- StarterGui.ScreenGui.V
G2L["8"] = Instance.new("TextButton", G2L["1"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 14;
G2L["8"]["TextScaled"] = true;
G2L["8"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["Size"] = UDim2.new(0, 135, 0, 44);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[V]];
G2L["8"]["Name"] = [[V]];
G2L["8"]["Position"] = UDim2.new(0.75417, 0, 0.63889, 0);


-- StarterGui.ScreenGui.V.UIAspectRatioConstraint
G2L["9"] = Instance.new("UIAspectRatioConstraint", G2L["8"]);
G2L["9"]["AspectRatio"] = 3.06818;


-- StarterGui.ScreenGui.UIAspectRatioConstraint
G2L["a"] = Instance.new("UIAspectRatioConstraint", G2L["1"]);
G2L["a"]["AspectRatio"] = 2.30342;

local UserInputService = game:GetService("UserInputService")

if _G.Anos == true then
    local Anos = Instance.new("Tool")
    Anos.Name = "Anos"
    Anos.Parent = game.Players.LocalPlayer.Backpack
    Anos.Equipped:Connect(function()
        G2L["1"]["Enabled"] = true
        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed then
                if input.KeyCode == Enum.KeyCode.Z then
                    game.ReplicatedStorage.Anos.Remote.SkillZ:FireServer()
    
                elseif input.KeyCode == Enum.KeyCode.X then
                    game.ReplicatedStorage.Anos.Remote.SkillX:FireServer()
    
                elseif input.KeyCode == Enum.KeyCode.C then
                    game.ReplicatedStorage.Anos.Remote.SkillC:FireServer()
    
                elseif input.KeyCode == Enum.KeyCode.V then
                    game.ReplicatedStorage.Anos.Remote.SkillV:FireServer()
                end
            end
        end)
    end)
    task.wait()
    Anos.Unequipped:Connect(function()
        G2L["1"]["Enabled"] = false
    end)
end

if _G.Gojo == true then
    local gojo = Instance.new("Tool")
    gojo.Name = "Gojo"
    gojo.Parent = game.Players.LocalPlayer.Backpack
    gojo.Equipped:Connect(function()
        G2L["1"]["Enabled"] = true
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
        G2L["1"]["Enabled"] = false
    end)

end
