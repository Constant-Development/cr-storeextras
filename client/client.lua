local QBCore = exports['qb-core']:GetCoreObject()

local slushy = {
    "prop_slush_dispenser",
    "prop_juice_dispenser",
}
local sluckyduckydonut = {
    "v_ret_247_donuts",
}

local function Notify(notifType, message, title)
	if Config.Notify == 'qb' then
		if notifType == 1 then
			QBCore.Functions.Notify(message, 'success')
		elseif notifType == 2 then
			QBCore.Functions.Notify(message, 'primary')
		elseif notifType == 3 then
			QBCore.Functions.Notify(message, 'error')
		end
	elseif Config.Notify == "okok" then
		if notifType == 1 then
			exports['okokNotify']:Alert(title, message, 3000, 'success')
		elseif notifType == 2 then
			exports['okokNotify']:Alert(title, message, 3000, 'info')
		elseif notifType == 3 then
			exports['okokNotify']:Alert(title, message, 3000, 'error')
		end
	elseif Config.Notify == "mythic" then
		if notifType == 1 then
			exports['mythic_notify']:DoHudText('success', message)
		elseif notifType == 2 then
			exports['mythic_notify']:DoHudText('inform', message)
		elseif notifType == 3 then
			exports['mythic_notify']:DoHudText('error', message)
		end
	elseif Config.Notify == 'chat' then
		TriggerEvent('chatMessage', message)
	end
end

RegisterNetEvent('cr-247extras:client:redslushy', function()
    local ped = PlayerPedId()
    if Config.Minigame == true then
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
                TriggerServerEvent('cr-247extras:server:GiveRedSlushy')
                ClearPedTasks(PlayerPedId())
            end, function() -- Cancel
                ClearPedTasks(PlayerPedId())
                Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
            end)
        else
            Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
            ClearPedTasks(PlayerPedId())
        end
    else
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
            TriggerServerEvent('cr-247extras:server:GiveRedSlushy')
            ClearPedTasks(PlayerPedId())
         end, function() -- Cancel
            ClearPedTasks(PlayerPedId())
            Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
        end)
    end
end)

RegisterNetEvent('cr-247extras:client:greenslushy', function()
    local ped = PlayerPedId()
    if Config.Minigame == true then
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
                TriggerServerEvent('cr-247extras:server:GiveGreenSlushy')
                ClearPedTasks(PlayerPedId())
            end, function() -- Cancel
                ClearPedTasks(PlayerPedId())
                Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
            end)
        else
            Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
            ClearPedTasks(PlayerPedId())
        end
    else
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
            TriggerServerEvent('cr-247extras:server:GiveGreenSlushy')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
             ClearPedTasks(PlayerPedId())
            Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
        end)
    end
end)

RegisterNetEvent('cr-247extras:client:orangeslushy', function()
    local ped = PlayerPedId()
    if Config.Minigame == true then
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
                TriggerServerEvent('cr-247extras:server:GiveOrangeSlushy')
                ClearPedTasks(PlayerPedId())
            end, function() -- Cancel
                ClearPedTasks(PlayerPedId())
                Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
            end)
        else
            Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
            ClearPedTasks(PlayerPedId())
        end
    else
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
            TriggerServerEvent('cr-247extras:server:GiveOrangeSlushy')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            ClearPedTasks(PlayerPedId())
            Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
        end)
    end
end)

RegisterNetEvent('cr-247extras:client:yellowslushy', function()
    local ped = PlayerPedId()
    if Config.Minigame == true then
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
                TriggerServerEvent('cr-247extras:server:GiveYellowSlushy')
                ClearPedTasks(PlayerPedId())
            end, function() -- Cancel
                ClearPedTasks(PlayerPedId())
                Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
            end)
        else
            Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
            ClearPedTasks(PlayerPedId())
        end
    else
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
            TriggerServerEvent('cr-247extras:server:GiveYellowSlushy')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            ClearPedTasks(PlayerPedId())
            Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
        end)
    end
end)

RegisterNetEvent('cr-247extras:client:blueslushy', function()
    local ped = PlayerPedId()
    if Config.Minigame == true then
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
                TriggerServerEvent('cr-247extras:server:GiveBlueSlushy')
                ClearPedTasks(PlayerPedId())
            end, function() -- Cancel
                ClearPedTasks(PlayerPedId())
                Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
            end)
        else
            Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
            ClearPedTasks(PlayerPedId())
        end
    else
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
            TriggerServerEvent('cr-247extras:server:GiveBlueSlushy')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            ClearPedTasks(PlayerPedId())
            Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
        end)
    end
end)

RegisterNetEvent('cr-247extras:client:rainbowslushy', function()
    local ped = PlayerPedId()
    if Config.Minigame == true then
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
                TriggerServerEvent('cr-247extras:server:GiveRainbowSlushy')
                ClearPedTasks(PlayerPedId())
            end, function() -- Cancel
                ClearPedTasks(PlayerPedId())
                Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
            end)
        else
            Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
            ClearPedTasks(PlayerPedId())
        end
    else
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
            TriggerServerEvent('cr-247extras:server:GiveRainbowSlushy')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            ClearPedTasks(PlayerPedId())
            Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
        end)
    end
end)

RegisterNetEvent('cr-247extras:client:sluckyduckydonut', function()
    local ped = PlayerPedId()
    if Config.Minigame == true then
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
                TriggerServerEvent('cr-247extras:server:GiveSluckyDonut')
                ClearPedTasks(PlayerPedId())
            end, function() -- Cancel
                ClearPedTasks(PlayerPedId())
                Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
            end)
        else
            Notify(3, Config.Notifications["SluckyBuckyDonutMinigameFail"], Config.Notifications["okok_Title"])
            ClearPedTasks(PlayerPedId())
        end
    else
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
            TriggerServerEvent('cr-247extras:server:GiveSluckyDonut')
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            ClearPedTasks(PlayerPedId())
            Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
        end)
    end
end)

Citizen.CreateThread(function()
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
end)