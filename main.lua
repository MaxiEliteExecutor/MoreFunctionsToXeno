function infiniteyield()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end

function GetSpooferName()
    return "ARC Spoofer XENO  " 
end

function GetSpooferVersion()
    return "V1.0"
end

function uncTest()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua", true))()
end

local old_identify
old_identify = hookfunction(identifyexecutor, function()
    print("identifyexecutor() called!")
    return "ARC", "1.0.0"
end)

local old_getname
old_getname = hookfunction(getexecutorname, function()
    return "ARC"
end)
