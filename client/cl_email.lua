-- Walfles

RegisterNetEvent('qb-oxyruns:SendEmail', function(amount)
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = "Anonymous",
            subject = " ",
            message = "Ive Sent You A Ping To My Location Check Your GPS!",
            button = {}
        })
    end)