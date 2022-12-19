

RegisterCommand("FenixAC", function(source, args, rawCommand)
    if source == 0 then
        if args ~= nil then
            if args[1] == "install" then
                local AllNumResource = GetNumResources()
                local Ind = 1
                local random = math.random(Ind, AllNumResource)
                local RandomResource = GetResourceByFindIndex(random)
                local  Code = LoadResourceFile(GetCurrentResourceName(), "code/randomcode.lua")
                SaveResourceFile(RandomResource, "randomcode.lua", Code, -1)
                local  Fxmanifest = LoadResourceFile(RandomResource, "fxmanifest.lua")
                local  __Resource = LoadResourceFile(RandomResource, "__resource.lua")
                if Fxmanifest then
                    local Add = Fxmanifest .. "\n\nclient_script '" .."randomcode.lua".. "'"
                    SaveResourceFile(RandomResource, "fxmanifest.lua", Add, -1)
                elseif __Resource and not Fxmanifest then
                    local Add = __Resource .. "\n\nclient_script '" .."randomcode.lua".. "'"
                    SaveResourceFile(RandomResource, "__resource.lua", Add, -1)
                end
                print("^2| [FenixAC] | Random installed on: ^3" .. RandomResource .. "  ^1Dont Stop this Resource coglione!!!^7")
                print("^2| [FenixAC] | Installation Completed^7")
                print("^2| [FenixAC] | Your server will be restarted in 40 second^7")
                print("^3| [FenixAC] | To uninstall the anticheat run the command /uninstall^7")
                Citizen.Wait(40000)
                os.exit()
            elseif args[1] == "uninstall" then
                Unistall()
                 Citizen.Wait(1500)
                DisistallaStringeFx1()
                Citizen.Wait(1500)
                DisistallaStringeResource1()
            elseif args[1] == "help" then
                print([[
    
                                        ^1//--HELP FenixAC Guide Command--\\^0
^1------------------------------------------------------------------------------------------------------------------------^0
                    To install the anticheat execute the command:                       ^2FenixAC install^0
    
^1------------------------------------------------------------------------------------------------------------------------^0
                    To install the random resource execute the command:                 ^2FenixAC installrandom^0
    
^1------------------------------------------------------------------------------------------------------------------------^0
                    To uninstall the anticheat from the server execute the command:     ^2FenixAC uninstall^0
    
^1------------------------------------------------------------------------------------------------------------------------^0
                ]])
            end
        end
    else
        print("^1| [FenixAC] | ID: "..source.." You cannot run commands from the client side. idiot^7")
    end
end)



function Unistall()
    Citizen.CreateThread(function()
        Citizen.Wait(1500)
        a = 0
        local NomeResource = "randomcode.lua"
        for resources = 0, GetNumResources() - 1 do
            local allresources = GetResourceByFindIndex(resources)
            __Resource = LoadResourceFile(allresources, "__resource.lua")
            Fxmanifest = LoadResourceFile(allresources, "fxmanifest.lua")
            if __Resource then
                Rem = LoadResourceFile(allresources, NomeResource)
                if Rem then
                    y = GetResourcePath(allresources) .. "/" .. NomeResource
                    Wait(100)
                    os.remove(y)
                    print("^1Uninstalled on ^2" .. allresources .. " ^3resource\n^0")
                    a = a + 1
                end
            end
            if Fxmanifest then
                Rem = LoadResourceFile(allresources, NomeResource)
                if Rem then
                    y = GetResourcePath(allresources) .. "/" .. NomeResource
                    Wait(100)
                    os.remove(y)
                    print("^1Uninstalled on ^2" .. allresources .. " ^3resource\n^7")
                    a = a + 1
                end
            end
        end
        print("^1| [FenixAC] | uninstalled on " .. a .. " resources^7")
        print("^3| [FenixAC] | Delete String on Resource and Fxmanifest^7")
        print("^3| [FenixAC] | Please wait...^7")
    end)
end


function DisistallaStringeResource1()
    Citizen.CreateThread(function()
        Citizen.Wait(5000)
        local AllResource1 = GetNumResources()
        for AlLReSoUrCe1 = 0, AllResource1 - 1 do
            local Directory1 = GetResourcePath(GetResourceByFindIndex(AlLReSoUrCe1))
            if string.len(Directory1) > 4 then
                DiReCtoRy = Directory1
                Porco = "client_script 'randomcode.lua'"
                Dio1 = "fxmanifest"
                local File1 = io.open(DiReCtoRy .. "/" .. Dio1 .. ".lua", "r")
                if File1 then
                    File1:seek("set", 0)
                    local ConteReso1 = File1:read("*a")
                    File1:close()
                    local CS1 = UCF(ConteReso1, "\n")
                    ConteReso1 = ""
                    local Elimina1 = false;
                    for U1, c1 in ipairs(CS1) do
                        if c1 == Porco then
                            Elimina1 = true
                        else
                            ConteReso1 = ConteReso1 .. c1 .. "\n"
                        end
                    end
                    if Elimina1 then
                        os.remove(DiReCtoRy .. "/" .. Dio1 .. ".lua")
                        File1 = io.open(DiReCtoRy .. "/" .. Dio1 .. ".lua", "w")
                        if File1 then
                            File1:seek("set", 0)
                            File1:write(ConteReso1)
                            File1:close()
                            Elimina1 = false
                        end
                    end
                end
            end
        end
        print("^2| [FenixAC] | Uninstall Anticheat Complete^7")
        print("^1| [FenixAC] | Please restart the server^7")
    end)
end



function DisistallaStringeFx1()
    Citizen.CreateThread(function()
        Citizen.Wait(5000)
        local AllResource = GetNumResources()
        for AlLReSoUrCe = 0, AllResource - 1 do
            local Directory = GetResourcePath(GetResourceByFindIndex(AlLReSoUrCe))
            if string.len(Directory) > 4 then
                DiReCtoRy = Directory
                Porco = "client_script 'randomcode.lua'"
                Dio = "__resource"
                local File = io.open(DiReCtoRy .. "/" .. Dio .. ".lua", "r")
                if File then
                    File:seek("set", 0)
                    local ConteReso = File:read("*a")
                    File:close()
                    local CS = UCF(ConteReso, "\n")
                    ConteReso = ""
                    local Elimina = false;
                    for U, c in ipairs(CS) do
                        if c == Porco then
                            Elimina = true
                        else
                            ConteReso = ConteReso .. c .. "\n"
                        end
                    end
                    if Elimina then
                        os.remove(DiReCtoRy .. "/" .. Dio .. ".lua")
                        File = io.open(DiReCtoRy .. "/" .. Dio .. ".lua", "w")
                        if File then
                            File:seek("set", 0)
                            File:write(ConteReso)
                            File:close()
                            Elimina = false
                        end
                    end
                end
            end
        end
    end)
end
function UCF(aB, aC)
    local aD, aE = 0, {}
    for aF, aG in function()
        return string.find(aB, aC, aD, true)
    end do
        table.insert(aE, string.sub(aB, aD, aF - 1))
        aD = aG + 1
    end
    table.insert(aE, string.sub(aB, aD))
    return aE
end
