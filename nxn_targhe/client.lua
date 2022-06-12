ESX = exports.es_extended:getSharedObject()


--Questo script è una puttanata e dei Pro "Lua Framework Developer" mi hanno chiesto di venderglielo
RegisterNetEvent('Nikquz_Fword', function()
    local veh, scemo = ESX.Game.GetClosestVehicle()
    if scemo < 3.00 then
        Citizen.Wait(10)
        local t = GetVehicleNumberPlateText(veh)
        FreezeEntityPosition(PlayerPedId(), true)
        ExecuteCommand('e mechanic') --non ho voglia di fare un cazzo big bro
        Wait(2000)
        ExecuteCommand('e c') --non ho voglia di fare un cazzo big bro
        FreezeEntityPosition(PlayerPedId(), false)
        TriggerServerEvent('utis_pelato', t)
        SetVehicleNumberPlateText(veh, '')
        ESX.ShowNotification('Targa rimossa')
    else
        ESX.ShowNotification('Non ci sono veicoli nelle vicinanze')
    end
end)

RegisterNetEvent('gabri_opraiocss', function(targa)
    local veh, d = ESX.Game.GetClosestVehicle()
    if d < 3.00 then
        Citizen.Wait(10)
        FreezeEntityPosition(PlayerPedId(), true)
        ExecuteCommand('e mechanic')--non ho voglia di fare un cazzo big bro
        Wait(2000)
        ExecuteCommand('e c')--non ho voglia di fare un cazzo big bro
        FreezeEntityPosition(PlayerPedId(), false)
        TriggerServerEvent('maxdaies_mette', t)
        SetVehicleNumberPlateText(veh, targa)
        ESX.ShowNotification('Targa messa')
    else
        ESX.ShowNotification('Non ci sono veicoli nelle vicinanze')
    end
end)

RegisterNetEvent('usatargamerda', function(targa)

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'rememberutisfrocio', {
        tittle = 'Targa',
        align = 'top-right',
        elements = {
            {label = 'Monta targa', value = 'negro'},
            {label = 'Modifica targa', value = 'pocorobba'}
        }
    },function(data, menu)
        local noce = data.current.value 

        if noce == 'negro' then 
            menu.close()
            TriggerEvent('gabri_opraiocss', targa)
        elseif noce == 'pocorobba' then
            OpenDial()
        end
    end, function(data2, menu2) 
        menu2.close()
    end)

end)

function OpenDial()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'retnikscamma', {
        title = 'Cambia Targa',
    },
    function(data_input1, menu_input1)
        TriggerEvent('roger_customizzatore', data_input1.value)
        menu_input1.close()
    end,

    function(data_input1, menu_input1)
        menu_input1.close()
    end
    )
end

RegisterNetEvent('roger_customizzatore')
AddEventHandler('roger_customizzatore', function(targamod)
    local veh, d = ESX.Game.GetClosestVehicle()
    if d < 3.00 then
        Citizen.Wait(10)
        FreezeEntityPosition(PlayerPedId(), true)
        ExecuteCommand('e mechanic')--non ho voglia di fare un cazzo big bro
        Wait(3000)
        ExecuteCommand('e c')--non ho voglia di fare un cazzo big bro
        FreezeEntityPosition(PlayerPedId(), false)
        TriggerServerEvent('maxdaies_mette', t)
        SetVehicleNumberPlateText(veh, targamod)
        ESX.ShowNotification('Targa messa')
    else
        ESX.ShowNotification('Non ci sono veicoli nelle vicinanze')
    end
end)

