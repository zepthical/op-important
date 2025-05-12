local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "N Rin Sea | Zepthical" .. Fluent.Version,
    SubTitle = "by Zepthical",
    TabWidth = 160,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Options = Fluent.Options

Fluent:Notify({
        Title = "Zepthical",
        Content = "N Rin Sea",
        SubContent = "Loaded!", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

Window:SelectTab(1)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playergui = player:FindFirstChild("PlayerGui")
local character = player.Character
local humanoid = character:FindFirstChild("Humanoid") or character:WaitForChild("Humanoid")

local Section = Tabs.Main:AddSection("Level")

_G.Level = false
_G.dupe = false

local function getLevel()
    local statusgui = playergui:FindFirstChild("StatusGUI")
    if statusgui then
        local stats2Frame = statusgui:FindFirstChild("Stats2Frame")
        if stats2Frame then
            local lv = stats2Frame:FindFirstChild("LV")
            if lv and lv:IsA("TextLabel") then
                local number = string.match(lv.Text, "%d+")
                return tonumber(number)
            end
        end
    end
    return nil
end

local function getPoints()
    local statusgui = playergui:FindFirstChild("StatusGUI")
    if statusgui then
        local pointsframe = statusgui:FindFirstChild("Points")
        if pointsframe then
            local pointstext = pointsframe:FindFirstChild("PointsText")
            if pointstext then
                return pointstext.Text
            end
        end
    end
    return nil
end

local function autoupgradesword()
    local points = getPoints()

    local statusgui = playergui:FindFirstChild("StatusGUI")
    if statusgui then
        local statusframe = statusgui:FindFirstChild("StatusFrame")
        if statusframe then
            local swordFrame = statusframe:FindFirstChild("SwordFrame")
            if swordFrame then
                local SwordNumber = swordFrame:FindFirstChild("SwordNumber")
                if SwordNumber then
                    local upstats = playergui.StatusGUI.SwordFrame.SwordButton.UpStats
                    upstats:FireServer(points)
                end
            end
        end
    end
end

_G.tp = true
local function looptp(x, y, z)
    while _G.tp do task.wait()
        humanoid.CFrame = CFrame.new(x, y, z)
    end
end

local ToggleAL = Tabs.Main:AddToggle("AutoLevel", 
{
    Title = "Auto Level", 
    Description = "Auto Farm Level",
    Default = _G.Level,
    Callback = function(state)
        _G.Level = state

pcall(function()
    while _G.Level do
        task.wait()

        local lv = getLevel() -- update level each loop
        if lv and lv < 400 then
             looptp(-436, 16, -196)
        elseif lv >= 400 and lv < 1000 then
            looptp(-725, 15, 752)
        elseif lv >= 1000 and lv < 2000 then
            looptp(380, 14, -1584)
        elseif lv >= 2000 and lv < 4000 then
            looptp(271, 18, -638)
        elseif lv >= 4000 and lv < 10000 then
            looptp(-532, 25, -1514)
        elseif lv >= 45000 then
            break
                end
                game:GetService("ReplicatedStorage").Sungs.Events.Rush:FireServer()
                autoupgradesword()
                task.wait(0.5)
            end
        end)
    end 
})

ToggleAL:OnChanged(function(v)
    if v == true then
        _G.Level = v

    pcall(function()
    while _G.Level do
        task.wait()

        local lv = getLevel() -- update level each loop
        if lv and lv < 400 then
             looptp(-436, 16, -196)
        elseif lv >= 400 and lv < 1000 then
            looptp(-725, 15, 752)
        elseif lv >= 1000 and lv < 2000 then
            looptp(380, 14, -1584)
        elseif lv >= 2000 and lv < 4000 then
            looptp(271, 18, -638)
        elseif lv >= 4000 and lv < 10000 then
            looptp(-532, 25, -1514)
        elseif lv >= 45000 then
            break
                end
                game:GetService("ReplicatedStorage").Sungs.Events.Rush:FireServer()
                autoupgradesword()
                task.wait(0.5)
            end
        end)

    else
        print("Disabled")
    end
end)
