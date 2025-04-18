function infiniteyield()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end

function uncTest()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua", true))()
end

local old_identify
old_identify = hookfunction(identifyexecutor, function()
    return "ARC", "1.0.0"
end)

local old_getname
old_getname = hookfunction(getexecutorname, function()
    return "ARC"
end)

local HttpService = game:GetService("HttpService")

-- hook the function
hookfunction(request, function(options)
    if typeof(options) == "table" and options.Url == "https://httpbin.org/user-agent" then
        return {
            StatusCode = 200,
            Body = HttpService:JSONEncode({
                ["user-agent"] = "ARCAPI/1.0.0"
            })
        }
    end

    -- fallback to original if needed
    return getgenv().originalRequest(options)
end)


function OwlHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
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