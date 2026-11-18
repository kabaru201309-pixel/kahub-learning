local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "VOID_HUB"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 340, 0, 250)
main.Position = UDim2.new(0.5, -170, 0.5, -125)
main.BackgroundColor3 = Color3.fromRGB(16, 16, 23)
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(115, 75, 220)
stroke.Thickness = 1.5
stroke.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -50, 0, 45)
title.Position = UDim2.new(0, 12, 0, 0)
title.BackgroundTransparency = 1
title.Text = "VOID HUB  |  v1.0"
title.TextColor3 = Color3.fromRGB(190, 155, 255)
title.TextSize = 18
title.Font = Enum.Font.GothamBold
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = main

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 32, 0, 32)
close.Position = UDim2.new(1, -40, 0, 7)
close.BackgroundColor3 = Color3.fromRGB(45, 35, 55)
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.Font = Enum.Font.GothamBold
close.Parent = main

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local minimize = Instance.new("TextButton")
minimize.Size = UDim2.new(0, 32, 0, 32)
minimize.Position = UDim2.new(1, -78, 0, 7)
minimize.BackgroundColor3 = Color3.fromRGB(45, 35, 55)
minimize.Text = "-"
minimize.TextColor3 = Color3.new(1, 1, 1)
minimize.Font = Enum.Font.GothamBold
minimize.Parent = main

local content = Instance.new("TextLabel")
content.Size = UDim2.new(1, -24, 0, 130)
content.Position = UDim2.new(0, 12, 0, 65)
content.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
content.Text = "Welcome to VOID HUB\n\nDark Modern Interface\nProject: Lua Learning"
content.TextColor3 = Color3.fromRGB(220, 220, 230)
content.TextSize = 15
content.Font = Enum.Font.Gotham
content.Parent = main

local contentCorner = Instance.new("UICorner")
contentCorner.CornerRadius = UDim.new(0, 9)
contentCorner.Parent = content

minimize.MouseButton1Click:Connect(function()
    content.Visible = not content.Visible
end)

print("VOID HUB Loaded!")
