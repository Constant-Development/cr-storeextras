Config = {}

Config.Framework = {

    Target = 'qb-target',
    -- 'qb-target' = QBCore Target
    -- 'qtarget' = QTarget

}

Config.Minigame = 'qb-lock'
 -- 'qb-lock' = Minigame Enabled(QBCore Lock - NP Inspired)
 -- 'qb-skillbar' = Minigame Enabled(QBCore Skillbar)
 -- 'ps-ui' = Minigame Enabled(PS UI Lock Minigame)
 -- false = Minigame Disabled
Config.InteractSound = false
 -- true = Machine Sounds Enabled
 -- false = Machine Sounds Disabled

Config.Cooldowns = {

    Cooldown = true,
    -- true = Cooldowns Active
    -- false = Cooldowns Disabled

    SlushyCooldownTime = 5, -- Time is in Minutes
    SluckyBuckyDonutCooldownTime = 5, -- Time is in Minutes
    IceCreamCooldownTime = 5, -- Time is in Minutes
    GumballStandCooldownTime = 5 -- Time is in Minutes
}

Config.Props = {

    SlushyProp = {
        "prop_slush_dispenser",
        "prop_juice_dispenser",
    },

    DonutProp = {
        "v_ret_247_donuts",
    },

    IceCreamProp = {
        "", -- Unkown
    },

    BubbleGumStandProp = {
        "prop_gumball_03",
    }
}

Config.Prices = {

    RedSlushy = 3,
    GreenSlushy = 3,
    OrangeSlushy = 3,
    YellowSlushy = 3,
    BlueSlushy = 3,
    RainbowSlushy = 3,

    SluckyBuckyDonut = 8,

    VanillaIceCream = 6,
    ChocolateIceCream = 6,
    MintIceCream = 6,
    CookiesAndCreamIceCream = 6,

    GumBall = 1
}

Config.BubbleGumStandFailChance = true
 -- True = Chance for GumBall Stand to not give GumBall
 -- False = Chance Disabled

--Notification Settings
Config.Notify = "qb" -- "qb" = Default (QBCore) | "okok" = OkOkNotify | "mythic" = Mythic Notifications | "tnj" = tnj-notify | "chat" = Simple Chat Message
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