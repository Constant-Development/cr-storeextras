local QBCore = exports['qb-core']:GetCoreObject()

isSlushyCoolDownActive = false
isSluckyBuckyDonutCoolDownActive = false
isIceCreamCoolDownActive = false
isGumballStandCoolDownActive = false

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

RegisterNetEvent('cr-247extras:server:GiveVanillaIceCream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("vanillaicecream", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["vanillaicecream"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveChocolateIceCream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("chocolateicecream", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["chocolateicecream"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveMintIceCream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("minticecream", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["minticecream"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveCookiesAndCreamIceCream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("cookiesandcreamicecream", 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cookiesandcreamicecream"], "add")
end)

RegisterNetEvent('cr-247extras:server:GiveBubbleGum', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local BubbleGum = math.random(1,52)
    if BubbleGum >= 1 then
        Player.Functions.AddItem("bubblegum_gumball", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["bubblegum_gumball"], "add")
    elseif BubbleGum >= 11 then
        Player.Functions.AddItem("blueberry_gumball", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blueberry_gumball"], "add")
    elseif BubbleGum >= 21 then
        Player.Functions.AddItem("banana_gumball", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["banana_gumball"], "add")
    elseif BubbleGum >= 31 then
        Player.Functions.AddItem("mint_gumball", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["mint_gumball"], "add")
    elseif BubbleGum >= 41 then
        Player.Functions.AddItem("cherry_gumball", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cherry_gumball"], "add")
    elseif BubbleGum >= 51 then
        TriggerClientEvent('cr-247extras:client:BubbleGumStandFail')
    end
end)

RegisterNetEvent('cr-burnerphones:server:SetSlushyCooldown')
AddEventHandler('cr-burnerphones:server:SetSlushyCooldown', function()
    isSlushyCoolDownActive = true
    Wait((Config.SlushyCooldownTime * 1000) * 60)
    isSlushyCoolDownActive = false
end)

QBCore.Functions.CreateCallback("cr-burnerphones:server:SlushyCooldown",function(source, cb)
    if isSlushyCoolDownActive then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('cr-burnerphones:server:SetSluckyBuckyDonutCooldown')
AddEventHandler('cr-burnerphones:server:SetSluckyBuckyDonutCooldown', function()
    isSluckyBuckyDonutCoolDownActive = true
    Wait((Config.SluckyBuckyDonutCooldownTime * 1000) * 60)
    isSluckyBuckyDonutCoolDownActive = false
end)

QBCore.Functions.CreateCallback("cr-burnerphones:server:SluckyBuckyDonutCooldown",function(source, cb)
    if isSluckyBuckyDonutCoolDownActive then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('cr-burnerphones:server:SetIceCreamCooldown')
AddEventHandler('cr-burnerphones:server:SetIceCreamCooldown', function()
    isIceCreamCoolDownActive = true
    Wait((Config.SluckyBuckyDonutCooldownTime * 1000) * 60)
    isIceCreamCoolDownActive = false
end)

QBCore.Functions.CreateCallback("cr-burnerphones:server:IceCreamCooldown",function(source, cb)
    if isIceCreamCoolDownActive then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('cr-burnerphones:server:SetGumballStandCooldown')
AddEventHandler('cr-burnerphones:server:SetGumballStandCooldown', function()
    isGumballStandCoolDownActive = true
    Wait((Config.GumballStandCooldownTime * 1000) * 60)
    isGumballStandCoolDownActive = false
end)

QBCore.Functions.CreateCallback("cr-burnerphones:server:GumBallStandCooldown",function(source, cb)
    if isGumballStandCoolDownActive then
        cb(true)
    else
        cb(false)
    end
end)