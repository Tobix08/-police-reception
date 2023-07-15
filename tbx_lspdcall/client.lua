ESX = exports["es_extended"]:getSharedObject()

local position = Config.position

RegisterNetEvent('tbx_lspdcall:usezvonek', function()
    lib.progressCircle({
        duration = 2000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
        },
        anim = {
           dict = 'anim@mp_player_intincarslow_claplow@ps@',
            clip = 'enter'
        },
    })
    lib.notify({
        title = Config.Translate.notifyTitle,
        description = Config.Translate.notifyMessageUser,
        type = 'success'
    }) 
    TriggerServerEvent('tbx_lspdcall:call')
end)






exports.ox_target:addSphereZone({
    coords = position,
    radius = 1,
    debug = drawZones,
    options = {
        {
            event = "tbx_lspdcall:usezvonek",
            icon = "fas fa-bell",
            label = 'použít zvonek',
        }
    },
    distance = 2.5,
})
