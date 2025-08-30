-- 🔒 حقوق العم 7KOMH

-- إنشاء الـ GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local JoinLabel = Instance.new("TextLabel")
local LeaveLabel = Instance.new("TextLabel")

ScreenGui.Parent = game:GetService("CoreGui")

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 250, 0, 120)
Frame.Position = UDim2.new(0, 20, 0, 200)
Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
Frame.BackgroundTransparency = 0.2

Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "🔒 حقوق العم 7KOMH"
Title.TextColor3 = Color3.new(1,1,1)
Title.BackgroundTransparency = 1

JoinLabel.Parent = Frame
JoinLabel.Position = UDim2.new(0, 10, 0, 40)
JoinLabel.Size = UDim2.new(1, -20, 0, 30)
JoinLabel.TextColor3 = Color3.fromRGB(0,255,0)
JoinLabel.Text = "✅ مرات الدخول: 0"
JoinLabel.BackgroundTransparency = 1

LeaveLabel.Parent = Frame
LeaveLabel.Position = UDim2.new(0, 10, 0, 70)
LeaveLabel.Size = UDim2.new(1, -20, 0, 30)
LeaveLabel.TextColor3 = Color3.fromRGB(255,0,0)
LeaveLabel.Text = "❌ مرات الخروج: 0"
LeaveLabel.BackgroundTransparency = 1

-- المتغيرات
local joins, leaves = 0, 0

-- عند دخول لاعب
game.Players.PlayerAdded:Connect(function(plr)
    joins = joins + 1
    JoinLabel.Text = "✅ مرات الدخول: " .. joins
end)

-- عند خروج لاعب
game.Players.PlayerRemoving:Connect(function(plr)
    leaves = leaves + 1
    LeaveLabel.Text = "❌ مرات الخروج: " .. leaves
end)
