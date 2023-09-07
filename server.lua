
░██████╗██╗██╗░░░░░███████╗██████╗░██╗  ░█████╗░██████╗░██╗░██████╗░██╗███╗░░██╗░█████╗░██╗░░░░░
██╔════╝██║██║░░░░░██╔════╝██╔══██╗██║  ██╔══██╗██╔══██╗██║██╔════╝░██║████╗░██║██╔══██╗██║░░░░░
╚█████╗░██║██║░░░░░█████╗░░██████╔╝██║  ██║░░██║██████╔╝██║██║░░██╗░██║██╔██╗██║███████║██║░░░░░
░╚═══██╗██║██║░░░░░██╔══╝░░██╔══██╗██║  ██║░░██║██╔══██╗██║██║░░╚██╗██║██║╚████║██╔══██║██║░░░░░
██████╔╝██║███████╗███████╗██║░░██║██║  ╚█████╔╝██║░░██║██║╚██████╔╝██║██║░╚███║██║░░██║███████╗
╚═════╝░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝╚═╝  ░╚════╝░╚═╝░░╚═╝╚═╝░╚═════╝░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚══════╝
local xSound = exports.xsound

RegisterNetEvent('dj_sile:playMusic', function (YoutubeURL)
    for k, v in pairs(Config.Locations) do
        local defaultVolume = Config.DefaultVolume
        local src = source
        local ped = GetPlayerPed(src)
        local coords = GetEntityCoords(ped)
        local dist = #(coords - v.coords)
        if dist < 3 then
            xSound:PlayUrlPos(-1, v.name, YoutubeURL, defaultVolume, coords)
            xSound:Distance(-1, v.name, v.radius)
            v.isPlaying = true
            if Config.Debug then
                print('DEBUG dj_sile | The music started playing at the coordinates: '..coords..' in radius: '..v.radius)
            end
        end
    end
end)

RegisterNetEvent('dj_sile:stopMusic', function()
    for k, v in pairs(Config.Locations) do
        local src = source
        local ped = GetPlayerPed(src)
        local coords = GetEntityCoords(ped)
        local dist = #(coords - v.coords)
        if dist < 3 then
            if v.isPlaying then
                v.isPlaying = false
                xSound:Destroy(-1, v.name)
                if Config.Debug then
                    print('DEBUG dj_sile | Music turned off at coordinates: '..coords)
                end
            end
        end
    end
end)

RegisterNetEvent('dj_sile:pauseMusic', function()
    for k, v in pairs(Config.Locations) do
        local src = source
        local ped = GetPlayerPed(src)
        local coords = GetEntityCoords(ped)
        local dist = #(coords - v.coords)
        if dist < 3 then
            if v.isPlaying then
                v.isPlaying = false
                xSound:Pause(-1, v.name)
                if Config.Debug then
                    print('DEBUG dj_sile | The music paused at the coordinates: '..coords)
                end
            end
        end
    end
end)

RegisterNetEvent('dj_sile:resumeMusic', function()
    for k, v in pairs(Config.Locations) do
        local src = source
        local ped = GetPlayerPed(src)
        local coords = GetEntityCoords(ped)
        local dist = #(coords - v.coords)
        if dist < 3 then
            if not v.isPlaying then
                v.isPlaying = true
                xSound:Resume(-1, v.name)
                if Config.Debug then
                    print('DEBUG dj_sile | Music resumed at coordinates: '..coords)
                end
            end
        end
    end
end)

RegisterNetEvent('dj_sile:changeVolume', function(volume)
    for k, v in pairs(Config.Locations) do
        local src = source
        local ped = GetPlayerPed(src)
        local coords = GetEntityCoords(ped)
        local dist = #(coords - v.coords)
        if dist < 3 then
            if not tonumber(volume) then return end
            if v.isPlaying then 
                xSound:setVolume(-1, v.name, volume)
                if Config.Debug then
                    print('DEBUG dj_sile | Music volume changed to: '..volume)
                end
            end
        end
    end
end)
