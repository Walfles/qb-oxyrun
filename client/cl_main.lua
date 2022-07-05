-- Walfles
print("Made with love by Walfles <3")

-- Variable
local QBCore = exports['qb-core']:GetCoreObject()
local known1 = false
local known2 = false
local known3 = false
local known4 = false
local known5 = false

-- Alerts Police
local function PoliceCall()
    local chance = 75
    if GetClockHours() >= 1 and GetClockHours() <= 6 then
        chance = 25
    end
    if math.random(1, 100) <= chance then
        TriggerServerEvent('police:server:policeAlert', 'Suspicious Activity')
    end
end

-- If Player Said Yes
RegisterNetEvent('qb-oxyrun:plysy')
AddEventHandler('qb-oxyrun:plysy', function()
    TriggerEvent('qb-oxyrun:checkifhasitem')
end)

-- Checking If Player Has Item
RegisterNetEvent('qb-oxyrun:checkifhasitem')
AddEventHandler('qb-oxyrun:checkifhasitem', function()
    local coords = Config.TheMan[math.random(#Config.TheMan)]
    if known1 == true then
        TriggerEvent("QBCore:Notify", "Go to your location and then come back", "error")
    elseif known2 == true then
        TriggerEvent("QBCore:Notify", "Go to your location and then come back", "error")
    elseif known3 == true then
        TriggerEvent("QBCore:Notify", "Go to your location and then come back", "error")
    elseif known4 == true then
        TriggerEvent("QBCore:Notify", "Go to your location and then come back", "error")
    elseif known5 == true then
        TriggerEvent("QBCore:Notify", "Go to your location and then come back", "error")
    elseif known1 == false then
    QBCore.Functions.TriggerCallback('qb-oxyrun:hasBeer', function(HasBeer)
        if HasBeer then
    TriggerServerEvent('qb-oxyrun:removebeer')
    CreateBlip()
    TriggerEvent("QBCore:Notify", "A location has been pinged on your GPS.")
    TriggerEvent('qb-oxyrun:setknown')
    TriggerEvent('qb-oxyrun:SendEmail')
    print("Player Started!")
        else
            TriggerEvent("QBCore:Notify", "You dont have beer!", "error")
            end
        end)
elseif known2 == false then
    QBCore.Functions.TriggerCallback('qb-oxyrun:hasBeer', function(HasBeer)
        if HasBeer then
    TriggerServerEvent('qb-oxyrun:removebeer')
    CreateBlip()
    TriggerEvent("QBCore:Notify", "A location has been pinged on your GPS.")
    TriggerEvent('qb-oxyrun:setknown')
    TriggerEvent('qb-oxyrun:SendEmail')
    print("Player Started!")
        else
            TriggerEvent("QBCore:Notify", "You dont have beer!", "error")
            end
        end)
elseif known3 == false then
    QBCore.Functions.TriggerCallback('qb-oxyrun:hasBeer', function(HasBeer)
        if HasBeer then
    TriggerServerEvent('qb-oxyrun:removebeer')
    CreateBlip()
    TriggerEvent("QBCore:Notify", "A location has been pinged on your GPS.")
    TriggerEvent('qb-oxyrun:setknown')
    TriggerEvent('qb-oxyrun:SendEmail')
    print("Player Started!")
        else
            TriggerEvent("QBCore:Notify", "You dont have beer!", "error")
            end
        end)
elseif known4 == false then
    QBCore.Functions.TriggerCallback('qb-oxyrun:hasBeer', function(HasBeer)
        if HasBeer then
    TriggerServerEvent('qb-oxyrun:removebeer')
    CreateBlip()
    TriggerEvent("QBCore:Notify", "A location has been pinged on your GPS.")
    TriggerEvent('qb-oxyrun:setknown')
    TriggerEvent('qb-oxyrun:SendEmail')
    print("Player Started!")
        else
            TriggerEvent("QBCore:Notify", "You dont have beer!", "error")
            end
        end)
elseif known5 == false then
    QBCore.Functions.TriggerCallback('qb-oxyrun:hasBeer', function(HasBeer)
        if HasBeer then
    TriggerServerEvent('qb-oxyrun:removebeer')
    CreateBlip()
    TriggerEvent("QBCore:Notify", "A location has been pinged on your GPS.")
    TriggerEvent('qb-oxyrun:setknown')
    TriggerEvent('qb-oxyrun:SendEmail')
    print("Player Started!")
        else
            TriggerEvent("QBCore:Notify", "You dont have beer!", "error")
            end
        end)
    end
end)

-- If Player Selected No
RegisterNetEvent('qb-oxyrun:plysn')
AddEventHandler('qb-oxyrun:plysn', function()
    TriggerEvent("QBCore:Notify", "He Called you a bitch", "error")
end)

-- Checking If Player Is On List 1
RegisterNetEvent('qb-oxyrun:onlistcheck1')
AddEventHandler('qb-oxyrun:onlistcheck1', function()
    if known1 == true then
        TriggerEvent('qb-oxyrun:takeoxy')
    elseif known1 == false then
        TriggerEvent("QBCore:Notify", "You are not on this list!", "error")
    end
end)

-- Checking If Player Is On List 2
RegisterNetEvent('qb-oxyrun:onlistcheck2')
AddEventHandler('qb-oxyrun:onlistcheck2', function()
    if known2 == true then
        TriggerEvent('qb-oxyrun:takeoxy')
    elseif known2 == false then
        TriggerEvent("QBCore:Notify", "You are not on this list!", "error")
    end
end)

-- Checking If Player Is On List 3
RegisterNetEvent('qb-oxyrun:onlistcheck3')
AddEventHandler('qb-oxyrun:onlistcheck3', function()
    if known3 == true then
        TriggerEvent('qb-oxyrun:takeoxy')
    elseif known3 == false then
        TriggerEvent("QBCore:Notify", "You are not on this list!", "error")
    end
end)

-- Checking If Player Is On List 4
RegisterNetEvent('qb-oxyrun:onlistcheck4')
AddEventHandler('qb-oxyrun:onlistcheck4', function()
    if known4 == true then
        TriggerEvent('qb-oxyrun:takeoxy')
    elseif known4 == false then
        TriggerEvent("QBCore:Notify", "You are not on this list!", "error")
    end
end)

-- Checking If Player Is On List 2
RegisterNetEvent('qb-oxyrun:onlistcheck5')
AddEventHandler('qb-oxyrun:onlistcheck5', function()
    if known5 == true then
        TriggerEvent('qb-oxyrun:takeoxy')
    elseif known5 == false then
        TriggerEvent("QBCore:Notify", "You are not on this list!", "error")
    end
end)

-- Gives Player 1 Oxy
RegisterNetEvent('qb-oxyrun:takeoxy')
AddEventHandler('qb-oxyrun:takeoxy', function()
    TriggerServerEvent('qb-oxyrun:giveoxy')
    TriggerEvent("QBCore:Notify", "Man Gave You Bottle Of Pills.")
    PoliceCall()
    local known1 = false
    local known2 = false
    local known3 = false
    local known4 = false
    local known5 = false
    DeleteBlip()
    print("Player Finished! Pause..")
end)

-- Callback for HasBeer
RegisterNUICallback('HasBeer', function(data, cb)
    QBCore.Functions.TriggerCallback('qb-oxyrun:hasBeer', function(HasBeer)
        cb(HasBeer)
    end)
end)
