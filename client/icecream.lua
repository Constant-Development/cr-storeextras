local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cr-storeextras:client:VanillaIceCream')
AddEventHandler('cr-storeextras:client:VanillaIceCream', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:IceCreamCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(6,12)
                local circles = math.random(5,10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "scoopicecream", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                    QBCore.Functions.Progressbar("vanilla_icecream", "Scooping some Vanilla Ice Cream...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveVanillaIceCream')
                        TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "scoopicecream", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                QBCore.Functions.Progressbar("vanilla_icecream", "Scooping some Vanilla Ice Cream...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveVanillaIceCream')
                    TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["IceCreamCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-storeextras:client:ChocolateIceCream')
AddEventHandler('cr-storeextras:client:ChocolateIceCream', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:IceCreamCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(6,12)
                local circles = math.random(5,10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "scoopicecream", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                    QBCore.Functions.Progressbar("chocolate_icecream", "Scooping some Chocolate Ice Cream...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveChocolateIceCream')
                        TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "scoopicecream", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                QBCore.Functions.Progressbar("chocolate_icecream", "Scooping some Chocolate Ice Cream...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveChocolateIceCream')
                    TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["IceCreamCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-storeextras:client:MintIceCream')
AddEventHandler('cr-storeextras:client:MintIceCream', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:IceCreamCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(6,12)
                local circles = math.random(5,10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "scoopicecream", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                    QBCore.Functions.Progressbar("mint_icecream", "Scooping some Mint Ice Cream...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveMintIceCream')
                        TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "scoopicecream", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                QBCore.Functions.Progressbar("mint_icecream", "Scooping some Mint Ice Cream...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveMintIceCream')
                    TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["IceCreamCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-storeextras:client:CookiesAndCreamIceCream')
AddEventHandler('cr-storeextras:client:CookiesAndCreamIceCream', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:IceCreamCooldown', function(result)
        if not result then
            if Config.Minigame == true then
                local seconds = math.random(6,12)
                local circles = math.random(5,10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "scoopicecream", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                    QBCore.Functions.Progressbar("cookiesandcream_icecream", "Scooping some Cookies & Cream Ice Cream...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        StoreExtraNotifications(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-storeextras:server:GiveCookiesAndCreamIceCream')
                        TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "scoopicecream", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                QBCore.Functions.Progressbar("cookiesandcream_icecream", "Scooping some Cookies & Cream Ice Cream...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    StoreExtraNotifications(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-storeextras:server:GiveCookiesAndCreamIceCream')
                    TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            StoreExtraNotifications(3, Config.Notifications["IceCreamCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)