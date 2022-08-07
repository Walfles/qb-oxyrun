-- Walfles

-- Manifest
fx_version 'cerulean'
game 'gta5'
author 'Walfles'
repository 'https://github.com/Walfles/qb-oxyrun'

-- Client Files
client_scripts {
    'client/cl_*.lua',
    'config.lua'
}

-- Server Files
server_scripts {
    'server/sv_*.lua',
    'config.lua'
}

-- Dependecies
dependency {
    'nh-context', -- https://github.com/nerohiro/nh-context/releases/
    'qb-target' -- https://github.com/qbcore-framework/qb-target/releases/
}
