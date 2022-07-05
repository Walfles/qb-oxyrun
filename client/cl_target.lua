-- Walfles
Target = {}

-- Start
Target.Ped1 = {
    "a_m_o_soucent_03"
}
exports['qb-target']:AddTargetModel(Target.Ped1, {
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
Target.Man1 = {
    "a_m_y_bevhills_01"
}
exports['qb-target']:AddTargetModel(Target.Man1, {
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
Target.Man2 = {
    "a_m_y_clubcust_02"
}
exports['qb-target']:AddTargetModel(Target.Man2, {
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
Target.Man3 = {
    "a_m_m_prolhost_01"
}
exports['qb-target']:AddTargetModel(Target.Man3, {
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
Target.Man4 = {
    "a_m_y_business_01"
}
exports['qb-target']:AddTargetModel(Target.Man4, {
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
Target.Man5 = {
    "a_m_y_business_03"
}
exports['qb-target']:AddTargetModel(Target.Man5, {
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
