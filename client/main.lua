local QBCore = exports['qb-core']:GetCoreObject()

local slushy = Config.Props.SlushyProp
local sluckyduckydonut = Config.Props.DonutProp
local icecream = Config.Props.IceCreamProp
local gumballstand = Config.Props.BubbleGumStandProp

function StoreExtraNotifications(notifType, message, title)
	if Config.Notify == "qb" then
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
    elseif Config.Notify == "tnj" then
        if notifType == 1 then
            exports['tnj-notify']:Notify(message, 'success', 3000)
		elseif notifType == 2 then
            exports['tnj-notify']:Notify(message, 'primary', 3000)
		elseif notifType == 3 then
            exports['tnj-notify']:Notify(message, 'error', 3000)
		end
	elseif Config.Notify == "chat" then
		TriggerEvent('chatMessage', message)
	end
end

Citizen.CreateThread(function()
    if Config.Framework.Target == 'qb-target' then
        exports['qb-target']:AddTargetModel(slushy,{
            options = {
                {
                    type = "client",
                    event = "cr-storeextras:client:RedSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Red Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:GreenSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Green Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:OrangeSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Orange Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:YellowSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Yellow Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:BlueSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Blue Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:RainbowSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Rainbow Slushy"
                },
            },
            distance = 1.5
        })
        exports['qb-target']:AddTargetModel(sluckyduckydonut, {
            options = {
                {
                    type = "client",
                    event = "cr-storeextras:client:SluckyBuckyDonut",
                    icon = "fas fa-hand-holding",
                    label = "Grab Slucky Bucky Donut"
                },
            },
            distance = 1.5
        })
        exports['qb-target']:AddTargetModel(icecream, {
            options = {
                {
                    type = "client",
                    event = "cr-storeextras:client:VanillaIceCream",
                    icon = "fas fa-ice-cream",
                    label = "Scoop Vanilla Ice Cream"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:ChocolateIceCream",
                    icon = "fas fa-ice-cream",
                    label = "Scoop Chocolate Ice Cream"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:MintIceCream",
                    icon = "fas fa-ice-cream",
                    label = "Scoop Mint Ice Cream"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:CookiesAndCreamIceCream",
                    icon = "fas fa-ice-cream",
                    label = "Scoop Cookies & Cream Ice Cream"
                },
            },
            distance = 1.5
        })
        exports['qb-target']:AddTargetModel(gumballstand, {
            options = {
                {
                    type = "client",
                    event = "cr-storeextras:client:BubbleGumStand",
                    icon = "fas fa-coin",
                    label = "Grab GumBall"
                },
            },
            distance = 1.5
        })
    elseif Config.Framework.Target == 'qtarget' then
        exports['qtarget']:AddTargetModel(slushy,{
            options = {
                {
                    type = "client",
                    event = "cr-storeextras:client:RedSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Red Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:GreenSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Green Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:OrangeSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Orange Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:YellowSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Yellow Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:BlueSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Blue Slushy"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:RainbowSlushy",
                    icon = "fas fa-wine-bottle",
                    label = "Pour Rainbow Slushy"
                },
            },
            distance = 1.5
        })
        exports['qtarget']:AddTargetModel(sluckyduckydonut, {
            options = {
                {
                    type = "client",
                    event = "cr-storeextras:client:SluckyBuckyDonut",
                    icon = "fas fa-hand-holding",
                    label = "Grab Slucky Bucky Donut"
                },
            },
            distance = 1.5
        })
        exports['qtarget']:AddTargetModel(icecream, {
            options = {
                {
                    type = "client",
                    event = "cr-storeextras:client:VanillaIceCream",
                    icon = "fas fa-ice-cream",
                    label = "Scoop Vanilla Ice Cream"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:ChocolateIceCream",
                    icon = "fas fa-ice-cream",
                    label = "Scoop Chocolate Ice Cream"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:MintIceCream",
                    icon = "fas fa-ice-cream",
                    label = "Scoop Mint Ice Cream"
                },
                {
                    type = "client",
                    event = "cr-storeextras:client:CookiesAndCreamIceCream",
                    icon = "fas fa-ice-cream",
                    label = "Scoop Cookies & Cream Ice Cream"
                },
            },
            distance = 1.5
        })
        exports['qtarget']:AddTargetModel(gumballstand, {
            options = {
                {
                    type = "client",
                    event = "cr-storeextras:client:BubbleGumStand",
                    icon = "fas fa-coin",
                    label = "Grab GumBall"
                },
            },
            distance = 1.5
        })
    end
end)
