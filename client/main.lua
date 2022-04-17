local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local deadman = false
PlayerPos = GetEntityCoords(PlayerPedId(), true)
local ped = PlayerPedId()
playerdata = {}
vest = false
detonating = false

RegisterNetEvent('QBCore:client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function (Player)
    PlayerData = QBCore.Functions.GetPlayerData()    
end) 

CreateThread(function()
    while true do
		Wait(250)
		health = GetEntityHealth(ped)
	end
end)

RegisterNetEvent('qb-explosivevest:client:equip', function()
		vest = true
end)

RegisterNetEvent('qb-explosivevest:client:remove', function()
		vest = false
end)

RegisterNetEvent('qb-explosivevest:client:detonate', function()
	if vest == true then
		deadman = false
		Wait(250)
		TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3, "cellcall", 0.75)
		Wait(2250)
		local PlayerPos = GetEntityCoords(PlayerPedId(), true) 
		AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z+0.6, 82, 500.0, 1, 0, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+2.5, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-2.5, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+2.5, PlayerPos.y+2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-2.5, PlayerPos.y-2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+2.5, PlayerPos.y-2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-2.5, PlayerPos.y-2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y+2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y-2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+5.0, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-5.0, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+5.0, PlayerPos.y+5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-5.0, PlayerPos.y-5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+5.0, PlayerPos.y-5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-5.0, PlayerPos.y-5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y+5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y-5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+7.5, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-7.5, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+7.5, PlayerPos.y+7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-7.5, PlayerPos.y-7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+7.5, PlayerPos.y-7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-7.5, PlayerPos.y-7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y+7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y-7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+10.0, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-10.0, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+10.0, PlayerPos.y+10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-10.0, PlayerPos.y-10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x+10.0, PlayerPos.y-10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x-10.0, PlayerPos.y-10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y+10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y-10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z+2.5, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z+5.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z+10.5, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z-2.5, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z-5.6, 16, 500.0, 0, 1, 0)
		Wait(1)
		AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z-10.5, 16, 500.0, 0, 1, 0)
		SetEntityHealth(ped, 0)
		SetPedComponentVariation(ped, 9, 11, 0, 1)
		deadman = false
		vest = false
		TriggerEvent('consumables:client:detonated')
		detonating = false
	else
		QBCore.Functions.Notify("You need to equip the vest","error")
	end
end)

Citizen.CreateThread(function()
	while true do
	if IsControlPressed(0, 47) and vest == true then
		detonating = true
		deadman = false
		Wait(500)
		TriggerEvent("qb-suicidevest:client:detonate")
	end
	Citizen.Wait(100)
	end
end)

RegisterNetEvent('qb-suicidevest:client:deadman', function()
	if vest == true and deadman == true then
		deadman = false
		QBCore.Functions.Notify("Deadman switch deactivated", "success")
	elseif vest == true and deadman == false then
		deadman = true
		QBCore.Functions.Notify("Deadman switch activiated", "success")
			if deadman == true then
				while true do 
					Wait(1000)
					TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3, "beep-sound-1", 0.25)
					if deadman == false then break else
				if health == 0 then
					local PlayerPos = GetEntityCoords(PlayerPedId(), true) 
					AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z+0.6, 82, 500.0, 1, 0, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+2.5, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-2.5, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+2.5, PlayerPos.y+2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-2.5, PlayerPos.y-2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+2.5, PlayerPos.y-2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-2.5, PlayerPos.y-2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y+2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y-2.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+5.0, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-5.0, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+5.0, PlayerPos.y+5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-5.0, PlayerPos.y-5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+5.0, PlayerPos.y-5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-5.0, PlayerPos.y-5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y+5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y-5.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+7.5, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-7.5, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+7.5, PlayerPos.y+7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-7.5, PlayerPos.y-7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+7.5, PlayerPos.y-7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-7.5, PlayerPos.y-7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y+7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y-7.5, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+10.0, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-10.0, PlayerPos.y, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+10.0, PlayerPos.y+10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-10.0, PlayerPos.y-10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x+10.0, PlayerPos.y-10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x-10.0, PlayerPos.y-10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y+10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y-10.0, PlayerPos.z+0.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z+2.5, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z+5.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z+10.5, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z-2.5, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z-5.6, 16, 500.0, 0, 1, 0)
					Wait(1)
					AddExplosion(PlayerPos.x, PlayerPos.y, PlayerPos.z-10.5, 16, 500.0, 0, 1, 0)
					SetEntityHealth(ped, 0)
					SetPedComponentVariation(ped, 9, 11, 0, 1)
					vest = false
					TriggerEvent('consumables:client:detonated')
					deadman = false
					detonating = false
					QBCore.Functions.Notify("Deadman switch deactivated", "success")
					break
				end
			end
		end
	end
	end
end)

Citizen.CreateThread(function()
	while true do
	if IsControlPressed(0, 83) and vest == true then -- F7
		TriggerEvent("qb-explosivevest:client:deadman")
		Wait(3000)
	end
	Citizen.Wait(100)
	end
end)
