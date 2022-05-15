local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cr-storeextras:client:SluckyBuckyDonut')
AddEventHandler('cr-storeextras:client:SluckyBuckyDonut', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:SluckyBuckyDonutCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(2,4)
                local circles = math.random(12,18)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "deepfried", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                    QBCore.Functions.Progressbar("slucky_bucky_donut", "Grabbing a Super Donut!", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["SluckyDonutGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveSluckyDonut')
                        TriggerServerEvent('cr-storeextras:server:SetSluckyBuckyDonutCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["SluckyBuckyDonutMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "deepfried", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true)
                QBCore.Functions.Progressbar("slucky_bucky_donut", "Grabbing a Super Donut!", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["SluckyDonutGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveSluckyDonut')
                    TriggerServerEvent('cr-storeextras:server:SetSluckyBuckyDonutCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["SluckyBuckyDonutCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)