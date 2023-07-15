ESX = exports["es_extended"]:getSharedObject()
local xPlayer = ESX.GetPlayerFromId(source)

RegisterNetEvent('tbx_lspdcall:call')
AddEventHandler('tbx_lspdcall:call', function()
    local xPlayer = ESX.GetPlayerFromId(source)
 if xPlayer.job.name == 'police' then
    TriggerClientEvent('ox_lib:notify', source,{
        title = Config.Translate.notifyTitle,
        description = Config.Translate.notifyMessagePolice,
        type = 'warning'
    })
 end
end)