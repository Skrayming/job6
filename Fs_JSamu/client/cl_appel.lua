
ESX                             = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)


local AppelPris = false
local AppelDejaPris = false
local AppelEnAttente = false 
local AppelCoords = nil
local tableBlip = {}


-- Prise de coords des appels
RegisterNetEvent("AppelemsGetCoords")
AddEventHandler("AppelemsGetCoords", function()
	ped = GetPlayerPed(-1)
	coords = GetEntityCoords(ped, true)
	ESX.TriggerServerCallback('EMS:GetID', function(idJoueur)
		TriggerServerEvent("Server:emsAppel", coords, idJoueur)
	end)

end)

-- Register de l'appel
RegisterNetEvent("AppelemsTropBien")
AddEventHandler("AppelemsTropBien", function(coords, id)
	AppelEnAttente = true
	AppelCoords = coords
	AppelID = id
	-- ESX.ShowAdvancedNotification("Secours", "~b~Information", "Quelqu'un a besoin d'aide !\n~g~Y~w~ pour prendre l'appel\n~r~X~w~ pour refuser", "CHAR_MICHAEL", 10)
	exports['okokNotify']:Alert("Secours", "Quelqu'un a besoin d'aide ! [Y] Pour prendre l'appel / [X] Pour refuser", 5000, 'info')
end)


Keys.Register('Y', 'PriseAppelServeur', 'Ouvrir le menu PriseAppelServeur', function()
	if AppelEnAttente then
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' or ESX.PlayerData.job.name == 'pompier' then
		TriggerServerEvent('EMS:PriseAppelServeur')
		TriggerServerEvent("EMS:AjoutAppelTotalServeur")
		TriggerEvent('emsAppelPris', AppelID, AppelCoords)
	end
	else
		if IsControlJustPressed(1, 246) and AppelDejaPris == true then
		-- ESX.ShowAdvancedNotification("Secours", "~b~Information", "L'appel a déja été pris.", "CHAR_MICHAEL", 10)
		exports['okokNotify']:Alert("Secours", "L'appel a déja été pris", 5000, 'error')
	end
	end
end)

Keys.Register('X', 'AppelEnAttente', 'Ouvrir le menu AppelEnAttente', function()
	if AppelEnAttente then
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' or ESX.PlayerData.job.name == 'pompier' then
		-- ESX.ShowAdvancedNotification("Secours", "~b~Information", "Vous avez refuser l'appel.", "CHAR_MICHAEL", 10)
		exports['okokNotify']:Alert("Secours", "Vous avez refuser l'appel", 5000, 'error')
		AppelEnAttente = false
		attente = false
		AppelDejaPris = false
	end
	end
end)

RegisterNetEvent("EMS:AppelDejaPris")
AddEventHandler("EMS:AppelDejaPris", function(name)
	AppelEnAttente = false
	AppelDejaPris = true
	TriggerEvent("EMS:DernierAppel", name)
	Citizen.Wait(10000)
	AppelDejaPris = false
end)


-- Prise d'appel ems
RegisterNetEvent("emsAppelPris")
AddEventHandler("emsAppelPris", function(Xid, XAppelCoords)
	-- ESX.ShowAdvancedNotification("Secours", "~b~Information", "Vous avez pris l'appel, suivez la route GPS.", "CHAR_MICHAEL", 8)   
	exports['okokNotify']:Alert("Secours", "Vous avez pris l'appel, suivez la route Gps", 5000, 'success')
     afficherTextVolant(XAppelCoords, Xid)
end)

function afficherTextVolant(XAcoords, XAid)
	emsBlip = AddBlipForCoord(XAcoords)
   SetBlipShrink(emsBlip, true)
   SetBlipScale(emsBlip, 0.9)
   SetBlipPriority(emsBlio, 150)
   BeginTextCommandSetBlipName("STRING")
   AddTextComponentSubstringPlayerName("~b~[Coma] Appel en cours")
   EndTextCommandSetBlipName(emsBlip)
	SetBlipRoute(emsBlip, true)
	SetThisScriptCanRemoveBlipsCreatedByAnyScript(true)
	table.insert(tableBlip, emsBlip)
	rea = true
	while rea do
	if GetDistanceBetweenCoords(XAcoords, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
	--    ESX.ShowAdvancedNotification("Secours", "~b~Gps", "Vous êtes arrivé !", "CHAR_MICHAEL", 2)   
	   exports['okokNotify']:Alert("Secours", "Vous êtes arrivé !", 5000, 'success')
	   TriggerEvent("EMS:ClearAppel")
end
Wait(1)
end
end

RegisterNetEvent("EMS:ClearAppel")
AddEventHandler("EMS:ClearAppel", function()
	for k, v in pairs(tableBlip) do
		RemoveBlip(v)
	end
	rea = false
	tableBlip = {}
end)


