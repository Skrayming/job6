local second = 1000
local minute = 60 * second

EarlyRespawnTimer          = 8 * minute  -- Temp de mort si les ambulancier sont pas venu

ConfigWebhookRendezVousAmbulance = "https://discord.com/api/webhooks/931511548592160788/aG9v-XJO3tVftSDlgi4AHfVbmqhXtUr1TAgPFFgGJYkCqrUkuKMGDnuYTQhjTXRJ1Vnw" -- Metez le webhook de votre salon disocrd configure pour le job ems 

Config = {

	Locale                     = 'fr',

	RespawnPoint = { coords = vector3(322.1182, -584.4746, 43.2841), heading = 61.63 }, -- L'endroit ou tu respawn apers la mort

	EarlyRespawnFine           = false, 
    EarlyRespawnFineAmount     = 5000, 

	RemoveWeaponsAfterRPDeath  = false, -- Supprime les arme sur sois 
    RemoveCashAfterRPDeath     = false, -- Supprime l'argent cash et sale sur sois 
    RemoveItemsAfterRPDeath    = false, -- Supprime tout les item sur sois 

    BleedoutTimer              = 10 * minute, -- Temp de l'effet quand tu respawn 

	ReviveReward               = 150,  -- Price du revive
    AntiCombatLog              = true, -- enable anti-combat logging?

    MarkerType = 22, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
    MarkerSizeLargeur = 0.3, -- Largeur du marker
    MarkerSizeEpaisseur = 0.3, -- Épaisseur du marker
    MarkerSizeHauteur = 0.3, -- Hauteur du marker
    MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
    MarkerColorR = 69, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorG = 112, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorB = 246, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
    MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
    MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)

    TextCoffre = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~coffre ~s~!",  -- Text Menu coffre
    TextPharmacie = "Appuyez sur ~b~[E] ~s~pour accèder a la ~b~pharmacie ~s~!",  -- Text Menu Pharamcie
    TextVestaire = "Appuyez sur ~b~[E] ~s~pour pour accèder au ~b~vestaire ~s~!", -- Text Menu Vestaire
    TextBoss = "Appuyez sur ~b~[E] ~s~pour pour accèder au ~b~action patron ~s~!",  -- Text Menu Boss
    TextGarageVehicule = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~garage ~s~!",  -- Text Garage Voiture
	TextGarageHeli = "Appuyez sur ~b~[E] ~s~pour accèder au ~b~garage ~s~!",  -- Text Garage Hélico
	TextAscenseur = "Appuyez sur ~b~[E] ~s~pour accèder à ~b~l'étage ~s~!",  -- Text Ascenseur
    TextAccueil = "Appuyez sur ~b~[E] ~s~pour parler a la secrétaire ~s~!",  -- Text Ascenseur
	

AmbuVehiculesAmbulance = { 
	{buttoname = "Umh", rightlabel = "→→", spawnname = "umhnecker", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
	{buttoname = "Umh 2", rightlabel = "→→", spawnname = "ambulance", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "Umh 3", rightlabel = "→→", spawnname = "umh02", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "Umh Ducato", rightlabel = "→→", spawnname = "umhducato", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
	{buttoname = "Pcm", rightlabel = "→→", spawnname = "pcmsamu", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "Volkswagen T6", rightlabel = "→→", spawnname = "t6samu", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "Volkswagen T6 2", rightlabel = "→→", spawnname = "t6samu37", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "Ranger", rightlabel = "→→", spawnname = "rangersamu", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "Ford Focus", rightlabel = "→→", spawnname = "focussamu", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "Mercedes Sprinter", rightlabel = "→→", spawnname = "rsb_mbsprinter", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "Sharan", rightlabel = "→→", spawnname = "sharansmur59", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "Bmw x1", rightlabel = "→→", spawnname = "x1samu", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
    {buttoname = "VSAV  Tib Renault", rightlabel = "→→", spawnname = "vsav752", spawnzone = vector3(383.23565673828, -1451.4114990234, 29.381246566772), headingspawn = 24.12462425231933}, -- Garage Voiture
},

AmbuHelicoAmbulance = { 
	{buttonameheli = "EC - 135", rightlabel = "→→", spawnnameheli = "ec135samu", spawnzoneheli = vector3(313.61358642578, -1464.9567871094, 46.509185791016), headingspawnheli = 113.49640655517578}, -- Garage Hélico
},


Pharmacie = {
    {Nom = "Medikit", Item = "medikit"}, -- Item Pour la Pharmacie
    {Nom = "Bandage", Item = "bandage"}, -- Item Pour la Pharmacie
    {Nom = "Brancard", Item = "stretcher"}, -- Item Pour la Pharmacie
},

Ascenseur = {
	vector3(372.10040283203, -1421.5360107422, 32.510482788086), -- Etage 0 [Accueil]
	vector3(346.84237670898, -1456.1564941406, 41.509071350098), -- Etage 1 [Toit]
    vector3(334.98324584961, -1432.6970214844, 46.511730194092), -- Etage 2 [Héliport]  
},

Position = {
	    -- Boss = {vector3(-498.26, -315.48, 42.32)}, -- Menu boss 
	    -- Coffre = {vector3(-436.85, -318.45, 34.91)}, -- Menu coffre 
        Pharmacie = {vector3(362.14239501953, -1417.4499511719, 32.511150360107)}, -- Menu Pharmacie 
        Vestaire = {vector3(379.13552856445, -1429.728515625, 32.511096954346)}, -- Menu Vestaire 
        Accueil = {vector3(357.45950317383, -1416.4114990234, 32.510486602783)}, -- Menu Pour Accueil 
        GarageVehicule = {vector3(383.22677612305, -1451.4074707031, 29.380893707275)}, -- Menu Garage Vehicule
	    GarageHeli = {vector3(313.61358642578, -1464.9567871094, 46.509185791016)}, -- Menu Garage Helico
    }
}

AmbuCloak = {
	clothes = {
        specials = {
                [0] = {
                    label = "Tenue Civil",
                    minimum_grade = 0,
                    variations = {male = {}, female = {}},
                    onEquip = function()
                        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin) TriggerEvent('skinchanger:loadSkin', skin) end)
                        SetPedArmour(PlayerPedId(), 0)
                    end
                },
                [1] = {
                    minimum_grade = 3,
                    label = "Tenue de Directeur",
                    variations = {
                    male = {
                        bags_1 = 0, bags_2 = 0,
                        tshirt_1 = 15, tshirt_2 = 0,
                        torso_1 = 40, torso_2 = 0,
                        arms = 0,
                        pants_1 = 153, pants_2 = 0,
                        shoes_1 = 42, shoes_2 = 2,
                        mask_1 = 0, mask_2 = 0,
                        bproof_1 = 0, bproof_2 = 0,
                        helmet_1 = -1, helmet_2 = 0,
                        chain_1 = 0, chain_2 = 0,
                        decals_1 = 0, decals_2 = 0,
                    },
                    female = {
                        tshirt_1 = 39,  tshirt_2 = 0,
                        torso_1 = 90,   torso_2 = 2,
                        decals_1 = 0,   decals_2 = 0,
                        arms = 101,
                        pants_1 = 23,   pants_2 = 0,
                        shoes_1 = 74,   shoes_2 = 1,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 96,    chain_2 = 0,
                        ears_1 = -1,     ears_2 = 0
                    }
                },
                onEquip = function()  
                end
                }
            },
            grades = {
                -- @label = Le nom affiché de la tenue de grade
                -- @male = Les composants skinchanger pour les hommes
                -- @female = Les composants skinchanger pour les femmes
                [0] = {
                    label = "Tenue Tshirt",
                    minimum_grade = 0,
                    variations = {
                    male = {
                        bags_1 = 0, bags_2 = 0,
                        tshirt_1 = 15, tshirt_2 = 0,
                        torso_1 = 40, torso_2 = 1,
                        arms = 0,
                        pants_1 = 153, pants_2 = 0,
                        shoes_1 = 42, shoes_2 = 2,
                        mask_1 = 0, mask_2 = 0,
                        bproof_1 = 0, bproof_2 = 0,
                        helmet_1 = -1, helmet_2 = 0,
                        chain_1 = 0, chain_2 = 0,
                        decals_1 = 0, decals_2 = 0,
                    },
                    female = {
                        bags_1 = 0, bags_2 = 0,
                        tshirt_1 = 15, tshirt_2 = 0,
                        torso_1 = 18, torso_2 = 6,
                        arms = 101,
                        pants_1 = 23, pants_2 = 0,
                        shoes_1 = 74, shoes_2 = 1,
                        mask_1 = 0, mask_2 = 0,
                        bproof_1 = 0, bproof_2 = 0,
                        helmet_1 = -1, helmet_2 = 0,
                        chain_1 = 0, chain_2 = 0,
                        decals_1 = 0, decals_2 = 0
                    }
                },
                onEquip = function()
                end
            -- },
            --     [1] = {
            --         minimum_grade = 0,
            --         label = "Tenue Pull",
            --         variations = {
            --         male = {
            --             tshirt_1 = 57,  tshirt_2 = 0,
            --             torso_1 = 50,   torso_2 = 3,
            --             decals_1 = 0,   decals_2 = 0,
            --             arms = 86,
            --             pants_1 = 37, pants_2 = 0,
            --             shoes_1 = 25, shoes_2 = 0,
            --             mask_1 = 0, mask_2 = 0,
            --             bproof_1 = 0, bproof_2 = 0,
            --             helmet_1 = -1, helmet_2 = 0,
            --             chain_1 = 0, chain_2 = 0,
            --             decals_1 = 0, decals_2 = 0,
            --         },
            --         female = {
            --             tshirt_1 = 15,  tshirt_2 = 0,
            --             torso_1 = 18,   torso_2 = 4,
            --             decals_1 = 0,   decals_2 = 0,
            --             arms = 101,
            --             pants_1 = 23,   pants_2 = 1,
            --             shoes_1 = 74,   shoes_2 = 1,
            --             helmet_1 = -1,  helmet_2 = 0,
            --             chain_1 = 96,    chain_2 = 0,
            --             ears_1 = -1,     ears_2 = 0
            --         }
            --     },
            --     onEquip = function()
            --     end
            }
        },
    }
}
