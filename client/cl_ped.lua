-- Walfles

-- Variables
local pedSpawned = false
local BeerMan = {}

-- createPeds function
local function createPeds()
    if pedSpawned then return end
    for k, v in pairs(Config.Location) do
        if not BeerMan[k] then BeerMan[k] = {} end
        local current = v["ped"]
        current = type(current) == 'string' and GetHashKey(current) or current
        RequestModel(current)

        while not HasModelLoaded(current) do
            Wait(0)
        end
        BeerMan[k] = CreatePed(0, current, v["coords"].x, v["coords"].y, v["coords"].z-1, v["coords"].w, false, false)
        TaskStartScenarioInPlace(BeerMan[k], v["scenario"], true)
        FreezeEntityPosition(BeerMan[k], true)
        SetEntityInvincible(BeerMan[k], true)
        SetBlockingOfNonTemporaryEvents(BeerMan[k], true)
    end
end

    -- DeletePeds Function 
    local function deletePeds()
        if pedSpawned then
            for _, v in pairs(BeerMan) do
                DeletePed(v)
            end
        end
    end

-- When Player joins it spawns the ped
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    createPeds()
end)

-- When player leaves server the ped despawns
RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    deletePeds()
end)

-- When the resource starts the ped spawns 
AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        createPeds()
    end
end)

-- When the resource stops the ped despawns 
AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        deletePeds()
    end
end)
