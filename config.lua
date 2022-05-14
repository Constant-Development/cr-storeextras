Config = {}

Config.Minigame = true
 -- true = Minigame Enabled(qb-lock)
 -- false = Minigame Disabled(qb-lock)
Config.InteractSound = false
 -- true = Machine Sounds Enabled
 -- false = Machine Sounds Disabled

Config.SlushyProp = {
    "prop_slush_dispenser",
    "prop_juice_dispenser",
}

Config.DonutProp = {
    "v_ret_247_donuts",
}

Config.IceCreamProp = {
    "", -- Unkown LOL
}

Config.BubbleGumStandProp = {
    "prop_gumball_03",
}

Config.Cooldowns = true
 -- true = Cooldowns Active
 -- false = Cooldowns Disabled
Config.SlushyCooldownTime = 5 -- Time is in Minutes
Config.SluckyBuckyDonutCooldownTime = 5 -- Time is in Minutes
Config.GumballStandCooldownTime = 5 -- Time is in Minutes

Config.BubbleGumStandFailChance = true
 -- True = Chance for GumBall Stand to not give GumBall
 -- False = Chance Disabled

--Notification Settings
Config.Notify = "qb" --"qb" = Default (QBCore) | "okok" = OkOkNotify | "mythic" = Mythic Notifications | "chat" = Simple Chat Message
Config.Notifications = {
    -- Success's
    ["SlushyGive"] = "You\'ve poured a Slushy!",
    ["SluckyDonutGive"] = "You\'ve grabbed a Super Donut!",
    ["IceCreamGive"] = "You\'ve scooped some Ice Cream!",
    ["BubbleGumGive"] = "You\'ve received a BubbleGum!",

    -- Cancel's
    ["ProgressbarCancelled"] = "You stopped grabbing the Product, why?",

    -- Fail's
    ["SlushyMinigameFail"] = "You failed to discretely pour the Product...",
    ["SluckyBuckyDonutMinigameFail"] = "You failed to discretely grab the Product...",
    ["IceCreamMinigameFail"] = "You failed to discretely scoop the Product...",
    ["BubbleGumStandFail"] = "You failed to discretely wait on the Product...",
    ["BubbleGumStandFailGive"] = "For some reason the Stand didn\'t give you a GumBall?!",

    -- Cooldown's
    ["SlushyCooldownActive"] = "The Machine seems to have run out of Slush?",
    ["SluckyBuckyDonutCooldownActive"] = "The Machine seems to have run out of Donuts?",
    ["IceCreamCooldownActive"] = "The Machine seems to have run out of Ice Cream?",
    ["BubbleGumStandCooldownActive"] = "The Machine seems to have run out of GumBalls?",

    --OkOk Titles
    ["okok_Title"] = "Store Aid"
}