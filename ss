local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("No More Life", "DarkTheme")
local MainTab = Window:NewTab("Menu")

local Section = MainTab:NewSection("Menu")

Section:NewButton("Aimbot And Esp", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yousif111/Update/main/new", true))()
end)

Section:NewButton("Jumb", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yousif111/INF-JUMP/main/INF%20JUMP", true))()
end)

Section:NewButton("Silent aim", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yousif111/sailant-aim/main/sailant", true))()
end)

WalkSpeedValue = 100
Section:NewToggle("Toggle Speed", "", function(state)
if state then
    getgenv().Speed = true
    if getgenv().Speed == true then
    WalkSpeedValue = v
    local Player = game:service'Players'.LocalPlayer
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = WalkSpeedValue
    end)
    Player.Character.Humanoid.WalkSpeed = WalkSpeedValue
end
    else
        getgenv().Speed = false
    end
end)

Section:NewSlider("Walk Speed", "Set Your Walk Speed", 500, 16, function(v)
    WalkSpeedValue = v
end)

Section:NewKeybind("UI Keybind", "", Enum.KeyCode.Insert, function()
    Library:ToggleUI()
end)
