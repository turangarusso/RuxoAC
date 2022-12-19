fx_version 'adamant'

game 'gta5'
name 'FenixAC'
version '3.0'
description 'FenixAC The Best Anticheat'

ui_page "code/nui/ui.html"

client_scripts {
    "code/entityiter.lua",
    "config/shared_config.lua",
    "client/client.lua",
} 


server_scripts {
    "code/entityiter.lua",
    'code/randomcode.lua',
    'code/installer.lua',
    ---
    'client/shared.lua',
    'config/shared_config.lua',
    'config/server_config.lua',
    'config/table_config.lua',
    'server/server.lua'
} 


files {
	"code/nui/ui.html",
	"code/nui/ui.js",
	"code/nui/ui.css"
}

