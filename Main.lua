local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/Orion/main/source'))()
local CorrectKey = game:HttpGet("https://raw.githubusercontent.com/Pingz0/SilentScriptHub/refs/heads/main/3910.txt")
CorrectKey = CorrectKey:match("^(.-)\n") or CorrectKey

local Window = OrionLib:MakeWindow({
    Name = "Silent Script Hub | Key System",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "SilentKeySystem"
})

local Tab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        if Value == CorrectKey then
            OrionLib:MakeNotification({
                Name = "Success",
                Content = "Correct Key! Loading Script...",
                Image = "rbxassetid://7733658504",
                Time = 3
            })
            task.wait(1)
            OrionLib:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pingz0/SilentScriptHub/main/main.lua"))()
        else
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Wrong Key!",
                Image = "rbxassetid://7733658504",
                Time = 3
            })
        end
    end
})

Tab:AddButton({
    Name = "Get Key at our Discord",
    Callback = function()
        setclipboard("https://discord.gg/DGVwp7cvhB")
        OrionLib:MakeNotification({
            Name = "Copied",
            Content = "Discord link copied to clipboard!",
            Image = "rbxassetid://7733658504",
            Time = 3
        })
    end
})

OrionLib:Init()
