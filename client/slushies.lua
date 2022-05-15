local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cr-storeextras:client:RedSlushy')
AddEventHandler('cr-storeextras:client:RedSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:SlushyCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                    QBCore.Functions.Progressbar("red_slushy", "Pouring a Red Slushy...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveRedSlushy')
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                QBCore.Functions.Progressbar("red_slushy", "Pouring a Red Slushy...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveRedSlushy')
                    TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-storeextras:client:GreenSlushy')
AddEventHandler('cr-storeextras:client:GreenSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:SlushyCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                    QBCore.Functions.Progressbar("green_slushy", "Pouring a Green Slushy...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveGreenSlushy')
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                QBCore.Functions.Progressbar("green_slushy", "Pouring a Green Slushy...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveGreenSlushy')
                    TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-storeextras:client:OrangeSlushy')
AddEventHandler('cr-storeextras:client:OrangeSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:SlushyCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                    QBCore.Functions.Progressbar("orange_slushy", "Pouring a Orange Slushy...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveOrangeSlushy')
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                QBCore.Functions.Progressbar("orange_slushy", "Pouring a Orange Slushy...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveOrangeSlushy')
                    TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-storeextras:client:YellowSlushy')
AddEventHandler('cr-storeextras:client:YellowSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:SlushyCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                    QBCore.Functions.Progressbar("yellow_slushy", "Pouring a Yellow Slushy...", 10000, false, true, {
                       disableMovement = true,
                       disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                   }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveYellowSlushy')
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
               if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                QBCore.Functions.Progressbar("yellow_slushy", "Pouring a Yellow Slushy...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveYellowSlushy')
                    TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-storeextras:client:BlueSlushy')
AddEventHandler('cr-storeextras:client:BlueSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:SlushyCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                    QBCore.Functions.Progressbar("blue_slushy", "Pouring a Blue Slushy...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveBlueSlushy')
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                QBCore.Functions.Progressbar("blue_slushy", "Pouring a Blue Slushy...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveBlueSlushy')
                    TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-storeextras:client:RainbowSlushy')
AddEventHandler('cr-storeextras:client:RainbowSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:SlushyCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(4,8)
                local circles = math.random(8,12)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                    QBCore.Functions.Progressbar("rainbow_slushy", "Pouring a Rainbow Slushy...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveRainbowSlushy')
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "pour-slushy", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                QBCore.Functions.Progressbar("rainbow_slushy", "Pouring a Rainbow Slushy...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveRainbowSlushy')
                    TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)