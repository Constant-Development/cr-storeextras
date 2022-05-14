local QBCore = exports['qb-core']:GetCoreObject()

local slushy = Config.SlushyProp
local sluckyduckydonut = Config.DonutProp
local icecream = Config.IceCreamProp
local gumballstand = Config.BubbleGumStandProp

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

RegisterNetEvent('cr-247extras:client:RedSlushy')
AddEventHandler('cr-247extras:client:RedSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:SlushyCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveRedSlushy')
                        TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveRedSlushy')
                    TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:GreenSlushy')
AddEventHandler('cr-247extras:client:GreenSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:SlushyCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveGreenSlushy')
                        TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveGreenSlushy')
                    TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:OrangeSlushy')
AddEventHandler('cr-247extras:client:OrangeSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:SlushyCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveOrangeSlushy')
                        TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveOrangeSlushy')
                    TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:YellowSlushy')
AddEventHandler('cr-247extras:client:YellowSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:SlushyCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveYellowSlushy')
                        TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveYellowSlushy')
                    TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:BlueSlushy')
AddEventHandler('cr-247extras:client:BlueSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:SlushyCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(10,12)
                local circles = math.random(4,8)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveBlueSlushy')
                        TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveBlueSlushy')
                    TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:RainbowSlushy')
AddEventHandler('cr-247extras:client:RainbowSlushy', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:SlushyCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(4,8)
                local circles = math.random(8,12)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveRainbowSlushy')
                        TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["SlushyMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["SlushyGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveRainbowSlushy')
                    TriggerServerEvent('cr-247extras:server:SetSlushyCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["SlushyCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:SluckyBuckyDonut')
AddEventHandler('cr-247extras:client:SluckyBuckyDonut', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:SluckyBuckyDonutCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(2,4)
                local circles = math.random(12,18)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["SluckyDonutGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveSluckyDonut')
                        TriggerServerEvent('cr-247extras:server:SetSluckyBuckyDonutCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["SluckyBuckyDonutMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["SluckyDonutGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveSluckyDonut')
                    TriggerServerEvent('cr-247extras:server:SetSluckyBuckyDonutCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["SluckyBuckyDonutCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:VanillaIceCream')
AddEventHandler('cr-247extras:client:VanillaIceCream', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:IceCreamCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(6,12)
                local circles = math.random(5,10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveVanillaIceCream')
                        TriggerServerEvent('cr-247extras:server:SetIceCreamCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveVanillaIceCream')
                    TriggerServerEvent('cr-247extras:server:SetIceCreamCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["IceCreamCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:ChocolateIceCream')
AddEventHandler('cr-247extras:client:ChocolateIceCream', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:IceCreamCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(6,12)
                local circles = math.random(5,10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveChocolateIceCream')
                        TriggerServerEvent('cr-247extras:server:SetIceCreamCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveChocolateIceCream')
                    TriggerServerEvent('cr-247extras:server:SetIceCreamCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["IceCreamCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:MintIceCream')
AddEventHandler('cr-247extras:client:MintIceCream', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:IceCreamCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(6,12)
                local circles = math.random(5,10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveMintIceCream')
                        TriggerServerEvent('cr-247extras:server:SetIceCreamCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveMintIceCream')
                    TriggerServerEvent('cr-247extras:server:SetIceCreamCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["IceCreamCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:CookiesAndCreamIceCream')
AddEventHandler('cr-247extras:client:CookiesAndCreamIceCream', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:IceCreamCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(6,12)
                local circles = math.random(5,10)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
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
                        Notify(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveCookiesAndCreamIceCream')
                        TriggerServerEvent('cr-247extras:server:SetIceCreamCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["IceCreamMinigameFail"], Config.Notifications["okok_Title"])
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
                    Notify(1, Config.Notifications["IceCreamGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveCookiesAndCreamIceCream')
                    TriggerServerEvent('cr-247extras:server:SetIceCreamCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["IceCreamCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:BubbleGumStand')
AddEventHandler('cr-247extras:client:BubbleGumStand', function()
    local ped = PlayerPedId()
    QBCore.Functions.TriggerCallback('cr-247extras:server:GumBallStandCooldown', function(result)
        if result then
            if Config.Minigame == true then
                local seconds = math.random(5,10)
                local circles = math.random(3,5)
                local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
                if success then
                    if Config.InteractSound == true then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "bubblegumstand", 0.3)
                    end
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                    QBCore.Functions.Progressbar("bubblegum", "Waiting on a Gumball...", 10000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                        Notify(1, Config.Notifications["BubbleGumGive"], Config.Notifications["okok_Title"])
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('cr-247extras:server:GiveBubbleGum')
                        TriggerServerEvent('cr-247extras:server:SetGumballStandCooldown')
                    end, function()
                        ClearPedTasks(PlayerPedId())
                        Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                    end)
                else
                ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["BubbleGumStandFail"], Config.Notifications["okok_Title"])
                end
            else
                if Config.InteractSound == true then
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "bubblegumstand", 0.3)
                end
                TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HANG_OUT_STREET", 0, true) -- Change Emote
                QBCore.Functions.Progressbar("bubblegum", "Waiting on a Gumball...", 10000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    Notify(1, Config.Notifications["BubbleGumGive"], Config.Notifications["okok_Title"])
                    ClearPedTasks(PlayerPedId())
                    TriggerServerEvent('cr-247extras:server:GiveBubbleGum')
                    TriggerServerEvent('cr-247extras:server:SetGumballStandCooldown')
                end, function()
                    ClearPedTasks(PlayerPedId())
                    Notify(3, Config.Notifications["ProgressbarCancelled"], Config.Notifications["okok_Title"])
                end)
            end
        else
            Notify(3, Config.Notifications["BubbleGumStandCooldownActive"], Config.Notifications["okok_Title"])
        end
    end)
end)

RegisterNetEvent('cr-247extras:client:BubbleGumStandFail')
AddEventHandler('cr-247extras:client:BubbleGumStandFail', function()
    if Config.BubbleGumStandFailChance == true then
        Notify(3, Config.Notifications["BubbleGumStandFailGive"], Config.Notifications["okok_Title"])
    else
        TriggerServerEvent('cr-247extras:server:GiveBubbleGum')
    end
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddTargetModel(slushy,{
        options = {
            {
                type = "client",
                event = "cr-247extras:client:RedSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Red Slushy",
                price = 3,
            },
            {
                type = "client",
                event = "cr-247extras:client:GreenSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Green Slushy",
                price = 3,
            },
            {
                type = "client",
                event = "cr-247extras:client:OrangeSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Orange Slushy",
                price = 3,
            },
            {
                type = "client",
                event = "cr-247extras:client:YellowSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Yellow Slushy",
                price = 3,
            },
            {
                type = "client",
                event = "cr-247extras:client:BlueSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Blue Slushy",
                price = 3,
            },
            {
                type = "client",
                event = "cr-247extras:client:RainbowSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Rainbow Slushy",
                price = 5,
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddTargetModel(sluckyduckydonut, {
        options = {
            {
                type = "client",
                event = "cr-247extras:client:SluckyBuckyDonut",
                icon = "fas fa-hand-holding",
                label = "Grab Slucky Bucky Donut",
                price = 8,
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddTargetModel(icecream, {
        options = {
            {
                type = "client",
                event = "cr-247extras:client:VanillaIceCream",
                icon = "fas fa-ice-cream",
                label = "Scoop Vanilla Ice Cream",
                price = 6,
            },
            {
                type = "client",
                event = "cr-247extras:client:ChocolateIceCream",
                icon = "fas fa-ice-cream",
                label = "Scoop Chocolate Ice Cream",
                price = 6,
            },
            {
                type = "client",
                event = "cr-247extras:client:MintIceCream",
                icon = "fas fa-ice-cream",
                label = "Scoop Mint Ice Cream",
                price = 6,
            },
            {
                type = "client",
                event = "cr-247extras:client:CookiesAndCreamIceCream",
                icon = "fas fa-ice-cream",
                label = "Scoop Cookies & Cream Ice Cream",
                price = 6,
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddTargetModel(gumballstand, {
        options = {
            {
                type = "client",
                event = "cr-247extras:client:BubbleGumStand",
                icon = "fas fa-coin",
                label = "Grab GumBall",
                price = 1,
            },
        },
        distance = 1.5
    })
end)