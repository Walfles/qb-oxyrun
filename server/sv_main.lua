-- Walfles

-- QBCORE
local QBCore = exports['qb-core']:GetCoreObject()

-- Removing Beer From Inventory
RegisterServerEvent("qb-oxyrun:removebeer")
AddEventHandler('qb-oxyrun:removebeer', function()
local Player = QBCore.Functions.GetPlayer(source)
Player.Functions.RemoveItem('beer', 1)
TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["beer"], "remove")
end)

-- Giving Player Oxy
RegisterServerEvent('qb-oxyrun:giveoxy')
AddEventHandler('qb-oxyrun:giveoxy', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem('oxy', 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["oxy"], "add")
end)