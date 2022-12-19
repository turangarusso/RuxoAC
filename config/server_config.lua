
FenixACS = {
	

	
	PrintConnecting = true,

	KickMessage = "Sei stato bannato dall'Anticheat", -- ban / kick message

	ServerName 	= "LEGION", -- Your fivem server name

	License 	= "123456", -- license 

	Version = "3.0", -- dont edit! 
	 
	BanToken = false, -- NoN Usare !

	Log = {

		Discord = { -- here you can set discord webhook
			enable = true,
			image = true,
			webhook_ban 	= "webhook",
			webhook_kick 	= "webhook",
			webhook_warn 	= "webhook",
			webhook_image 	= "webhook",
			webhook_start 	= "webhook",
		},

		Chat = {
			enable = true,  --[Ban /Kick]
		},

		Console = {
			enable = true --[Ban /Kick / Warn]
		},

		AdminAbuse = false --banna kf
	},

	GiveWeaponsProtection = {

		Enable = true,
		
		MaxWeaponAmmo = 1000,
	},

	AntiClearPedTasks = true, --lo sto testando (elimina il comando/animazine che un player sta eseguento)

	NoParticles = true, --R

	CheckWordBlacklist = true, --R

	BypassAdmin = {
		"steam:11000014871fc9f", 
		"discord:849207069461577739",
		
	},
}

Lang = {

    ["regenerating_file_ban.json"] 			= "Your bans.json is missing, Regenerating your bans.json file!",
    ["corrupted_file_ban.json"] 			= "Your bans.json is corrupted, Regenerating your bans.json file!",
	["player"] 								= "Player: ",
	["banned"] 								= " : was banned",
	["connecting"]							= " connecting in to the server",
	["player_name_not_available"] 			= "Player Name is not available",
	["title_webhook_banned"] 				= "Banned",
	["title_webhook_kicked"]				= "Kicked",
	["title_webhook_warning"] 				= "Warning",
	["title_webhook_image"] 				= "Image",
	["log_console:warning"] 				= " ^1Warning^0 ",
	["log_console:kicked"] 					= " ^3Kicked^0 ",
	["log_console:banned"] 					= " ^1Banned^0 ",
	["detection"] 							= " Detection: ",
	["you_is_banned_from_this_server"] 		= " You is banned from this server",
	["connecting_banned_tokens"] 			= " tried an anticheat bypass but is banned by token",
	["connecting_banned_identifier"] 		= " it is trying to connect but it is banned",
	["caused_blacklist_explosion"] 			= "The player caused an explosion with a ",
	["and_was_detected"] 					= " and was detected ",
	["caused_silent_explosion"] 			= "The player caused silent explosion and was detected ",
	["caused_invisible_explosion"] 			= "The player caused invisible explosion and was detected ",
	["caused_oneshot_explosion"] 			= "The player caused oneshot explosion and was detected ",
	["spawned_blacklisted_entity"] 			= " The player spawned a blacklisted entity ",
	["spawned_too_many_peds"] 				= "The player spawned too many peds and was detected",
	["spawned_too_many_vehicle"] 			= "The player spawned too many vehicles and was detected",
	["giveweapon_event_give"] 				= "The player gave weapons to another player and was detected",
	["giveweapon_event_giveammo"] 			= "The player has given ammunition to a player and has been detected",
	["giveweapon_event_remove"] 			= "The player tried to remove the weapons from a player and was detected",
	["giveweapon_event_removeall"] 			= "The player tried to remove everyone's weapons and has been detected",
	["clear_ped_task"] 						= "Tried to clear ped tasks",
	["trigger_blacklist_event"] 			= "Triggered blacklist events: ",
	["request_screen"] 						= "An admin requested the player screen and it was sent",
	["screen_key"] 							= "The player pressed a blacklisted key and a screen was sent",
	["anti_godmode_ban"]  					= "The player has entered godmode and has been detected",
   	["anti_spectate_ban"] 					= "The player tried to spectate and was detected",
   	["anti_rape_player_ban"] 				= "The player tried to make RapePlayer and it was detected",
   	["anti_nui_dev_ban"] 					= "The player opened the Nui Devtool and it was detected" ,
   	["giveweapon_warn"] 					= "The player tried to get a weapon and was detected",
	["menu_injection_ban"] 					= "The player tried to inject a menu and it was detected",
	["freeze_resource_ban"] 				= "The player tried to freeze a resource and it was detected",
	["word_blacklist_kick"] 				= "The player send a blacklist word and it was detected",
	["refresh_table_config"]				= "Config table Rafreshed",
	["refresh_server_config"]				= "Config Server Rafreshed",
	["anti_godmode_admin"] 					= "**[Admin Abuse]**-- The player has entered godmode and has been detected",
	["anti_rape_player_abuse"] 				= "**[Admin Abuse]**-- The player tried to make RapePlayer and it was detected",
	["anti_nui_dev_abuse"] 					= "**[Admin Abuse]**-- The player opened the Nui Devtool and it was detected" ,
	["giveweapon_warn_abuse"] 				= "**[Admin Abuse]**-- The player tried to get a weapon and was detected",
	["menu_injection_abuse"]				= "**[Admin Abuse]**-- The player tried to inject a menu and it was detected",
	["caused_oneshot_explosion_abuse"] 		= "**[Admin Abuse]**-- The player caused oneshot explosion and was detected ",
	["spawned_too_many_peds_abuse"]  		= "**[Admin Abuse]**-- The player spawned too many peds and was detected",
	["trigger_blacklist_event_abuse"] 		= "**[Admin Abuse]**-- Triggered blacklist events: ",
	["word_blacklist_kick_abuse"] 			= "**[Admin Abuse]**-- The player send a blacklist word and it was detected",
	["giveweapon_event_give_abuse"] 		= "**[Admin Abuse]**-- The player gave weapons to another player and was detected",
	["giveweapon_event_remove_abuse"] 		= "**[Admin Abuse]**-- The player tried to remove the weapons from a player and was detected",
	["giveweapon_event_removeall_abuse"] 	= "**[Admin Abuse]**-- The player tried to remove everyone's weapons and has been detected",
	["clear_ped_task_abuse"] 				= "**[Admin Abuse]**-- Tried to clear ped tasks",
	["spawned_too_many_vehicle_abuse"] 		= "**[Admin Abuse]**-- The player spawned too many vehicles and was detected",
	["spawned_blacklisted_entity_abuse"] 	= "**[Admin Abuse]**-- The player spawned a blacklisted entity",
	["caused_invisible_explosion_abuse"] 	= "**[Admin Abuse]**-- The player caused invisible explosion and was detected ",
	["caused_silent_explosion_abuse"] 		= "**[Admin Abuse]**-- The player caused silent explosion and was detected ",
	["caused_blacklist_explosion_abuse"] 	= "**[Admin Abuse]**-- The player caused an explosion with a ",
}