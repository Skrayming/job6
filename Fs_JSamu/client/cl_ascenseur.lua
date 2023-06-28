Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)


--- MENU ---

local open = false 
local mainMenu = RageUI.CreateMenu('', 'Ascenseur') 
mainMenu.Display.Header = true 
mainMenu.Closed = function()
  open = false
end

--- FUNCTION OPENMENU ---

function OpenMenuAscenseurAmbulance() 
    if open then 
		open = false
		RageUI.Visible(mainMenu, false)
		return
	else
		open = true 
		RageUI.Visible(mainMenu, true)
		CreateThread(function()
		while open do 
        RageUI.IsVisible(mainMenu, function()


			RageUI.Button("~g~0 ~s~: ~s~[~o~Accueil~s~]", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    local coords = GetEntityCoords(GetPlayerPed(-1))
                    if GetDistanceBetweenCoords(coords,372.1887512207, -1421.3463134766, 32.510482788086, true) > 0.5 then
                    SetEntityCoords(GetPlayerPed(-1), 372.1887512207, -1421.3463134766, 32.510482788086, 0.0, 0.0, 0.0, true)
                    SetEntityHeading(GetPlayerPed(-1), 323.7347717285156)
                    RageUI.CloseAll()
				end
            end
			})

			RageUI.Button("~g~1 ~s~: ~s~[~o~Toit~s~]", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    local coords = GetEntityCoords(GetPlayerPed(-1))
                    if GetDistanceBetweenCoords(coords, 346.84497070313, -1456.1564941406, 41.509071350098, true) > 0.5 then
                    SetEntityCoords(GetPlayerPed(-1), 346.84497070313, -1456.1564941406, 41.509071350098, 0.0, 0.0, 0.0, true)
                    SetEntityHeading(GetPlayerPed(-1), 229.31173706054688)
                    RageUI.CloseAll()
				end
            end
			})

            RageUI.Button("~g~2 ~s~: ~s~[~o~Héliport~s~]", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    local coords = GetEntityCoords(GetPlayerPed(-1))
                    if GetDistanceBetweenCoords(coords, 335.18447875977, -1432.2811279297, 46.511917114258, true) > 0.5 then
                    SetEntityCoords(GetPlayerPed(-1), 335.18447875977, -1432.2811279297, 46.511917114258, 0.0, 0.0, 0.0, true)
                    SetEntityHeading(GetPlayerPed(-1), 136.78221130371097)
                    RageUI.CloseAll()
				end
            end
			})

		end)			
		Wait(0)
	   end
	end)
 end
end

Citizen.CreateThread(function()
    while true do 
        local wait = 750
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' then
            for k in pairs(Config.Ascenseur) do 
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local pos = Config.Ascenseur
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)
  
                if dist <= 5.0 then 
                    wait = 0
                    DrawMarker(Config.MarkerType, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
                end
  
                if dist <= 2.0 then 
                    wait = 0
                    Visual.Subtitle(Config.TextAscenseur, 1)
                    if IsControlJustPressed(1,51) then
                        OpenMenuAscenseurAmbulance()
                    end
                end
            end
        end
    Citizen.Wait(wait)
    end
  end)
  