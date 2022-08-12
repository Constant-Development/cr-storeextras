# cr-storeextras

# Developed By Constant Development

[Constant Development Discord](https://discord.gg/gSQbshCNv4)
[Constant Development Tebex](https://constant-development.tebex.io/)

## Dependencies
- [qb-target](https://github.com/Renewed-Scripts/qb-target)
- [qb-lock](https://github.com/Nathan-FiveM/qb-lock)

## Features
* Consumeables & Benefits for each 'Consumeable'
* Slushy Machine System's
* Slucky Bucky Donut Machine System's
* Ice Cream Freezer System's
* GumBall Stand System's
* Minigame Configuration
* Custom Prop Configuration

## Optional Additions
* qb-lock (QBCore NP Inspired Lock System)
* ps-ui (Project Sloth UI Lock System)
* qb-skillbar (QBCore Skillbar)

## To Do List

* Modulate Entire System

# How To Install

* If you encounter any issues whilst Installing or Using/Enforcing this Resource, please feel free to Open a Ticket within the [Constant Development Discord](https://discord.gg/gSQbshCNv4).

## QBCore Shared Lua Additions
* Place the following snippet inside of qb-core/shared/items.lua
```
    ['redslushy'] = {    ['name'] = 'redslushy',                             ['label'] = 'Red Slushy',                         ['weight'] = 750,             ['type'] = 'item',             ['image'] = 'redslushy.png',                    ['unique'] = true,         ['useable'] = true,         ['shouldClose'] = true,           ['combinable'] = nil,       ['description'] = 'Damn a Slushy...',    ["created"] = nil,    ["decay"] = 1.0 },
    ['blueslushy'] = {    ['name'] = 'blueslushy',                             ['label'] = 'Blue Slushy',                         ['weight'] = 750,             ['type'] = 'item',             ['image'] = 'blueslushy.png',                    ['unique'] = true,         ['useable'] = true,         ['shouldClose'] = true,           ['combinable'] = nil,      ['description'] = 'Damn a Slushy...',    ["created"] = nil,    ["decay"] = 1.0 },
    ['greenslushy'] = {    ['name'] = 'greenslushy',                             ['label'] = 'Green Slushy',                         ['weight'] = 750,             ['type'] = 'item',             ['image'] = 'greenslushy.png',                    ['unique'] = true,         ['useable'] = true,         ['shouldClose'] = true,           ['combinable'] = nil,    ['description'] = 'Damn a Slushy...',    ["created"] = nil,    ["decay"] = 1.0 },
    ['yellowslushy'] = {    ['name'] = 'yellowslushy',                             ['label'] = 'Yellow Slushy',                         ['weight'] = 750,             ['type'] = 'item',             ['image'] = 'yellowslushy.png',                    ['unique'] = true,         ['useable'] = true,         ['shouldClose'] = true,           ['combinable'] = nil,    ['description'] = 'Damn a Slushy...',    ["created"] = nil,    ["decay"] = 1.0},
    ['orangeslushy'] = {    ['name'] = 'orangeslushy',                             ['label'] = 'Orange Slushy',                         ['weight'] = 750,             ['type'] = 'item',             ['image'] = 'orangeslushy.png',                    ['unique'] = true,         ['useable'] = true,         ['shouldClose'] = true,           ['combinable'] = nil,    ['description'] = 'Damn a Slushy...',    ["created"] = nil,    ["decay"] = 1.0 },
    ['rainbowslushy'] = {    ['name'] = 'rainbowslushy',                             ['label'] = 'Rainbow Slushy',                         ['weight'] = 750,             ['type'] = 'item',             ['image'] = 'rainbowslushy.png',                    ['unique'] = true,         ['useable'] = true,         ['shouldClose'] = true,           ['combinable'] = nil,    ['description'] = 'Damn a Slushy...',    ["created"] = nil,    ["decay"] = 1.0 },
    ["superdonut"] = {    ["name"] = "superdonut",    ["label"] = "Slucky Bucky Donut",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "superdonut.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A Donut filled with Juices!",    ["created"] = nil,    ["decay"] = 3.0 },
    ["vanillaicecream"] = {    ["name"] = "vanillaicecream",    ["label"] = "Vanilla Ice Cream",    ["weight"] = 350,    ["type"] = "item",    ["image"] = "vanillaicecream.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A bowl filled with Vanilla Ice Cream!",    ["created"] = nil,    ["decay"] = 0.5 },
    ["chocolateicecream"] = {    ["name"] = "chocolateicecream",    ["label"] = "Chocolate Ice Cream",    ["weight"] = 350,    ["type"] = "item",    ["image"] = "chocolateicecream.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A bowl filled with Chocolate Ice Cream!",    ["created"] = nil,    ["decay"] = 0.5 },
    ["minticecream"] = {    ["name"] = "minticecream",    ["label"] = "Mint Ice Cream",    ["weight"] = 350,    ["type"] = "item",    ["image"] = "minticecream.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A bowl filled with Mint Ice Cream!",    ["created"] = nil,    ["decay"] = 0.5 },
    ["cookiesandcreamicecream"] = {    ["name"] = "cookiesandcreamicecream",    ["label"] = "Cookies & Cream Ice Cream",    ["weight"] = 350,    ["type"] = "item",    ["image"] = "cookiesandcreamicecream.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A bowl filled with Cookies & Cream Ice Cream!",    ["created"] = nil,    ["decay"] = 0.5 },
    ["bubblegum_gumball"] = {    ["name"] = "bubblegum_gumball",    ["label"] = "BubbleGum GumBall",    ["weight"] = 50,    ["type"] = "item",    ["image"] = "bubblegum_gumball.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A BubbleGum GumBall from the local Store!",    ["created"] = nil,    ["decay"] = 6.5 },
    ["blueberry_gumball"] = {    ["name"] = "blueberry_gumball",    ["label"] = "Blueberry GumBall",    ["weight"] = 50,    ["type"] = "item",    ["image"] = "blueberry_gumball.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A Blueberry GumBall from the local Store!",    ["created"] = nil,    ["decay"] = 6.5 },
    ["banana_gumball"] = {    ["name"] = "banana_gumball",    ["label"] = "Banana GumBall",    ["weight"] = 50,    ["type"] = "item",    ["image"] = "banana_gumball.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A Banana GumBall from the local Store!",    ["created"] = nil,    ["decay"] = 6.5 },
    ["mint_gumball"] = {    ["name"] = "mint_gumball",    ["label"] = "Mint GumBall",    ["weight"] = 50,    ["type"] = "item",    ["image"] = "mint_gumball.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A Mint GumBall from the local Store!",    ["created"] = nil,    ["decay"] = 6.5 },
    ["cherry_gumball"] = {    ["name"] = "cherry_gumball",    ["label"] = "Cherry GumBall",    ["weight"] = 50,    ["type"] = "item",    ["image"] = "cherry_gumball.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A Cherry GumBall from the local Store!",    ["created"] = nil,    ["decay"] = 6.5 },
```
* If you are using a base Inventory(Without Decay) remove "created" and "decay"
* If you are using a base Inventory(With Decay) remove "created"

# Specific Resource Installation

## qb-smallresources

### Step One
* Place the following snippet inside of qb-smallresources/config.lua
```
ConsumeablesEatSuperDonut = {
    ["superdonut"] = math.random(5, 30),
}

ConsumeablesSlushy = {
    ["redslushy"] = math.random(15, 25),
    ["orangeslushy"] = math.random(15, 25),
    ["blueslushy"] = math.random(15, 25),
    ["yellowslushy"] = math.random(15, 25),
    ["greenslushy"] = math.random(15, 25),
    ["rainbowslushy"] = math.random(15, 25),
}

ConsumeablesEatIceCream = {
    ["vanillaicecream"] = math.random(12, 20),
    ["chocolateicecream"] = math.random(12, 20),
    ["minticecream"] = math.random(15, 24),
    ["cookiesandcreamicecream"] = math.random(18, 26),
}

ConsumeablesEatGumBall = {
    ["bubblegum_gumball"] = math.random(6, 8),
    ["blueberry_gumball"] = math.random(6, 8),
    ["banana_gumball"] = math.random(6, 8),
    ["mint_gumball"] = math.random(6, 8),
    ["cherry_gumball"] = math.random(6, 8),
}
```

### Step Two 
* Replace the following 'AddArmor' Function inside of qb-smallresources/client/consumeables.lua
```
function AddArmor()
    local a = 15
    while a > 0 do
        Wait(math.random(750, 1150))
        a = a - 1
        AddArmourToPed(PlayerPedId(), 1)
    end
end
```

### Step Three
* Place the following snippet inside of qb-smallresources/client/consumeables.lua
```
RegisterNetEvent('consumables:client:slushy', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar("drink_something", "Drinking Slushy...", 3500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        AddArmor(3)
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesSlushy[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
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
        ClearPedTasks(PlayerPedId())
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        RunFast()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEatSuperDonut[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 8))
    end)
end)

local function BrainFreeze()
    local startStamina = 3
    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.15)
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.5)
    while startStamina > 0 do
        Wait(2500)
        ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.18)
        startStamina = startStamina - 1
        --RestorePlayerStamina(PlayerId(), 1.0)
    end
    startStamina = 0
    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.15)
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

RegisterNetEvent('consumables:client:EatIceCream', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"bowl"})
    QBCore.Functions.Progressbar("eat_icecream", "Eating...", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        BrainFreeze()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEatIceCream[itemName])
        TriggerServerEvent('hud:server:GainStress', math.random(2, 5))
    end)
end)

local function GumBall()
    local startStamina = 3
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.2)
    while startStamina > 0 do
        Wait(500)
        startStamina = startStamina - 1
    end
    startStamina = 0
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

RegisterNetEvent('consumables:client:EatGumBall', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    QBCore.Functions.Progressbar("eat_gumball", "Eating...", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        GumBall()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEatGumBall[itemName])
    end)
end)
```
* If you don't want the "Effects", make sure to remove 'RunFast' and 'AddArmor' although 'AddArmor' shouldn't be removed from you're qb-smallresources entirely rather just the Slushy Event.

### Step Four
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

QBCore.Functions.CreateUseableItem("vanillaicecream", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatIceCream", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("chocolateicecream", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatIceCream", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("minticecream", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatIceCream", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cookiesandcreamicecream", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatIceCream", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("bubblegum_gumball", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatGumBall", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("blueberry_gumball", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatGumBall", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("banana_gumball", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatGumBall", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("mint_gumball", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatGumBall", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cherry_gumball", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatGumBall", src, item.name)
    end
end)
```

## jim-consumeables

### Step One
* Note: If you don't want the Benefits, than remove them from the certain stands.
* Example: Slushies have an Armor and Stress Benefit, you can remove them by setting the 'Factors' to 0.
```
		-- Slushy
		["redslushy"] = { 	      emote = "cup", 	   time = math.random(5000, 6000),  stress = math.random(2, 4), heal = 0, armor = 3, 				 type = "drink",   stats = { thirst = math.random(15, 25), }},
		["blueslushy"] = { 	      emote = "cup", 	   time = math.random(5000, 6000),  stress = math.random(2, 4), heal = 0, armor = 3, 				 type = "drink",   stats = { thirst = math.random(15, 25), }},
		["greenslushy"] = { 	  emote = "cup", 	   time = math.random(5000, 6000),  stress = math.random(2, 4), heal = 0, armor = 3, 				 type = "drink",   stats = { thirst = math.random(15, 25), }},
		["yellowslushy"] = { 	  emote = "cup", 	   time = math.random(5000, 6000),  stress = math.random(2, 4), heal = 0, armor = 3, 				 type = "drink",   stats = { thirst = math.random(15, 25), }},
		["orangeslushy"] = { 	  emote = "cup", 	   time = math.random(5000, 6000),  stress = math.random(2, 4), heal = 0, armor = 3, 				 type = "drink",   stats = { thirst = math.random(15, 25), }},
		["rainbowslushy"] = { 	  emote = "cup", 	   time = math.random(5000, 6000),  stress = math.random(2, 4), heal = 0, armor = math.random(3, 8), type = "drink",   stats = { thirst = math.random(15, 30), }},
        -- Super Donut
		["superdonut"] = { 		  emote = "donut",     time = math.random(5000, 6000),  stress = math.random(2, 8), heal = 0, armor = 0, 				 type = "food",    stats = { effect = "stamina", time = math.random(2500, 15000), amount = 1, hunger = math.random(10, 20), canOD = false }},
        -- Ice Cream
		["vanillaicecream"] = {           emote = "eat", 	   time = math.random(2500, 5000),  stress = math.random(2, 4), heal = 0, 				  armor = 0, 	type = "food",    stats = { hunger = math.random(5, 15), }},
		["chocolateicecream"] = {         emote = "eat", 	   time = math.random(2500, 5000),  stress = math.random(2, 4), heal = 0, 				  armor = 0, 	type = "food",    stats = { hunger = math.random(5, 15), }},
		["minticecream"] = {              emote = "eat", 	   time = math.random(2500, 5000),  stress = math.random(2, 4), heal = 0, 				  armor = 0, 	type = "food",    stats = { hunger = math.random(5, 15), }},
		["cookiesandcreamicecream"] = {   emote = "eat", 	   time = math.random(2500, 5000),  stress = math.random(2, 4), heal = 0, 				  armor = 0, 	type = "food",    stats = { hunger = math.random(5, 15), }},
		-- Gumballs
		["bubblegum_gumball"] = {         emote = "eat", 	   time = math.random(1000, 2500),  stress = 3,  				heal = math.random(1, 3), armor = 0, 	type = "food",    stats = { hunger = math.random(1, 5), }},
		["blueberry_gumball"] = {         emote = "eat", 	   time = math.random(1000, 2500),  stress = 3,  				heal = math.random(1, 3), armor = 0, 	type = "food",    stats = { hunger = math.random(1, 5), }},
		["mint_gumball"] = {              emote = "eat", 	   time = math.random(1000, 2500),  stress = 3,  				heal = math.random(1, 3), armor = 0, 	type = "food",    stats = { hunger = math.random(1, 5), }},
		["cherry_gumball"] = {            emote = "eat", 	   time = math.random(1000, 2500),  stress = 3,  				heal = math.random(1, 3), armor = 0, 	type = "food",    stats = { hunger = math.random(1, 5), }},
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
