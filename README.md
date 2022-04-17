<h1>Explosive vests with huge blast radius and a deadman switch made for the QBCore framework</h1>
<p>there alot of checks within the script to ensure that the vests can not be exploited/abused.<br>
all the sounds of the vest are played within distance of the player so anyone nearby will be able <br> 
to hear the vest beeping and activating</p>


<h3>Requirements</h3>
qb-core

qb-smallresources/consumables

interact-sounds


<h3>Keys to activate the vest</h3>

G  activates the vest

=  toggles the deadmanswitch





<h3>add to qb-ssmallresources/client/consumables around line 500</h3>

```
RegisterNetEvent('consumables:client:RemoveVest', function()
    local ped = PlayerPedId()
    if Vest == true then
        loadAnimDict("clothingtie")
        TaskPlayAnim(ped, 'clothingtie', 'try_tie_negative_a' , 3.0, 3.0, -1, 0, 32, false, false, false)
        QBCore.Functions.Progressbar("remove_armor", "Removing the explosive vest", 8500, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            SetPedComponentVariation(ped, 9, 0, 0, 2)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["explosivevest"], "add")
            TriggerServerEvent("QBCore:Server:AddItem", "explosivevest", 1)
            TriggerEvent('qb-explosivevest:client:remove')
            TriggerEvent('consumables:client:detonated')
            QBCore.Functions.Notify("You Have Removed You're explosive Vest","success")
        end)
    else
        QBCore.Functions.Notify("You're not wearing a vest", "error")
    end
end)
```
	
```	
RegisterNetEvent('consumables:client:UseExplosiveVest', function()
    if Vest == true then QBCore.Functions.Notify('You already have an explosive vest on', 'error') return end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    loadAnimDict("clothingtie")
    TaskPlayAnim(ped, 'clothingtie', 'try_tie_negative_a' , 3.0, 3.0, -1, 0, 32, false, false, false)
    QBCore.Functions.Progressbar("use_heavyarmor", "Putting on an explosive vest", 8500, false, true, {
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
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["explosivevest"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "explosivevest", 1)
        TriggerEvent('qb-explosivevest:client:equip')
        TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3, "beep-sound-1", 0.50)
        Vest = true
        QBCore.Functions.Notify("You Have Equiped An Explosive Vest","success")
    end)
end)
```
```
RegisterNetEvent('consumables:client:detonated', function()
    Vest = false
end)
```





**Add to qb-core/shared/items**

```
['explosivevest'] 		 		 = {['name'] = 'explosivevest', 					['label'] = 'Explosive Vest', 			['weight'] = 5000, 	    ['type'] = 'item', 		['image'] = 'vest.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Definitely just a normal vest'}
```




<h3>Add the vest.png to inventory photos</h3>





<h3>Add the sounds to interact-sounds/client/Html</h3>


<h2>Preview</h2>

[![Preview](https://img.youtube.com/vi/oUVp9tHu0Jw/0.jpg)](https://www.youtube.com/watch?v=oUVp9tHu0Jw)
