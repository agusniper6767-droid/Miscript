local plr = game.Players.LocalPlayer
local backpack = plr:WaitForChild("Backpack")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SparklyBooGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = plr:WaitForChild("PlayerGui")

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 200, 0, 30)
label.Position = UDim2.new(0.5, -100, 0.1, 0)
label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 16
label.Text = "Sparkly Boo Generator"
label.Parent = screenGui

local inputBox = Instance.new("TextBox")
inputBox.Size = UDim2.new(0, 200, 0, 40)
inputBox.Position = UDim2.new(0.5, -100, 0.15, 0)
inputBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.TextSize = 16
inputBox.PlaceholderText = "Cantidad (Máx 100)"
inputBox.Text = "10"
inputBox.Parent = screenGui

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 40)
button.Position = UDim2.new(0.5, -100, 0.22, 0)
button.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 16
button.Text = "Generar"
button.Parent = screenGui

button.MouseButton1Click:Connect(function()
    local qty = tonumber(inputBox.Text) or 10
    if qty > 100 then qty = 100 end
    
    for i = 1, qty do
        local tool = Instance.new("Tool")
        tool.Name = "Sparkly Boo"
        tool.Parent = backpack
    end
    print("Generados: " .. qty)
end)
