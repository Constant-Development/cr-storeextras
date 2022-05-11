# cr-247extras

# Developed By Constant Development

Constant Development Discord: https://discord.gg/gSQbshCNv4

## Dependencies
- [qb-target](https://github.com/Renewed-Scripts/qb-target)

## Features
* Slushy Machine's
* Slucky Bucky Donut Machine's
 * Consumeables for each 'Consumeable'
 * Ability to add 'Benefits' to 'Consumeables'

# To Do List

* Locate SuperDonut Image
* Locate 'Pouring' Sound
* Implement Configurable Cooldown
* Implement Beer Casing Product
* Modulate Entire System

# How To Install

## Step One
* Place the following snippet inside of qb-core/shared/items.lua
```
    ['redslushy'] = {
        ['name'] = 'redslushy',                         
        ['label'] = 'Red Slushy',                     
        ['weight'] = 750,         
        ['type'] = 'item',         
        ['image'] = 'redslushy.png',                
        ['unique'] = true,     
        ['useable'] = true,     
        ['shouldClose'] = true,       
        ['combinable'] = nil,   
        ['description'] = 'Damn a Slushy...',
        ["created"] = nil,
        ["decay"] = 1.0
    },
    ['blueslushy'] = {
        ['name'] = 'blueslushy',                         
        ['label'] = 'Blue Slushy',                     
        ['weight'] = 750,         
        ['type'] = 'item',         
        ['image'] = 'blueslushy.png',                
        ['unique'] = true,     
        ['useable'] = true,     
        ['shouldClose'] = true,       
        ['combinable'] = nil,  
        ['description'] = 'Damn a Slushy...',
        ["created"] = nil,
        ["decay"] = 1.0
    },
    ['greenslushy'] = {
        ['name'] = 'greenslushy',                         
        ['label'] = 'Green Slushy',                     
        ['weight'] = 750,         
        ['type'] = 'item',         
        ['image'] = 'greenslushy.png',                
        ['unique'] = true,     
        ['useable'] = true,     
        ['shouldClose'] = true,       
        ['combinable'] = nil,
        ['description'] = 'Damn a Slushy...',
        ["created"] = nil,
        ["decay"] = 1.0
    },
    ['yellowslushy'] = {
        ['name'] = 'yellowslushy',                         
        ['label'] = 'Yellow Slushy',                     
        ['weight'] = 750,         
        ['type'] = 'item',         
        ['image'] = 'yellowslushy.png',                
        ['unique'] = true,     
        ['useable'] = true,     
        ['shouldClose'] = true,       
        ['combinable'] = nil,
        ['description'] = 'Damn a Slushy...',
        ["created"] = nil,
        ["decay"] = 1.0
    },
    ['orangeslushy'] = {
        ['name'] = 'orangeslushy',                         
        ['label'] = 'Orange Slushy',                     
        ['weight'] = 750,         
        ['type'] = 'item',         
        ['image'] = 'orangeslushy.png',                
        ['unique'] = true,     
        ['useable'] = true,     
        ['shouldClose'] = true,       
        ['combinable'] = nil,
        ['description'] = 'Damn a Slushy...',
        ["created"] = nil,
        ["decay"] = 1.0
    },
    ['rainbowslushy'] = {
        ['name'] = 'rainbowslushy',                         
        ['label'] = 'Rainbow Slushy',                     
        ['weight'] = 750,         
        ['type'] = 'item',         
        ['image'] = 'slushy.png',                
        ['unique'] = true,     
        ['useable'] = true,     
        ['shouldClose'] = true,       
        ['combinable'] = nil,
        ['description'] = 'Damn a Slushy...',
        ["created"] = nil,
        ["decay"] = 1.0
    },
    ["superdonut"] = {
        ["name"] = "superdonut",
        ["label"] = "Slucky Bucky Donut",
        ["weight"] = 200,
        ["type"] = "item",
        ["image"] = "superdonut.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "A Donut filled with Juices!"
    },
```
* If you are using a base Inventory(Without Decay) remove "created" and "decay"
* If you are using a base Inventory(With Decay) remove "created"

## Step Two
* Place the following snippet inside of qb-smallresources/config.lua
```
ConsumeablesEatSuperDonut = {
    ["superdonut"] = math.random(5, 30),
}

ConsumeablesSlushy = {
    ["redslushy"] = math.random(15, 25),
    ["blueslushy"] = math.random(15, 25),
    ["yellowslushy"] = math.random(15, 25),
    ["greenslushy"] = math.random(15, 25),
    ["rainbowslushy"] = math.random(15, 25),
}
```

## Step Three
* Place the following snippet inside of qb-smallresources/client/consumeables.lua
```
function AddArmor()
    local a = 15
    while a > 0 do
        Wait(math.random(750, 1150))
        a = a - 1
        AddArmourToPed(PlayerPedId(), 1)
    end
end

RegisterNetEvent('consumables:client:slushy', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar("drink_something", "Drinking Slushy...", 3500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesSlushy[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        AddArmor(3)
    end)
end)

local function RunFast()
    local startStamina = 3

    SetRunSprintMultiplierForPlayer(PlayerId(), 1.2)
    while startStamina > 0 do
        Wait(1000)
        startStamina = startStamina - 1
        --RestorePlayerStamina(PlayerId(), 1.0)
    end
    startStamina = 0
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

RegisterNetEvent('consumables:client:EatSuperDonut', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"donut"})
    QBCore.Functions.Progressbar("eat_something", "Eating..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        RunFast()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEatSuperDonut[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 8))
    end)
end)
```

## Step Four
* Place the following snippet inside of qb-smallresources/server/consumeables.lua
```
QBCore.Functions.CreateUseableItem("rainbowslushy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:slushy", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("redslushy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:slushy", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("greenslushy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:slushy", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("yellowslushy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:slushy", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("orangeslushy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:slushy", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("blueslushy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:slushy", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("superdonut", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatSuperDonut", src, item.name)
    end
end)
```

# Extra Installation Factors

## Factor One
* Within the 'images' File you will find Images relating to each Item.
 * If you wish to use these Images, you may.

* Inserting an Image can be done with base QBCore Inventory an LJ Inventory by placing the Image inside of qb/lj-inventory/html/images

## Factor Two
* Within the 'sound' File you will find a Sound relating to the 'Functions
 * If you wish to use these Sounds, you may.

* Inserting a Sound would be done by locating your interact-sound file and further locating 'Config.InteractSound' and setting it to 'true'
