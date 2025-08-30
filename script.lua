-- 🔒 حقوق العم 7KOMH

local joins = {}
local leaves = {}

local function update(playerName)
    print("📊 اللاعب: " .. playerName)
    print("✅ مرات الدخول: " .. tostring(joins[playerName] or 0))
    print("❌ مرات الخروج: " .. tostring(leaves[playerName] or 0))
    print("🔒 حقوق العم 7KOMH")
    print("-------------------------")
end

game.Players.PlayerAdded:Connect(function(player)
    local name = player.Name
    joins[name] = (joins[name] or 0) + 1
    update(name)
end)

game.Players.PlayerRemoving:Connect(function(player)
    local name = player.Name
    leaves[name] = (leaves[name] or 0) + 1
    update(name)
end)

print("✅ سكربت التتبع شغال - 🔒 حقوق العم 7KOMH")
