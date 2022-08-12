local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cr-storeextras:client:BubbleGumStand')
AddEventHandler('cr-storeextras:client:BubbleGumStand', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:GumBallStandCooldown', function(result)
        if not result then
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(5, 10)
                local circles = math.random(3, 5)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "bubblegumstand", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                    QBCore.Functions.Progressbar("bubblegum", "Waiting on a Gumball...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["BubbleGumGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveBubbleGum')
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetGumballStandCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["BubbleGumStandFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "bubblegumstand", 0.3)
                        end
                        TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                        QBCore.Functions.Progressbar("bubblegum", "Waiting on a Gumball...", 10000, false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {}, {}, {}, function()
                            StoreExtraNotifications(1, Config.Notifications["BubbleGumGive"], Config.Notifications["okok_Title"])
                            ClearPedTasks(PlayerPedId())
                            TriggerServerEvent('cr-storeextras:server:GiveBubbleGum')
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetGumballStandCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["BubbleGumStandFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(3, 5), math.random(5, 10))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(1000, 2000),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "bubblegumstand", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                    QBCore.Functions.Progressbar("bubblegum", "Waiting on a Gumball...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["BubbleGumGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveBubbleGum')
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetGumballStandCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["BubbleGumStandFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "bubblegumstand", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                QBCore.Functions.Progressbar("bubblegum", "Waiting on a Gumball...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["BubbleGumGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveBubbleGum')
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetGumballStandCooldown')
                    end
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["BubbleGumStandCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-storeextras:client:BubbleGumStandFail')
AddEventHandler('cr-storeextras:client:BubbleGumStandFail', function()
    if Config.BubbleGumStandFailChance == true then
        StoreExtraNotifications(3, Config.Notifications["BubbleGumStandFailGive"], Config.Notifications["okok_Title"])
    else
        TriggerServerEvent('cr-storeextras:server:GiveBubbleGum')
    end
end)
