-- Walfles

Config = {}

-- You Can Edit this to your liking
Config.MinimumOxyRunPolice = 0

-- The amount of Oxy you can receive
Config.OxyAmount = math.random(1,3)

-- Location of ped
Config.Location = {
    ["BeerMan"] = {
        ["ped"] = 'a_m_o_soucent_03',
        ["scenario"] = "WORLD_HUMAN_BUM_STANDING",
        ["coords"] = vector4(716.63, -699.74, 26.55, 244.75)
    },

    ["1"] = {
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["ped"] = 'a_m_y_bevhills_01',
        ["coords"] = vector4(-77.17, 369.53, 112.46, 135.03)
    },

    ["2"] = {
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["ped"] = 'a_m_y_clubcust_02',
        ["coords"] = vector4(-1359.4, -760.63, 22.3, 348.46)
    },

    ["3"] = {
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["ped"] = 'a_m_m_prolhost_01',
        ["coords"] = vector4(735.72, -1064.33, 22.17, 130.12)
    },

    ["4"] = {
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["ped"] = 'a_m_y_business_01',
        ["coords"] = vector4(967.24, -1858.53, 31.2, 90.76)
    },

    ["5"] = {
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["ped"] = 'a_m_y_business_03',
        ["coords"] = vector4(944.28, -1699.29, 30.09, 284.49)
    }
}

-- The Man Blip
Config.TheMan = {
    [1] = {['x'] = -77.17, ['y'] = 369.53, ['z'] = 112.46},
    [2] = {['x'] = -1359.4, ['y'] = -760.63, ['z'] = 22.3},
    [3] = {['x'] = 735.72, ['y'] = -1064.33, ['z'] = 22.17},
    [4] = {['x'] = 967.24, ['y'] = -1858.53, ['z'] = 31.2},
    [5] = {['x'] = 944.28, ['y'] = -1699.29, ['z'] = 30.09}
}

-- Blips
function DeleteBlip()
	if DoesBlipExist(blip) then
		RemoveBlip(blip)
	end
end

function CreateBlip()
    DeleteBlip()
    rnd = math.random(1,#Config.TheMan)
    blip = AddBlipForCoord(Config.TheMan[rnd]["x"],Config.TheMan[rnd]["y"],Config.TheMan[rnd]["z"])
    SetBlipSprite(blip, 615)
    SetBlipScale(blip, 1.0)
    SetBlipAsShortRange(blip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("The Man")
    EndTextCommandSetBlipName(blip)
    DropblipCreated = true
end

-- Setting Known
RegisterNetEvent('qb-oxyrun:setknown')
AddEventHandler('qb-oxyrun:setknown', function()
    if rnd == 1 then
        local known1 = true
    elseif rnd == 2 then
        local known2 = true
    elseif rnd == 3 then
        local known3 = true
    elseif rnd == 4 then
        local known4 = true
    elseif rnd == 5 then
        local known5 = true
    end
end)
