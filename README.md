Suicide vests with huge blast radius and a deadman switch made for the QBCore framework

Requirements
qb-core
qb-smallresources/consumables
interact-sounds


G activates the vest
= toggles the deadmanswitch


add to qb-smallresources around line 500

RegisterNetEvent('consumables:client:RemoveVest', function()
    local ped = PlayerPedId()
    if Vest == true then
        loadAnimDict("clothingtie")
        TaskPlayAnim(ped, 'clothingtie', 'try_tie_negative_a' , 3.0, 3.0, -1, 0, 32, false, false, false)
        QBCore.Functions.Progressbar("remove_armor", "Removing the suicide vest", 8500, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            SetPedComponentVariation(ped, 9, 0, 0, 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["suicidevest"], "add")
            TriggerServerEvent("QBCore:Server:AddItem", "suicidevest", 1)
            TriggerEvent('qb-suicidevest:client:remove')
            TriggerEvent('consumables:client:detonated')
            QBCore.Functions.Notify("You Have Removed You're Suicide Vest","success")
        end)
    else
        QBCore.Functions.Notify("You're not wearing a vest", "error")
    end
end)

RegisterNetEvent('consumables:client:UseSuicideVest', function()
    if Vest == true then QBCore.Functions.Notify('You already have a suicide vest on', 'error') return end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    loadAnimDict("clothingtie")
    TaskPlayAnim(ped, 'clothingtie', 'try_tie_negative_a' , 3.0, 3.0, -1, 0, 32, false, false, false)
    QBCore.Functions.Progressbar("use_heavyarmor", "Putting on a suicide vest", 8500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if PlayerData.charinfo.gender == 0 then
            currentVest = GetPedDrawableVariation(ped, 9)
            currentVestTexture = GetPedTextureVariation(ped, 9)
            SetPedComponentVariation(ped, 9, 14, 0, 1)
        else
            currentVest = GetPedDrawableVariation(ped, 30)
            currentVestTexture = GetPedTextureVariation(ped, 30)
            SetPedComponentVariation(ped, 9, 16, 0, 1)
        end
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["suicidevest"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "suicidevest", 1)
        TriggerEvent('qb-suicidevest:client:equip')
        TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3, "beep-sound-1", 0.50)
        Vest = true
        QBCore.Functions.Notify("You Have Equiped A Suicide Vest","success")
    end)
end)

RegisterNetEvent('consumables:client:detonated', function()
    Vest = false
end)

Add to qb-core/shared/items
['suicidevest'] 		 		 = {['name'] = 'suicidevest', 					['label'] = 'Suicide Vest', 			['weight'] = 5000, 	    ['type'] = 'item', 		['image'] = 'vest.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mashallah Brotha'}

Add the vest.png to inventory photos

Add the sounds to interact-sounds/client/Html


[![Preview](https://img.youtube.com/vi/oUVp9tHu0Jw/0.jpg)](https://www.youtube.com/watch?v=oUVp9tHu0Jw)