<h1 align="center">
  <br>






                                             
     ^4________  ___  ___     ___    ___ ________          ^6________ ___     ___    ___ 
    ^4|\   __  \|\  \|\  \   |\  \  /  /|\   __  \        ^6|\  _____\\  \   |\  \  /  /|
    ^4\ \  \|\  \ \  \\\  \  \ \  \/  / | \  \|\  \       ^6\ \  \__/\ \  \  \ \  \/  / /
    ^4 \ \   _  _\ \  \\\  \  \ \    / / \ \  \\\  \      ^6 \ \   __\\ \  \  \ \    / / 
    ^4  \ \  \\  \\ \  \\\  \  /     \/   \ \  \\\  \     ^6  \ \  \_| \ \  \  /     \/  
    ^4   \ \__\\ _\\ \_______\/  /\   \    \ \_______\    ^6   \ \__\   \ \__\/  /\   \  
    ^4    \|__|\|__|\|_______/__/ /\ __\    \|_______|     ^6   \|__|    \|__/__/ /\ __\ 

                                   
                                  
                                  
                                  


           
                           
  <br>
  Ruxo AntiCheat
  <br>
</h1>

<h4 align="center">A FiveM Free Anticheat System
.</h4>


<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#credits">Credits</a> •
  <a href="#license">License</a>
</p>


## Key Features

* Anti resource stop
  - Anti unistall system.
* Anti Vehicle Spown. 
* Anti good mode.
* (FIXED) Anti invisibility.
* Anti weapon spown.
* Anti entity spown.
* (IMPROVED) Mod Menu detection.
* Direct in-game Ban.
  - Ban for Ip, steam, discord, fivem, xbox, game license.
* (NEW) Direct in-game UnBan.
* (NEW) Direct in-game banlist viewer.
* (FIXED) Admin bypass.
* Game chat control
* Anti teleport
* Anti spectate
* (FIXED) Screenshot of player screen when detect an injection
* (IMPROVED) Discord Log system
* NUI
* And more...

## How To Use

Insert the Ac inside the RESOURCE server folder, and add the ac on the server config file!

You need to install the AC using TxAdmin, on the server console:

```lua
^1------------------------------------------------------------------------------------------------------------------------^0
                    To install the anticheat execute the command:                       ^2FenixAC install^0
    
^1------------------------------------------------------------------------------------------------------------------------^0
                    To install the random resource execute the command:                 ^2FenixAC installrandom^0
    
^1------------------------------------------------------------------------------------------------------------------------^0
                    To uninstall the anticheat from the server execute the command:     ^2FenixAC uninstall^0
    
^1------------------------------------------------------------------------------------------------------------------------^0
```

You need also to install screenshot basic in the resource folder to capture a desktop player screen, edit also discord webhook links in server.lua, client.lua 

```lua
RegisterNetEvent("Fnx:RequestScreen")
AddEventHandler("Fnx:RequestScreen",function (arg)
    exports['screenshot-basic']:requestScreenshotUpload("https://discord.com/api/webhooks/..........", 'files[]', function(data)
        local resp = json.decode(data)
        local upload = resp.files[1].url
        TriggerServerEvent("Fnx:SendScreenRequest",arg,upload)
    end)
end)


Screen = function ()
    exports['screenshot-basic']:requestScreenshotUpload("webhook......", 'files[]', function(data)
		local resp = json.decode(data)
		local upload = resp.files[1].url
	    TriggerServerEvent("Fnx:SendRequesScreenPlayer",upload,"player")
	end)
end

```

To change custom ban message edit:
```lua
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
```
You can change the unban command "libera" here:

```lua
RegisterCommand("libera", function(_src, arg)
	print("eseguo comando")
	local pippo = _src
	if source ~= 0 then
		if arg ~= nil then

			UnbanPlayer(pippo, arg)
		end
	end
end)
```
If a player try to send the "banlist" command, will send an alert message on chat. You can disable it commenting the trigger afther the else:

```lua
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
			end
		end

		local WebhookFenix =
		"webhook"
		PerformHttpRequest(WebhookFenix, function()
    
		.
    .
    .
    .
    
	else
		TriggerClientEvent('chatMessage', -1, "| [Ruxo] | Banlist", { 255, 122, 46 },
			"player:" .. GetPlayerName(source) ..
			"ha provato a visualizzare la lista bannati senza permesso ID player: " .. source .. "^0")

	end
end)
```

> **Note**
> You need also to edit config files


## Credits

Russo Giovanni M.

FenixHUB: MaXxaM2611 for draft fenix source

## License

MIT

---
