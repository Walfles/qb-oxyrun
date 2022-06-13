-- Walfles

-- Variables
local CurrentCops = 0

-- Setting Ammount Of Cops
RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

-- Checking If Enouch Police Are Available
RegisterNetEvent('qb-oxyrun:checkingforpolice', function()
    if CurrentCops < Config.MinimumOxyRunPolice then
        TriggerEvent("QBCore:Notify", "Not Enough Cops Available.", "error")
    elseif CurrentCops == Config.MinimumOxyRunPolice then
        TriggerEvent('qb-oxyrun:talktoman')
    elseif CurrentCops > Config.MinimumOxyRunPolice then
        TriggerEvent('qb-oxyrun:talktoman')
    end
end)
