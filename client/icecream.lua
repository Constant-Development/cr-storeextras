local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cr-storeextras:client:VanillaIceCream')
AddEventHandler('cr-storeextras:client:VanillaIceCream', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-storeextras:server:IceCreamCooldown', function(result)
        if not result then
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(6, 12)
                local circles = math.random(5, 10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(5, 10), math.random(6, 12))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(1250, 2500),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                    end
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
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(6, 12)
                local circles = math.random(5, 10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(5, 10), math.random(6, 12))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(1250, 2500),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                    end
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
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(6, 12)
                local circles = math.random(5, 10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(5, 10), math.random(6, 12))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(1250, 2500),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                    end
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
            if Config.Framework.Minigame == 'qb-lock' then
                local seconds = math.random(6, 12)
                local circles = math.random(5, 10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds)
                if success then
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end
            elseif Config.Framework.Minigame == 'ps-ui' then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        if Config.Framework.InteractSound == true then
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
                            if Config.Cooldowns.Cooldown == true then
                                TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                            end
                        end, function()
                            ClearPedTasks(PlayerPedId())
                            StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                        end)
                    else
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                    end
                end, math.random(5, 10), math.random(6, 12))
            elseif Config.Framework.Minigame == 'qb-skillbar' then
                local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                Skillbar.Start({
                    duration = math.random(1250, 2500),
                    pos = math.random(10, 30),
                    width = math.random(10, 20),
                }, function()
                    if Config.Framework.InteractSound == true then
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
                        if Config.Cooldowns.Cooldown == true then
                            TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                        end
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        StoreExtraNotifications(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                end, function()
                    ClearPedTasks(PlayerPedId())
                    StoreExtraNotifications(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
                end)
            elseif Config.Framework.Minigame == false then
                if Config.Framework.InteractSound == true then
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
                    if Config.Cooldowns.Cooldown == true then
                        TriggerServerEvent('cr-storeextras:server:SetIceCreamCooldown')
                    end
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
