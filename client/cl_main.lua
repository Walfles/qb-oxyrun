-- Walfles
print("Made with love by Walfles <3")

-- Variables
known = nil

-- Deleting Blip
local function DeleteBlip()
	if DoesBlipExist(blip) then
		RemoveBlip(blip)
	end
end

--Creating Blip
local function CreateBlip()
	DeleteBlip()
	blip = AddBlipForCoord(-77.17, 369.53, 112.46)
    SetBlipSprite(blip, 615)
    SetBlipScale(blip, 1.0)
    SetBlipAsShortRange(blip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("The Man")
    EndTextCommandSetBlipName(blip)
end

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
RegisterNetEvent('qb-oxyrun:plysy', function()
    TriggerServerEvent('qb-oxyrun:removebeer')
    CreateBlip()
    TriggerEvent("QBCore:Notify", "A location has been pinged on your GPS.")
    known = true
    TriggerEvent('qb-oxyruns:SendEmail')
end)

-- If Player Selected No
RegisterNetEvent('qb-oxyrun:plysn', function()
    TriggerEvent("QBCore:Notify", "He Called you a bitch", "error")
end)

-- Checking If Player Is On List
RegisterNetEvent('qb-oxyrun:onlistcheck', function()
    if known then
        TriggerEvent('qb-oxyrun:takeoxy')
    elseif known == nil then
        TriggerEvent("QBCore:Notify", "You are not on the list!", "error")
    end
end)

-- Gives Player 1 Oxy
RegisterNetEvent('qb-oxyrun:takeoxy', function()
    TriggerServerEvent('qb-oxyrun:giveoxy')
    Wait(3)
    TriggerEvent("QBCore:Notify", "Man Gave You Bottle Of Pills.")
    PoliceCall()
    known = nil
    DeleteBlip()
end)
