ESX = exports.es_extended:getSharedObject()
local ox = exports.ox_inventory



ESX.RegisterUsableItem('targa', function(source, a, nxn)
    TriggerClientEvent('usatargamerda', source, nxn.metadata.type)
end)

ESX.RegisterUsableItem('cacciavite', function(source)
    TriggerClientEvent('Nikquz_Fword', source)
end)

RegisterNetEvent('utis_pelato', function(targa)
    exports.ox_inventory:AddItem(source, 'targa', 1, targa, nil)
end)

RegisterNetEvent('maxdaies_mette', function(targa)
    exports.ox_inventory:RemoveItem(source, 'targa', 1, targa, nil)
end)