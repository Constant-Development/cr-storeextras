local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cr-storeextras:client:RedSlushy')
AddEventHandler('cr-storeextras:client:RedSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:SlushyCooldown', function(result)
        if not result then
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(10, 12)
                local circles = math.random(4, 8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(4, 8), math.random(10, 12))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(3500, 5000),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end
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
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(10, 12)
                local circles = math.random(4, 8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(4, 8), math.random(10, 12))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(3500, 5000),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end
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
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(10, 12)
                local circles = math.random(4, 8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(4, 8), math.random(10, 12))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(3500, 5000),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end
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
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(10, 12)
                local circles = math.random(4, 8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(4, 8), math.random(10, 12))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(3500, 5000),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end
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
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(10, 12)
                local circles = math.random(4, 8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(4, 8), math.random(10, 12))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(3500, 5000),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end
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
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(4, 8)
                local circles = math.random(6, 10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(6, 10), math.random(4, 8))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(1250, 2000),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetSlushyCooldown')
                    end
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
