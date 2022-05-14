local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cr-247extras:server:GiveYellowSlushy', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("yellowslushy", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["yellowslushy"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveOrangeSlushy', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("orangeslushy", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["orangeslushy"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveBlueSlushy', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("blueslushy", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blueslushy"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveRainbowSlushy', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("rainbowslushy", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["rainbowslushy"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveRedSlushy', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("redslushy", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["redslushy"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveGreenSlushy', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("greenslushy", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["greenslushy"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveSluckyDonut', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("superdonut", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["superdonut"], "add")
end)