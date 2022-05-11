local QBCore = exports['qb-core']:GetCoreObject()

local slushy = {
    "prop_slush_dispenser",
    "prop_juice_dispenser",
}

local sluckyduckydonut = {
    "v_ret_247_donuts",
}

exports['qb-target']:AddTargetModel(slushy,{
    
    options = {
        {
            type = "client",
            event = "cr-247extras:client:redslushy",
            icon = "fas fa-wine-bottle",
            label = "Make Red Slushy",
            price = 5,
        },
        {
            type = "client",
            event = "cr-247extras:client:greenslushy",
            icon = "fas fa-wine-bottle",
            label = "Make Green Slushy",
            price = 5,
        },
        {
            type = "client",
            event = "cr-247extras:client:orangeslushy",
            icon = "fas fa-wine-bottle",
            label = "Make Orange Slushy",
            price = 5,
        },
        {
            type = "client",
            event = "cr-247extras:client:yellowslushy",
            icon = "fas fa-wine-bottle",
            label = "Make Yellow Slushy",
            price = 5,
        },
        {
            type = "client",
            event = "cr-247extras:client:blueslushy",
            icon = "fas fa-wine-bottle",
            label = "Make Blue Slushy",
            price = 5,
        },
        {
            type = "client",
            event = "cr-247extras:client:rainbowslushy",
            icon = "fas fa-wine-bottle",
            label = "Make Rainbow Slushy",
            price = 5,
        },
    },
    distance = 2.5
})

exports['qb-target']:AddTargetModel(sluckyduckydonut, {
    
    options = {
        {
            type = "client",
            event = "cr-247extras:client:sluckyduckydonut",
            icon = "fas fa-hand-holding",
            label = "Make Slucky Bucky Donut",
            price = 5,
        },
    },
    distance = 2.5
})

RegisterNetEvent('cr-247extras:client:redslushy', function()
    Citizen.Wait(1000)
    local ped = PlayerPedId()
    local seconds = math.random(10,12)
    local circles = math.random(4,8)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        if Config.InteractSound == true then
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-drink", 0.1)
        end
        TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
        QBCore.Functions.Progressbar("red_slushy", "Making a Good Slushy...", 10000, false, true, {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent('cr-247extras:redslushy:GiveItem')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            QBCore.Functions.Notify("Failed...", "error")
            ClearPedTasks(PlayerPedId())
        end)
    else
        QBCore.Functions.Notify("You Failed making a Red Slushy..", "error")
        ClearPedTasks(PlayerPedId())
    end
end)

RegisterNetEvent('cr-247extras:client:greenslushy', function()
    Citizen.Wait(1000)
    local ped = PlayerPedId()
    local seconds = math.random(10,12)
    local circles = math.random(4,8)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        if Config.InteractSound == true then
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-drink", 0.1)
        end
        TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
        QBCore.Functions.Progressbar("green_slushy", "Making a Good Slushy...", 10000, false, true, {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent('cr-247extras:greenslushy:GiveItem')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            QBCore.Functions.Notify("Failed...", "error")
            ClearPedTasks(PlayerPedId())
        end)
    else
        QBCore.Functions.Notify("You Failed making a Green Slushy..", "error")
        ClearPedTasks(PlayerPedId())
    end
end)

RegisterNetEvent('cr-247extras:client:orangeslushy', function()
    Citizen.Wait(1000)
    local ped = PlayerPedId()
    local seconds = math.random(10,12)
    local circles = math.random(4,8)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        if Config.InteractSound == true then
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-drink", 0.1)
        end
        TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
        QBCore.Functions.Progressbar("orange_slushy", "Making a Good Slushy...", 10000, false, true, {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent('cr-247extras:orangeslushy:GiveItem')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            QBCore.Functions.Notify("Failed...", "error")
            ClearPedTasks(PlayerPedId())
        end)
    else
        QBCore.Functions.Notify("You Failed making a Orange Slushy..", "error")
        ClearPedTasks(PlayerPedId())
    end
end)

RegisterNetEvent('cr-247extras:client:yellowslushy', function()
    Citizen.Wait(1000)
    local ped = PlayerPedId()
    local seconds = math.random(10,12)
    local circles = math.random(4,8)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        if Config.InteractSound == true then
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-drink", 0.1)
        end
        TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
        QBCore.Functions.Progressbar("yellow_slushy", "Making a Good Slushy...", 10000, false, true, {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent('cr-247extras:yellowslushy:GiveItem')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            QBCore.Functions.Notify("Failed...", "error")
            ClearPedTasks(PlayerPedId())
        end)
    else
        QBCore.Functions.Notify("You Failed making a Yellow Slushy..", "error")
        ClearPedTasks(PlayerPedId())
    end
end)

RegisterNetEvent('cr-247extras:client:blueslushy', function()
    Citizen.Wait(1000)
    local ped = PlayerPedId()
    local seconds = math.random(10,12)
    local circles = math.random(4,8)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        if Config.InteractSound == true then
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-drink", 0.1)
        end
        TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
        QBCore.Functions.Progressbar("blue_slushy", "Making a Good Slushy...", 10000, false, true, {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent('cr-247extras:blueslushy:GiveItem')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            QBCore.Functions.Notify("Failed...", "error")
            ClearPedTasks(PlayerPedId())
        end)
    else
        QBCore.Functions.Notify("You Failed making a Blue Slushy..", "error")
        ClearPedTasks(PlayerPedId())
    end
end)

RegisterNetEvent('cr-247extras:client:rainbowslushy', function()
    Citizen.Wait(1000)
    local ped = PlayerPedId()
    local seconds = math.random(4,8)
    local circles = math.random(4,8)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        if Config.InteractSound == true then
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-drink", 0.1)
        end
        TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
        QBCore.Functions.Progressbar("rainbow_slushy", "Making a Good Slushy...", 10000, false, true, {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent('cr-247extras:rainbowslushy:GiveItem')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            QBCore.Functions.Notify("Failed...", "error")
            ClearPedTasks(PlayerPedId())
        end)
    else
        QBCore.Functions.Notify("You Failed making a Rainbow Slushy..", "error")
        ClearPedTasks(PlayerPedId())
    end
end)

RegisterNetEvent('cr-247extras:client:sluckyduckydonut', function()
    Citizen.Wait(1000)
    local ped = PlayerPedId()
    local seconds = math.random(4,8)
    local circles = math.random(4,8)
    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
    if success then
        if Config.InteractSound == true then
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "deepfried", 0.1)
        end
        TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
        QBCore.Functions.Progressbar("slucky_bucky_donut", "Grabbing the right Slucky Bucky Donut...", 10000, false, true, {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent('cr-247extras:sluckyduckydonut:GiveItem')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            QBCore.Functions.Notify("Failed...", "error")
            ClearPedTasks(PlayerPedId())
        end)
    else
        QBCore.Functions.Notify("You couldn't grab a Slucky Bucky Donut..", "error")
        ClearPedTasks(PlayerPedId())
    end
end)