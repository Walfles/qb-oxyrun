-- Talk with man
RegisterNetEvent('qb-oxyrun:talktoman', function()
    TriggerEvent("nh-context:createMenu", {
        {
            header = "He Is Requesting Beer For Information",
            context = "Are You Going To Give The Man A Beer?"
        },
        {
            header = "Yes",
            event = "qb-oxyrun:plysy"
        },
        {
            header = "No",
            event = 'qb-oxyrun:plysn'
        },
    })
end)