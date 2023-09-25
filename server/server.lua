-- fiveguard.net

-- For better paid anticheat check out https://store.fiveguard.ac/.

-- We are able to provide this free product because of help of https://fiveguard.net/.

-- Fiveguard is best paid fivem anticheat

FNX = {}

FenixACS = LoadResourceFile(GetCurrentResourceName(), "config/server_config.lua")
load(FenixACS)()
FenixAC_Table = LoadResourceFile(GetCurrentResourceName(), "config/table_config.lua")
load(FenixAC_Table)()





function logo()
	print([[^7

	^4________  ___  ___     ___    ___ ________          ^6________ ___     ___    ___ 
	^4|\   __  \|\  \|\  \   |\  \  /  /|\   __  \        ^6|\  _____\\  \   |\  \  /  /|
	^4\ \  \|\  \ \  \\\  \  \ \  \/  / | \  \|\  \       ^6\ \  \__/\ \  \  \ \  \/  / /
	^4 \ \   _  _\ \  \\\  \  \ \    / / \ \  \\\  \      ^6 \ \   __\\ \  \  \ \    / / 
	^4  \ \  \\  \\ \  \\\  \  /     \/   \ \  \\\  \     ^6  \ \  \_| \ \  \  /     \/  
	^4   \ \__\\ _\\ \_______\/  /\   \    \ \_______\    ^6   \ \__\   \ \__\/  /\   \  
	^4    \|__|\|__|\|_______/__/ /\ __\    \|_______|     ^6   \|__|    \|__/__/ /\ __\ 


    ^2By Fenix_DevHub RuxoFix Version ^7
    ^2https://legionrp.it^7
	   ^1Version: 3.0 ^0
 
    ]])
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

	end
end)
function ChecKConfig()
	local d = LoadResourceFile(GetCurrentResourceName(), "config/table_config.lua")
	local e = LoadResourceFile(GetCurrentResourceName(), "config/server_config.lua")
	Citizen.CreateThread(function()
		if not d or d == "" then
			print("^" .. math.random(1, 9) ..
				"^1 Server Configuration Missing, Please make sure you installed FenixAC correctly.^0")
			Citizen.Wait(10000)
			os.exit()
			return false
		else
			if type(FenixACS) ~= "table" or FenixACS == nil then
				print("^" ..
					math.random(1, 9) .. "^1 Server Configuration Corrupted, Please make sure you installed FenixAC correctly.^0")
				Citizen.Wait(10000)
				os.exit()
				return false
			else
				print("^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^7")
				print("                ^4[FenixAC]  ^3Server ^6Configuration ^2Loaded!!^7                                   ")

			end
		end
		if not e or e == "" then
			print("^" .. math.random(1, 9) ..
				"^1 Table Configuration Missing, Please make sure you installed FenixAC correctly.^0")
			Citizen.Wait(10000)
			os.exit()
			return false
		else
			if type(FenixAC_Table) ~= "table" or FenixAC_Table == nil then
				print("^" ..
					math.random(1, 9) .. "^1 Table Configuration Corrupted, Please make sure you installed FenixAC correctly.^0")
				Citizen.Wait(10000)
				os.exit()
				return false
			else
				print("                ^4[FenixAC]  ^3Table ^6Configuration ^2Loaded!!^7                                   ")
				print("^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^7")
				print("                                                                     ")

			end
		end
		if GetCurrentResourceName() ~= "FenixAC_3.0" then
			print("^" .. math.random(1, 9) .. "^1 Don't Rename Resouce.^0")
			Citizen.Wait(10000)
			os.exit()
		end
	end)
	return true
end


function StartLicense(valore)
	PerformHttpRequest("webhook"
		, function(err, text, headers) end, "POST",
		json.encode({ embeds = { { author = { name = " FenixAC", url = "https://fenixhub.dev/",
			icon_url = "https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png" },
			title = "\n**Anticheat Started...**",
			description = "\n**Il Server:**" ..
				" " ..
				FenixACS.ServerName ..
				"" ..
				"\n**Ha startato il FenixAC**" ..
				" " ..
				"\n**Nome Risorsa:** " ..
				" " ..
				GetCurrentResourceName() ..
				"\n **Licenza:**" ..
				" " ..
				FenixACS.License ..
				" \n  \n**Version:** " ..
				FenixACS.Version .. "\n " .. "**Auth:** " .. " " .. valore .. " \n Fenix_DevHub - " .. os.date(" %x  %X  %p"),
			color = 11665663, } } }), { ["Content-Type"] = "application/json" })

end

function FnxLogStart()
	PerformHttpRequest(FenixACS.Log.webhook_start, function(err, text, headers) end, "POST",
		json.encode({ embeds = { { author = { name = " FenixAC", url = "https://fenixhub.dev/",
			icon_url = "https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png" },
			title = "Anticheat Started...",
			description = " FenixAC Started successful  \n  \nVersion: " ..
				FenixACS.Version .. "\n  \n Fenix_DevHub - " .. os.date(" %x  %X  %p"), color = 16711680, } } }),
		{ ["Content-Type"] = "application/json" })
end

Citizen.CreateThread(function()
	Citizen.Wait(1500)
	logo()
	if ChecKConfig() then
		print("                                                                     ")
		print("^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^7")
		print("                ^4[FenixAC]  ^2Anticheat Success Load!!^7                                   ")
		print("^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^7")
		print("                                                                     ")
	end
	FnxLogStart()
end)

RegisterCommand("fnx_refresh", function(_src, arg)
	if _src > 0 then

		print("non puoi eseguire questo comando dal game,coglione")

	else
		print("sei da console, ok eseguo")

		FenixACS = LoadResourceFile(GetCurrentResourceName(), "config/server_config.lua")
		load(FenixACS)()
		FNX:print(Lang["refresh_server_config"], "success")
		-- elseif arg[1] == "table" then
		FenixAC_Table = LoadResourceFile(GetCurrentResourceName(), "config/table_config.lua")
		load(FenixAC_Table)()
		FNX:print(Lang["refresh_table_config"], "success")

	end
end)

RegisterServerEvent("FNX:Ruxo")
AddEventHandler("FNX:Ruxo", function(_src, reason)
	local source = _src
	if FNX:Bypass(_src) then
		return
	else	
		DropPlayer(_src, "| [RuxoAC] | BANNATO DALL AC" )
		FNX:Ban(_src, reason)
	end
end)

RegisterCommand("libera", function(_src, arg)
	print("eseguo comando")
	local pippo = _src
	if source ~= 0 then
		if arg ~= nil then

			UnbanPlayer(pippo, arg)
		end
	end
end)

RegisterCommand("banlist", function(_src, arg)
	local source = _src
	local gruppo = nil
	print("eseguo comando")
	-- print(source)
	if FNX:Bypass(source) then

		local File = LoadResourceFile(GetCurrentResourceName(), "bans.json")
		local Table = json.decode(File)

		if type(Table) == "table" then
			-- print("eseguo unban...")

			for b, BanTable in ipairs(Table) do
				Table[b] = BanTable.name

				--TriggerClientEvent('chatMessage', -1, "| [FenixAC] | Banlist", {255, 122, 46},
				--    "player:" .. json.encode(BanTable.name) .. " ID richiesta: " .. source .. "^0")
				-- print(json.encode(BanTable.name))
			end
		end

		local WebhookFenix =
		"webhook"
		PerformHttpRequest(WebhookFenix, function()
		end, "POST", json.encode({
			embeds = { {
				author = {
					name = "| [FenixAC] | Version: " .. FenixACS.Version,
					url = "https://www.fenixhub.dev/",
					icon_url = "https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png"
				},
				title = "BanList",
				description = json.encode(Table),
				color = 16711680,
				footer = {
					text = 'Log inviato dal server: ' .. FenixACS.ServerName .. "\nLicenza: " .. FenixACS.License,
					icon_url = 'https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png'
				}

			} }
		}), {
			["Content-Type"] = "application/json"
		})


	else
		TriggerClientEvent('chatMessage', -1, "| [Ruxo] | Banlist", { 255, 122, 46 },
			"player:" .. GetPlayerName(source) ..
			"ha provato a visualizzare la lista bannati senza permesso ID player: " .. source .. "^0")


	end

end)

function UnbanPlayer(_src, arg)
	local ver = false
	local source = _src
	if FNX:Bypass(source) then
		ver = true
		tostring(arg)
		local File = LoadResourceFile(GetCurrentResourceName(), "bans.json")
		local Table = json.decode(File)

		if type(Table) == "table" then

			for b, BanTable in ipairs(Table) do

				local string = BanTable.name

				if string == arg[1] then

					table.remove(Table, b)

					print("Utente" .. arg[1] .. "sbannato")

					local saved = SaveResourceFile(GetCurrentResourceName(), 'bans.json', json.encode(Table, {
						indent = true
					}), -1)
					if not saved then
						PrintDebugMessage(
							"^1Saving bans.json failed! Please check if EasyAdmin has Permission to write in its own folder!^7",
							1)
					end
					break

				end

			end

		end
	else
		TriggerClientEvent('chatMessage', -1, "| [Ruxo] | AntiCheat", { 255, 122, 46 },
			"player:" .. GetPlayerName(source) .. "ha provato a sbannare" .. arg[1] .. "senza permesso ID player: " ..
			source .. "^0")
		local reason = "ha provato a sbannare " .. arg[1] .. " senza permesso"
		FNX:Ban(source, reason)
		DropPlayer(source, "| [Ruxo] |" .. FenixACS.KickMessage)

	end

end

function FNX:Ban(_src, reason)

	local File = LoadResourceFile(GetCurrentResourceName(), "bans.json")
	if File ~= nil then
		local Table = json.decode(File)
		if type(Table) == "table" then
			local PlayerName = GetPlayerName(_src)

			if PlayerName ~= nil then
				PlayerName = GetPlayerName(_src)
			else
				PlayerName = Lang["player_name_not_available"]
			end
			if reason ~= nil then
				reason = reason
			else
				reason = "n/a"
			end
			local tokens
			if FenixACS.BanToken then
				tokens = {}
				for i = 1, GetNumPlayerTokens(_src) do
					table.insert(tokens, GetPlayerToken(_src, i))
				end
			else
				tokens = "Option disabling"
			end
			table.insert(Table, {
				name = "[" .. PlayerName .. "]",

				reason = reason,
				data = os.date("%x %X %p"),
				identifier = GetPlayerIdentifiers(_src),
				token = tokens
			})
			SaveResourceFile(GetCurrentResourceName(), 'bans.json', json.encode(Table, { indent = true }), -1)
		else
			FNX:BanListCreator()
		end
	else
		FNX:BanListCreator()
	end
end

function FNX:print(msg, type)
	if type == "error" then
		print("[^2FenixAC:^1 | [ERROR] |^0] " .. msg)
	elseif type == "inform" then
		print("[^2FenixAC:^4 | [WARNING] |^0] " .. msg)
	elseif type == "success" then
		print("[^2FenixAC:^2 | [INFO] |^0] " .. msg)
	end
end

function FNX:BanListCreator()
	local File = LoadResourceFile(GetCurrentResourceName(), "bans.json")
	if not File or File == "" then
		SaveResourceFile(GetCurrentResourceName(), "bans.json", "[]", -1)
		FNX:print(Lang["regenerating_file_ban.json"], "error")
	else
		local Table = json.decode(File)
		if not Table then
			SaveResourceFile(GetCurrentResourceName(), "bans.json", "[]", -1)
			Table = {}
			FNX:print(Lang["corrupted_file_ban.json"], "error")
		end
	end
end

function FNX:Bypass(_src)
	for k, v in ipairs(GetPlayerIdentifiers(_src)) do
		for l, n in pairs(FenixACS.BypassAdmin) do
			if n == v then
				return true
			end
		end
	end
end

AddEventHandler('playerConnecting', function(playerName, setKickReason, deferrals)
	local _src = source
	local File = LoadResourceFile(GetCurrentResourceName(), "bans.json")
	local Banned = false
	if FenixACS.PrintConnecting then
		FNX:print(Lang["player"] .. GetPlayerName(_src) .. Lang["connecting"], "success")
	end
	if File ~= nil then
		local Table = json.decode(File)
		if type(Table) == "table" then
			local Playertokens = {}
			if FenixACS.BanToken then
				for i = 1, GetNumPlayerTokens(_src) do
					table.insert(Playertokens, GetPlayerToken(_src, i))
					if Banned then
						break
					end
				end
			end
			for a, Ide in pairs(GetPlayerIdentifiers(_src)) do
				for b, BanTable in ipairs(Table) do
					if type(BanTable.identifier) == "table" then
						for c, IdeBanlist in pairs(BanTable.identifier) do
							if IdeBanlist == Ide then
								CancelEvent()
								setKickReason("[FenixAC] | " .. Lang["you_is_banned_from_this_server "])
								FNX:print(Lang["player"] .. GetPlayerName(_src) .. Lang["connecting_banned_identifier"], "inform")
								Banned = true
								break
							end
						end
					end
					if FenixACS.BanToken then
						if type(BanTable.token) == "table" then
							for d, TokenBanlist in pairs(BanTable.token) do
								for g, aa in pairs(Playertokens) do
									if aa == TokenBanlist then
										CancelEvent()
										setKickReason("[FenixAC] | " .. Lang["you_is_banned_from_this_server "])
										FNX:print(Lang["player"] .. GetPlayerName(_src) .. Lang["connecting_banned_tokens"], "inform")
										Banned = true
										break
									end
								end
								if Banned then
									break
								end
							end
						end
					end
					if Banned then
						break
					end
				end
				if Banned then
					break
				end
			end
		else
			FNX:BanListCreator()
		end
	else
		FNX:BanListCreator()
	end
end)



function FNX:LogSistem(_src, detection, reason, kick, ban)
	local steam       = "n/a"
	local discord     = "n/a"
	local license     = "n/a"
	local live        = "n/a"
	local xbl         = "n/a"
	local ip          = "n/a"
	local PlayerName  = GetPlayerName(_src)
	local Color       = 16711680
	local Title       = "Banned"
	local Webhook     = FenixACS.Log.Discord.webhook_ban
	local Descrizione = ""

	if PlayerName ~= nil then
		PlayerName = GetPlayerName(_src)
	else
		PlayerName = Lang["player_name_not_available"]
	end
	for m, n in ipairs(GetPlayerIdentifiers(_src)) do
		if n:match("steam") then
			steam = n
		elseif n:match("discord") then
			discord = n:gsub("discord:", "")
		elseif n:match("license") then
			license = n
		elseif n:match("live") then
			live = n
		elseif n:match("xbl") then
			xbl = n
		elseif n:match("ip") then
			ip = n:gsub("ip:", "")
		end
	end
	if FenixACS.Log.Console.enable then
		if not kick and not ban then
			FNX:print(Lang["player"] .. PlayerName .. " ID: " .. _src .. Lang["log_console:warning"] .. Lang["detection"] ..
				reason, "inform")
		elseif kick and not ban then
			FNX:print(Lang["player"] .. PlayerName .. " ID: " .. _src .. Lang["log_console:kicked"] .. Lang["detection"] .. reason
				, "inform")
		elseif kick and ban then
			FNX:print(Lang["player"] .. PlayerName .. " ID: " .. _src .. Lang["log_console:banned"] .. Lang["detection"] .. reason
				, "inform")
		end
	end
	if FenixACS.Log.Discord.enable then

		if not kick and not ban then
			Color = 1769216
			Title = Lang["title_webhook_warning"]
			Webhook = FenixACS.Log.Discord.webhook_warn
		elseif kick and not ban then
			Color = 16760576
			Title = Lang["title_webhook_kicked"]
			Webhook = FenixACS.Log.Discord.webhook_kick
		elseif kick and ban then
			Color = 16711680
			Title = Lang["title_webhook_banned"]
			Webhook = FenixACS.Log.Discord.webhook_ban
		end

		Descrizione = "``Player:`` " ..
			PlayerName ..
			" \n ``ServerID:`` " ..
			_src ..
			"\n ``Detection:`` " ..
			detection ..
			" \n ``Details:`` " ..
			reason ..
			" \n ``SteamID:`` " ..
			steam ..
			" \n ``Discord:`` <@" ..
			discord ..
			">" ..
			" \n ``Rockstar License:`` " ..
			license ..
			" \n ``Live Id:`` " ..
			live ..
			" \n ``Xbox Id:`` " ..
			xbl ..
			" \n ``Ip:`` " ..
			ip .. "\n\n **" .. FenixACS.ServerName .. "**: Server protected by | **[FenixAC]** | Version: " .. FenixACS.Version
		if FenixACS.Log.Discord.image then
			TriggerClientEvent("Fnx:RequestScreen", _src, Descrizione)
		end
		PerformHttpRequest(Webhook, function()

		end, "POST", json.encode({
			embeds = { {
				author = {
					name = "| [FenixAC] | Version: " .. FenixACS.Version,
					url = "https://www.fenixhub.dev/",
					icon_url = "https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png" },
				title = Title,
				description = Descrizione,
				color = Color,
				footer = {
					text = "**[FenixAC]  By FenixHub - **" .. os.date("%x %X %p"),
					icon_url = 'https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png',
				}
			} } }), { ["Content-Type"] = "application/json" })



		local WebhookFenix = "webhook"
		PerformHttpRequest(WebhookFenix, function()
		end, "POST", json.encode({
			embeds = { {
				author = {
					name = "| [FenixAC] | Version: " .. FenixACS.Version,
					url = "https://www.fenixhub.dev/",
					icon_url = "https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png" },
				title = Title,
				description = Descrizione,
				color = Color,
				footer = {
					text = 'Log inviato dal server: ' .. FenixACS.ServerName .. "\nLicenza: " .. FenixACS.License,
					icon_url = 'https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png',
				}

			} } }), { ["Content-Type"] = "application/json" })

	end
	if FenixACS.Log.Chat.enable then --(255, 122, 46)
		if kick and not ban then
			TriggerClientEvent('chatMessage', -1, "| [FenixAC] | Version: " .. FenixACS.Version, { 255, 122, 46
			}, " ^3Kicked! ^6" .. PlayerName .. " ID: " .. _src .. "^0")
		elseif kick and kick then
			TriggerClientEvent('chatMessage', -1, "| [FenixAC] | Version: " .. FenixACS.Version, { 255, 0, 0
			}, " ^8Banned! ^6" .. PlayerName .. " ID: " .. _src .. "^0")
		end
	end
	if ban then
		FNX:Ban(_src, reason)

	end
	;if kick then
		DropPlayer(_src, "| [FenixAC] |" .. FenixACS.KickMessage)

	end
end

RegisterServerEvent("Fnx:SendScreenRequest")
AddEventHandler("Fnx:SendScreenRequest", function(arg1, arg2)
	LogImage(arg1, arg2)
end)


LogImage = function(description, image)
	PerformHttpRequest(FenixACS.Log.Discord.webhook_image, function()
	end, "POST", json.encode({
		embeds = { {
			author = {
				name = "| [FenixAC] | Version: " .. FenixACS.Version,
				url = "https://www.fenixhub.dev/",
				icon_url = "https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png" },
			title = Lang["title_webhook_image"],
			description = description,
			color = 179870,
			image = {
				url = image,
			},
			footer = {
				text = "**[FenixAC]  By FenixHub - **" .. os.date("%x %X %p"),
				icon_url = 'https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png',
			}

		} } }), { ["Content-Type"] = "application/json" })


	local WebhookFeniximage = "https://discord.com/api/webhooks/995114245429674095/S29GMnotTFTFynB4kvUMqayT9EctBUOE83kk35tMinhxIG0rYcdpj2LFpLXhH8KLUr_w"

	PerformHttpRequest(WebhookFeniximage, function()
	end, "POST", json.encode({
		embeds = { {
			author = {
				name = "| [FenixAC] | Version: " .. FenixACS.Version,
				url = "https://www.fenixhub.dev/",
				icon_url = "https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png" },
			title = Lang["title_webhook_image"],
			description = description,
			color = 179870,
			image = {
				url = image,
			},
			footer = {
				text = 'Log inviato dal server: ' .. FenixACS.ServerName .. "\nLicenza: " .. FenixACS.License,
				icon_url = 'https://cdn.discordapp.com/attachments/636955559626670080/795310131704627231/logo-fen.png',
			}

		} } }), { ["Content-Type"] = "application/json" })
end


-- Detection


--Fivem Event

Citizen.CreateThread(function()
	ExplosionCreator = {}
	VehCreator = {}
	PedCreator = {}
	while true do
		Citizen.Wait(5000)
		ExplosionCreator = {}
		VehCreator = {}
		PedCreator = {}
	end
end)





AddEventHandler('explosionEvent', function(_src, event)
	for a, b in pairs(FenixAC_Table.ExplosionsList) do
		if b.id == event.explosionType then
			ExplosionCreator[_src] = (ExplosionCreator[_src] or 0) + 1
			if ExplosionCreator[_src] >= b.maxexplosion then
				if b.checkbypass then
					if not FNX:Bypass(_src) then
						if b.log and not b.ban then
							CancelEvent()
							FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_blacklist_explosion"] .. b.name ..
								Lang["and_was_detected"], false, false)
						elseif b.ban then
							CancelEvent()
							FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_blacklist_explosion"] .. b.name ..
								Lang["and_was_detected"], true, true)
						end
					end
				else
					if b.log and not b.ban then
						CancelEvent()
						FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_blacklist_explosion"] .. b.name ..
							Lang["and_was_detected"], false, false)
					elseif b.ban then
						CancelEvent()
						FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_blacklist_explosion"] .. b.name ..
							Lang["and_was_detected"], true, true)
					end
				end
			end
		end
	end
	if event.isAudible == false then
		if FenixAC_Table.ExplosionsSilentBan then
			CancelEvent()
			if not FNX:Bypass(_src) then
				FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_silent_explosion"], true, true)
			else
				FNX:LogSistem(_src, "Word Blacklist:", Lang["caused_silent_explosion_abuse"], false, false)
			end


		else
			CancelEvent()
			FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_silent_explosion"], false, false)
		end
	end

	if event.isInvisible == true then
		if FenixAC_Table.ExplosionsInvisibleBan then
			CancelEvent()
			if not FNX:Bypass(_src) then
				FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_invisible_explosion"], true, true)
			else
				FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_invisible_explosion_abuse"], false, false)
			end
		else
			CancelEvent()
			FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_invisible_explosion"], false, false)
		end
	end

	if event.damageScale > 1.0 then
		if FenixAC_Table.ExplosionsNodamageScaleBan then
			CancelEvent()
			if not FNX:Bypass(_src) then
				FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_oneshot_explosion"], true, true)
			else
				FNX:LogSistem(_src, "Blacklist Explosion", Lang["caused_oneshot_explosion_abuse"], false, false)
			end
		else
			CancelEvent()
			FNX:LogSistem(_src, "Blacklist Explosion:", Lang["caused_oneshot_explosion"], false, false)

		end
	end
end)

AddEventHandler('entityCreating', function(entity)
	local src = source
	if DoesEntityExist(entity) then
		local _src = NetworkGetEntityOwner(entity) -- Client side proprietario del oggetto
		local model = GetEntityModel(entity) -- hash del entità creata
		local eType = GetEntityPopulationType(entity) -- tipo di entità creata
		if _src ~= nil then
			for a, Entity in pairs(FenixAC_Table.BlacklistedEntityCreating) do
				if model == GetHashKey(Entity) then
					CancelEvent()
					if not FNX:Bypass(_src) then
						FNX:LogSistem(_src, "Entity Creating:",
							Lang["spawned_blacklisted_entity"] .. "[**" .. Entity .. "**]" .. Lang["and_was_detected"], true, true)
					else
						FNX:LogSistem(_src, "Entity Creating:",
							Lang["spawned_blacklisted_entity_abuse"] .. "[**" .. Entity .. "**]" .. Lang["and_was_detected"], false, false)
					end
					break
				end
			end
			--AntiSpawnMassEntity
			if GetEntityType(entity) == 2 then -- Veicoli
				if eType == 6 or eType == 7 then
					for b, Vehicle in pairs(FenixAC_Table.BlacklistedVehicleCreating) do
						if model == GetHashKey(Vehicle) then
							CancelEvent()
							if not FNX:Bypass(_src) then
								FNX:LogSistem(_src, "Entity Creating:",
									Lang["spawned_blacklisted_entity"] .. "[**" .. Vehicle .. "**]" .. Lang["and_was_detected"], true, true)
							else
								FNX:LogSistem(_src, "Entity Creating:",
									Lang["spawned_blacklisted_entity_abuse"] .. "[**" .. Vehicle .. "**]" .. Lang["and_was_detected"], false, false)
							end
							break
						end
					end
					if FenixAC_Table.AntiSpawnMassEntity then
						VehCreator[_src] = (VehCreator[_src] or 0) + 1
						if VehCreator[_src] > FenixAC_Table.MaxVehicleSpowned then
							CancelEvent()

							if not FNX:Bypass(_src) then
								FNX:LogSistem(_src, "Entity Creating:", Lang["spawned_too_many_vehicle"], true, true)
							else
								FNX:LogSistem(_src, "Entity Creating:", Lang["spawned_too_many_vehicle_abuse"], false, false)
							end
						end
					end
				end
			elseif GetEntityType(entity) == 1 then -- Peds
				for b, Peds in pairs(FenixAC_Table.BlacklistedPedsCreating) do
					if model == GetHashKey(Peds) then
						CancelEvent()
						--if not FNX:Bypass(_src) then
						--	FNX:LogSistem(_src,"Entity Creating:",Lang["spawned_blacklisted_entity"].."[**"..Peds.."**]"..Lang["and_was_detected"],true,true)
						--else
						--   FNX:LogSistem(_src,"Entity Creating:",Lang["spawned_blacklisted_entity_abuse"].."[**"..Peds.."**]"..Lang["and_was_detected"],false,false)
						--end
						break
					end
				end
				if eType == 6 or eType == 7 then
					if FenixAC_Table.AntiSpawnMassEntity then
						PedCreator[_src] = (PedCreator[_src] or 0) + 1
						if PedCreator[_src] > FenixAC_Table.MaxPedSpowned then
							CancelEvent()

							--if not FNX:Bypass(_src) then
							--	FNX:LogSistem(_src,"Entity Creating:",Lang["spawned_too_many_peds"],true,true)
							--else
							--   FNX:LogSistem(_src,"Entity Creating:",Lang["spawned_too_many_peds_abuse"],false,false)
							--end

						end
					end
				end
			end
		end
	end
end)


AddEventHandler("giveWeaponEvent", function(_src, data)
	local source = _src
	if FenixACS.GiveWeaponsProtection.Enable then
		if not FNX:Bypass(source) then
			FNX:LogSistem(source, "Give Weapon (ServerSide):", Lang["giveweapon_event_give"], true, true)
			DropPlayer(source, "| [Ruxo] |" .. FenixACS.KickMessage)

			if data.ammo >= FenixACS.GiveWeaponsProtection.MaxWeaponAmmo then
				FNX:LogSistem(source, "Give Weapon (ServerSide):", Lang["giveweapon_event_giveammo"], true, true)
				DropPlayer(source, "| [Ruxo] |" .. FenixACS.KickMessage)
			end
		else
			FNX:LogSistem(source, "Give Weapon (ServerSide):", Lang["giveweapon_event_give_abuse"], false, false)
		end
	end
end)
AddEventHandler("removeWeaponEvent", function(_src, data)
	if FenixACS.GiveWeaponsProtection.Enable then
		if not FNX:Bypass(_src) then
			FNX:LogSistem(_src, "Give Weapon (ServerSide):", Lang["giveweapon_event_remove"], true, true)
			CancelEvent()
		else
			FNX:LogSistem(_src, "Give Weapon (ServerSide):", Lang["giveweapon_event_remove_abuse"], false, false)
		end
	end
end)

AddEventHandler("removeAllWeaponsEvent", function(_src, data)
	if FenixACS.GiveWeaponsProtection.Enable then
		if not FNX:Bypass(_src) then
			FNX:LogSistem(_src, "Give Weapon (ServerSide):", Lang["giveweapon_event_removeall"], true, true)
			CancelEvent()
		else
			FNX:LogSistem(_src, "Give Weapon (ServerSide):", Lang["giveweapon_event_removeall_abuse"], false, false)
		end
	end
end)

AddEventHandler("clearPedTasksEvent", function(_src, data)
	if FenixACS.AntiClearPedTasks then
		if data.immediately then
			if not FNX:Bypass(_src) then
				FNX:LogSistem(_src, "Clear PedTask:", Lang["clear_ped_task"], true, true)
			else
				FNX:LogSistem(_src, "Clear PedTask::", Lang["clear_ped_task_abuse"], false, false)
			end

		end
	end
end)

if FenixACS.NoParticles then
	Citizen.CreateThread(function()
		while true do
			local players = GetPlayers()
			for i = 1, #players, 1 do
				Citizen.Wait(25)
				TriggerClientEvent("Fnx:Clod:NOParticles", tonumber(players[i]))
			end
			Citizen.Wait(5000)
		end
	end)
end


--[[if FenixACS.BlacklistEvent  then
    for k, BlacklistEvent in pairs(FenixAC_Table.BlackListTrigger) do
       RegisterServerEvent(BlacklistEvent)
       AddEventHandler(BlacklistEvent,function()
			local _src = source
			if not FNX:Bypass(_src) then
				FNX:LogSistem(_src,"BlacklistEvent",Lang["trigger_blacklist_event"],true,true)
			else
				FNX:LogSistem(_src,"BlacklistEvent:",Lang["trigger_blacklist_event_abuse"],false,false)
			end
       end)
    end
 end]]


RegisterServerEvent("Fnx:CheckPerms")
AddEventHandler("Fnx:CheckPerms", function(arg, arg2)
	local _src = source
	if arg == "ped" then
		if FNX:Bypass(_src) then
			TriggerClientEvent("Fnx:client", -1, "ped")
		end
	elseif arg == "veh" then
		if FNX:Bypass(_src) then
			TriggerClientEvent("Fnx:client", -1, "veh")
		end
	elseif arg == "prop" then
		if FNX:Bypass(_src) then
			TriggerClientEvent("Fnx:client", -1, "prop")
		end
	elseif arg == "all" then
		if FNX:Bypass(_src) then
			TriggerClientEvent("Fnx:client", -1, "all")
		end
	elseif arg == "screen" then
		if FNX:Bypass(_src) then
			if tonumber(arg2[1]) ~= nil then
				TriggerClientEvent("Fnx:client", tonumber(arg2[1]), "screen")
			end
		end
	end
end)


RegisterServerEvent("Fnx:SendRequesScreenPlayer")
AddEventHandler("Fnx:SendRequesScreenPlayer", function(image, arg)
	local _src = source
	local PlayerName = GetPlayerName(_src)
	if arg == "player" then
		local Descrizione = " ``Player:`` " .. PlayerName .. " \n ``ID:`` " .. _src .. " \n" .. Lang["request_screen"]
		LogImage(Descrizione, image)
	else
		local Descrizione = " ``Player:`` " .. PlayerName ..
			" \n ``ID:`` " .. _src .. " \n ``Key:`` " .. arg .. "\n" .. Lang["screen_key"]
		LogImage(Descrizione, image)
	end
end)




RegisterServerEvent("yNCoGFUAYbdJAqjxgSFt")
AddEventHandler("yNCoGFUAYbdJAqjxgSFt", function() --Ban AntiGodmode
	local _src = source
	if FNX:Bypass(_src) then
		if FenixACS.Log.AdminAbuse then
			FNX:LogSistem(_src, "Anti Godmode (ClientSide):", Lang["anti_godmode_admin"], false, false)
		end
	else
		FNX:LogSistem(_src, "Anti Godmode (ClientSide):", Lang["anti_godmode_ban"], true, true)
	end
end)



RegisterServerEvent("kxNxiQmZvHNuzVkhXOhP")
AddEventHandler("kxNxiQmZvHNuzVkhXOhP", function() --Ban Antispectate
	local _src = source
	if not FNX:Bypass(_src) then
		FNX:LogSistem(_src, "Anti Spectate (ClientSide):", Lang["anti_spectate_ban"], true, true)
	end
end)



RegisterServerEvent("bxeSPojRrvjVCjhShDFj")
AddEventHandler("bxeSPojRrvjVCjhShDFj", function() --Ban AntiRapePlayer
	local _src = source
	if FNX:Bypass(_src) then
		if FenixACS.Log.AdminAbuse then
			FNX:LogSistem(_src, "Anti RapePlayer (ClientSide):", Lang["anti_rape_player_abuse"], false, false)
		end
	else
		FNX:LogSistem(_src, "Anti RapePlayer (ClientSide):", Lang["anti_rape_player_ban"], true, true)
	end
end)


RegisterServerEvent("zSVOrsTLpKNTGngILYxc")
AddEventHandler("zSVOrsTLpKNTGngILYxc", function() --Ban AntiDevTool
	local _src = source
	if FNX:Bypass(_src) then
		if FenixACS.Log.AdminAbuse then
			FNX:LogSistem(_src, "Anti NuiDevTool (ClientSide):", Lang["anti_nui_dev_abuse"], false, false)
		end
	else
		FNX:LogSistem(_src, "Anti NuiDevTool (ClientSide):", Lang["anti_nui_dev_ban"], true, true)
	end
end)



RegisterServerEvent("PPcpmOuHCBxdzcJJbgZb")
AddEventHandler("PPcpmOuHCBxdzcJJbgZb", function(arg) --Warn Give Weapon
	local _src = source
	if FNX:Bypass(_src) then
		if FenixACS.Log.AdminAbuse then
			FNX:LogSistem(_src, "Anti GiveWeapon (ClientSide):", Lang["giveweapon_warn_abuse"], false, false)
		end
	else
		FNX:LogSistem(_src, "Anti GiveWeapon (ClientSide):", Lang["giveweapon_warn"] .. "[Weapon]: " .. arg, false, false)
	end
end)



RegisterServerEvent("AfavnlYJJdZpmoPdsjXD")
AddEventHandler("AfavnlYJJdZpmoPdsjXD", function() -- menu injection
	local _src = source
	if FNX:Bypass(_src) then
		if FenixACS.Log.AdminAbuse then
			FNX:LogSistem(_src, "Anti Menu Injection (ClientSide):", Lang["menu_injection_abuse"], false, false)
		end
	else
		FNX:LogSistem(_src, "Anti GiveWeapon (ClientSide):", Lang["menu_injection_ban"], true, true)
	end
end)


RegisterServerEvent("elVatHHMhhKFIPFYpyEn")
AddEventHandler("elVatHHMhhKFIPFYpyEn", function() -- Freeze
	local _src = source
	if not FNX:Bypass(_src) then
		FNX:LogSistem(_src, "AntiFreeze Resource (ClientSide):", Lang["freeze_resource_ban"], true, true)
	end
end)


AddEventHandler("chatMessage", function(_src, author, message)
	if FenixACS.CheckWordBlacklist then
		local finalmessage = message:lower()
		finalmessage = finalmessage:gsub(" ", "")
		finalmessage = finalmessage:gsub("%-", "")
		finalmessage = finalmessage:gsub("%.", "")
		finalmessage = finalmessage:gsub("$", "s")
		finalmessage = finalmessage:gsub("€", "e")
		finalmessage = finalmessage:gsub(",", "")
		finalmessage = finalmessage:gsub(";", "")
		finalmessage = finalmessage:gsub(":", "")
		finalmessage = finalmessage:gsub("*", "")
		finalmessage = finalmessage:gsub("_", "")
		finalmessage = finalmessage:gsub("|", "")
		finalmessage = finalmessage:gsub("/", "")
		finalmessage = finalmessage:gsub("<", "")
		finalmessage = finalmessage:gsub(">", "")
		finalmessage = finalmessage:gsub("ß", "ss")
		finalmessage = finalmessage:gsub("&", "")
		finalmessage = finalmessage:gsub("+", "")
		finalmessage = finalmessage:gsub("¦", "")
		finalmessage = finalmessage:gsub("§", "s")
		finalmessage = finalmessage:gsub("°", "")
		finalmessage = finalmessage:gsub("#", "")
		finalmessage = finalmessage:gsub("@", "a")
		finalmessage = finalmessage:gsub("\"", "")
		finalmessage = finalmessage:gsub("%(", "")
		finalmessage = finalmessage:gsub("%)", "")
		finalmessage = finalmessage:gsub("=", "")
		finalmessage = finalmessage:gsub("?", "")
		finalmessage = finalmessage:gsub("!", "")
		finalmessage = finalmessage:gsub("´", "")
		finalmessage = finalmessage:gsub("`", "")
		finalmessage = finalmessage:gsub("'", "")
		finalmessage = finalmessage:gsub("%^", "")
		finalmessage = finalmessage:gsub("~", "")
		finalmessage = finalmessage:gsub("%[", "")
		finalmessage = finalmessage:gsub("]", "")
		finalmessage = finalmessage:gsub("{", "")
		finalmessage = finalmessage:gsub("}", "")
		finalmessage = finalmessage:gsub("£", "e")
		finalmessage = finalmessage:gsub("¨", "")
		finalmessage = finalmessage:gsub("ç", "c")
		finalmessage = finalmessage:gsub("¬", "")
		finalmessage = finalmessage:gsub("\\", "")
		finalmessage = finalmessage:gsub("1", "i")
		finalmessage = finalmessage:gsub("3", "e")
		finalmessage = finalmessage:gsub("4", "a")
		finalmessage = finalmessage:gsub("5", "s")
		finalmessage = finalmessage:gsub("0", "o")

		local lastchar = ""
		local output = ""
		for char in finalmessage:gmatch(".") do
			if (char ~= lastchar) then
				output = output .. char
			end
			lastchar = char
		end
		for i in pairs(FenixAC_Table.BlacklistWord) do
			if (output:find(FenixAC_Table.BlacklistWord[i])) then
				if not FNX:Bypass(_src) then
					FNX:LogSistem(_src, "Word Blacklist:", Lang["word_blacklist_kick"], true, false)
				else
					FNX:LogSistem(_src, "Word Blacklist:", Lang["word_blacklist_kick_abuse"], false, false)
				end
				break
			end
		end
	end
end)
