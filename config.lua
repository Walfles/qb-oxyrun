-- Walfles

Config = {}

-- You Can Edit this to your liking
Config.MinimumOxyRunPolice = 0

-- Location of ped
Config.Location = {
    ["BeerMan"] = {
    	["ped"] = 'a_m_o_soucent_03',
    	["scenario"] = "WORLD_HUMAN_BUM_STANDING",
    	["coords"] = vector4(716.63, -699.74, 26.55, 244.75)
    },
    ["2ndman"] = {
    	["scenario"] = "WORLD_HUMAN_CLIPBOARD",
    	["ped"] = 'a_m_y_bevhills_01',
    	["label"] = "The Man",
    	["blipsprite"] = 615,
    	["showblip"] = true,
    	["blipcolor"] = 0,
    	["coords"] = vector4(-77.17, 369.53, 112.46, 135.03)
    }
}

-- Target
Config.Ped1 = {
    "a_m_o_soucent_03"
}
exports['qb-target']:AddTargetModel(Config.Ped1, {
	options = {
        {
            type = "client",
            event = "qb-oxyrun:checkingforpolice",
            icon = "fa-solid fa-beer-mug-empty",
            label = "Talk To Man"
        },
	},
	distance = 2.5,
})

-- -- 2nd Target
Config.Ped2 = {
    "a_m_y_bevhills_01"
}
exports['qb-target']:AddTargetModel(Config.Ped2, {
	options = {
        {
            type = "client",
            event = "qb-oxyrun:onlistcheck",
            icon = "fa-solid fa-clipboard",
            label = "Check If You Are On The List"
        },
	},
	distance = 2.5,
})
