function infiniteyield()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end

function uncTest()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua", true))()
end

local old_identify
old_identify = hookfunction(identifyexecutor, function()
    return executorInfo.NAME, executorInfo.VERSION
end)

local old_getname
old_getname = hookfunction(getexecutorname, function()
    return executorInfo.NAME
end)

local old_useragent
old_useragent = hookfunction(request, function(options)
    if not options or not options.Url then return {StatusCode = 400, Body = ""} end
    return {StatusCode = 200, Body = '{"success":true, "user-agent":"'..executorInfo.USERAGENT..'"}', Headers = {}}
end)

function OwlHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
end
--[[function Vulnerability()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aihkw/exe-test/refs/heads/main/executor_vuln_test.lua"))();
end]]
--[[local function ARCGUILib()
    local ARCGUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxiEliteExecutor/ARChub/refs/heads/main/ARChubUI.lua", true))()
    
    local window = ARCGUI:CreateWindow({
        Title = "My UI",
        Size = UDim2.new(0, 650, 0, 500),
        Keybind = Enum.KeyCode.RightShift,
        Transparency = 0.1
    })
end]]
