-- Walfles
Config = {}

-- Start
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

-- 1
Config.Man1 = {
    "a_m_y_bevhills_01"
}
exports['qb-target']:AddTargetModel(Config.Man1, {
	options = {
        {
            type = "client",
            event = "qb-oxyrun:onlistcheck1",
            icon = "fa-solid fa-clipboard",
            label = "Check If You Are On The List"
        },
	},
	distance = 2.5,
})

-- 2
Config.Man2 = {
    "a_m_y_clubcust_02"
}
exports['qb-target']:AddTargetModel(Config.Man2, {
	options = {
        {
            type = "client",
            event = "qb-oxyrun:onlistcheck2",
            icon = "fa-solid fa-clipboard",
            label = "Check If You Are On The List"
        },
	},
	distance = 2.5,
})

-- 3
Config.Man3 = {
    "a_m_m_prolhost_01"
}
exports['qb-target']:AddTargetModel(Config.Man3, {
	options = {
        {
            type = "client",
            event = "qb-oxyrun:onlistcheck3",
            icon = "fa-solid fa-clipboard",
            label = "Check If You Are On The List"
        },
	},
	distance = 2.5,
})

-- 4
Config.Man4 = {
    "a_m_y_business_01"
}
exports['qb-target']:AddTargetModel(Config.Man4, {
	options = {
        {
            type = "client",
            event = "qb-oxyrun:onlistcheck4",
            icon = "fa-solid fa-clipboard",
            label = "Check If You Are On The List"
        },
	},
	distance = 2.5,
})

-- 5
Config.Man5 = {
    "a_m_y_business_03"
}
exports['qb-target']:AddTargetModel(Config.Man5, {
	options = {
        {
            type = "client",
            event = "qb-oxyrun:onlistcheck5",
            icon = "fa-solid fa-clipboard",
            label = "Check If You Are On The List"
        },
	},
	distance = 2.5,
})
