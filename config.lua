Config = {}


Config.Debug = true -- Lascia true se vuoi il debug 
Config.DefaultVolume = 0.1 -- da 0.1 a 1
Config.Distance = 5.0 -- Non toccare per favore


Config.ox_target = false -- Metti true se preferisci usare ox_target


Config.Locations = {
    {
        onlyJob = true, -- Se è true puo utilizzarlo solo chi ha il job
        job = 'vanilla', -- nome del job nel db
        name = 'Vanilla', -- Nome a fantasia
        coords = vec3(120.5638, -1280.9021, 29.4805), -- Questa senza che te la spiego
        radius = 30, -- Distanza in radius (attenzione ai vicini)
        distance = 2.5, -- Senza che te la spiego nemmeno questa
        isPlaying = false -- Non toccare assolutamente
    },
   
}

Config.Language = {
    ['openMenu'] = '[E] - Apri dj sile',
    ['titleMenu'] = '💿 | DJ Sile',
    ['playSong'] = '🎶 | Riproduci una canzone',
    ['playSongDesc'] = 'Inserisci l\'url di youtube',
    ['pauseMusic'] = '⏸️ | Pausa',
    ['pauseMusicDesc'] = 'Pausa 1',
    ['resumeMusic'] = '▶️ | Riprendi',
    ['resumeMusicDesc'] = 'Riprendi musica in pausa',
    ['changeVolume'] = '🔈 | Cambia Volume',
    ['changeVolumeDesc'] = 'Cambia il volume della canzone',
    ['stopMusic'] = '❌ | Spegni',
    ['stopMusicDesc'] = 'Stoppa la canzone e scegline una nuova',
    ['songSel'] = 'Scelta canzoni',
    ['url'] = 'Youtube URL',
    ['musicVolume'] = 'Volume Musica ',
    ['musicVolumeNm'] = 'Min: 0.01 - Max: 1', -- Pls dont change numbers (0.01 - 1)

    --- Playlist ---
    ['playlistMenu'] = '🎶 | DJ Sile Playlist',
    ['playlistDesc'] = 'Riproduci una canzone dalla playlist',
    ['playlistMenuTitle'] = '🎶 | Riproduci la canzone'
}

Config.Playlist = {
    --- Prima canzone
    ['first'] = '💿 | Mess', -- Name of first song
    ['desc_first'] = 'Description of the song', -- Description of the song
    ['music_first_id'] = 'https://www.youtube.com/watch?v=-Kjrf-pxQc4', -- Url from YT

    --- Seconda canzone ---
    ['second'] = '💿 | Shiver', -- Name of second song
    ['desc_second'] = 'Description of the song',
    ['music_second_id'] = 'https://www.youtube.com/watch?v=NdUNtHqY5r8',

    --- Terza canzone ---
    ['third'] = '💿 | Good With It', -- Name of third song
    ['desc_third'] = 'Description of the song',
    ['music_third_id'] = 'https://www.youtube.com/watch?v=RInypZYiiDM',

    --- Quarta canzone ---
    ['fourth'] = '💿 | Back To You',
    ['desc_fourth'] = 'Description of the song',
    ['music_fourth_id'] = 'https://www.youtube.com/watch?v=rrzHAoA-oRI',
}
