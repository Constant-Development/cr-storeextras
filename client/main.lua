local QBCore = exports['qb-core']:GetCoreObject()

local slushy = Config.SlushyProp
local sluckyduckydonut = Config.DonutProp
local icecream = Config.IceCreamProp
local gumballstand = Config.BubbleGumStandProp

function StoreExtraNotifications(notifType, message, title)
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

Citizen.CreateThread(function()
    exports['qb-target']:AddTargetModel(slushy,{
        options = {
            {
                type = "client",
                event = "cr-storeextras:client:RedSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Red Slushy",
                price = Config.SlushyCost.RedSlushy,
            },
            {
                type = "client",
                event = "cr-storeextras:client:GreenSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Green Slushy",
                price = Config.SlushyCost.GreenSlushy,
            },
            {
                type = "client",
                event = "cr-storeextras:client:OrangeSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Orange Slushy",
                price = Config.SlushyCost.OrangeSlushy,
            },
            {
                type = "client",
                event = "cr-storeextras:client:YellowSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Yellow Slushy",
                price = Config.SlushyCost.YellowSlushy,
            },
            {
                type = "client",
                event = "cr-storeextras:client:BlueSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Blue Slushy",
                price = Config.SlushyCost.BlueSlushy,
            },
            {
                type = "client",
                event = "cr-storeextras:client:RainbowSlushy",
                icon = "fas fa-wine-bottle",
                label = "Pour Rainbow Slushy",
                price = Config.SlushyCost.RainbowSlushy,
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
                label = "Grab Slucky Bucky Donut",
                price = Config.SluckyBuckyDonutCost,
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
                label = "Scoop Vanilla Ice Cream",
                price = Config.IceCreamCost.VanillaIceCream,
            },
            {
                type = "client",
                event = "cr-storeextras:client:ChocolateIceCream",
                icon = "fas fa-ice-cream",
                label = "Scoop Chocolate Ice Cream",
                price = Config.IceCreamCost.ChocolateIceCream,
            },
            {
                type = "client",
                event = "cr-storeextras:client:MintIceCream",
                icon = "fas fa-ice-cream",
                label = "Scoop Mint Ice Cream",
                price = Config.IceCreamCost.MintIceCream,
            },
            {
                type = "client",
                event = "cr-storeextras:client:CookiesAndCreamIceCream",
                icon = "fas fa-ice-cream",
                label = "Scoop Cookies & Cream Ice Cream",
                price = Config.IceCreamCost.CookiesAndCreamIceCream,
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
                label = "Grab GumBall",
                price = Config.GumBallCost,
            },
        },
        distance = 1.5
    })
end)