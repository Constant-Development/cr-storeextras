Config = {}

Config.Minigame = true
 -- true = Minigame Enabled(qb-lock)
 -- false = Minigame Disabled(qb-lock)
Config.InteractSound = false
 -- true = Machine Sounds Enabled
 -- false = Machine Sounds Disabled

--Notification Settings
Config.Notify = "qb" --"qb" = Default (QBCore) | "okok" = OkOkNotify | "mythic" = Mythic Notifications | "chat" = Simple Chat Message
Config.Notifications = {
    --Messages
    ["ProgressbarCancelled"] = "You stopped grabbing the Product, why?",
    ["SlushyMinigameFail"] = "You failed to discretely pour the Product...",
    ["SluckyBuckyDonutMinigameFail"] = "You failed to discretely grab the Product...",

    --OkOk Titles
    ["okok_Title"] = "Store Aid"
}