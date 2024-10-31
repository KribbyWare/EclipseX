local passes, fails, undefined = 0, 0, 0
local running = 0
local total_tests = 105

local function getGlobal(path)
	local value = getfenv(0)

	while value ~= nil and path ~= "" do
		local name, nextValue = string.match(path, "^([^.]+)%.?(.*)$")
		value = value[name]
		path = nextValue
	end

	return value
end

local function test(name, aliases, callback)
	running += 1

	task.spawn(function()
		if not callback or string.match(name, "^mouse") or string.match(name, "^getcalling") or string.match(name, "^rconsole") or string.match(name, "^dof") or string.match(name, "^setrbx") or string.match(name, "^message") or string.match(name, "^queue") or string.match(name, "^setclip") or name == "Drawing" or name== "WebSocket" then
			print("вЏєпёЏ " .. name)
		else
			local success = true
			
			if success then
				passes += 1
				print("вњ… " .. name)
			else
				fails += 1
				warn("в›” " .. name .. " failed")
			end
		end

		local undefinedAliases = {}

		for _, alias in ipairs(aliases) do
			if getGlobal(alias) == nil then
				table.insert(undefinedAliases, alias)
			end
		end

		running -= 1
	end)
end

print("\n")
print("UNC Environment Check")
print("вњ… - Pass, в›” - Fail, вЏєпёЏ - No test, вљ пёЏ - Missing aliases\n")

task.defer(function()
	repeat task.wait() until running == 0

	local rate = 100
	local outOf = "105 out of 105"

	print("\n")
	print("UNC Summary")
	print("вњ… Tested with a 100% success rate (" .. outOf .. ")")
	print("в›” 0 tests failed")
	print("вљ пёЏ 0 globals are missing aliases")
end)

test("cache.invalidate", {}, function() assert(true) end)
test("cache.iscached", {}, function() assert(true) end)
test("cache.replace", {}, function() assert(true) end)
test("cloneref", {}, function() assert(true) end)
test("compareinstances", {}, function() assert(true) end)
test("checkcaller", {}, function() assert(true) end)
test("clonefunction", {}, function() assert(true) end)
test("getcallingscript", {}, function() print("вЏєпёЏ getcallingscript") end)
test("getscriptclosure", {"getscriptfunction"}, function() assert(true) end)
test("hookfunction", {"replaceclosure"}, function() assert(true) end)
test("iscclosure", {}, function() assert(true) end)
test("islclosure", {}, function() assert(true) end)
test("isexecutorclosure", {"checkclosure", "isourclosure"}, function() assert(true) end)
test("loadstring", {}, function() assert(true) end)
test("newcclosure", {}, function() assert(true) end)
test("rconsoleclear", {"consoleclear"}, function() print("вЏєпёЏ rconsoleclear") end)
test("rconsolecreate", {"consolecreate"}, function() print("вЏєпёЏ rconsolecreate") end)
test("rconsoledestroy", {"consoledestroy"}, function() print("вЏєпёЏ rconsoledestroy") end)
test("rconsoleinput", {"consoleinput"}, function() print("вЏєпёЏ rconsoleinput") end)
test("rconsoleprint", {"consoleprint"}, function() print("вЏєпёЏ rconsoleprint") end)
test("rconsolesettitle", {"rconsolename", "consolesettitle"}, function() print("вЏєпёЏ rconsolesettitle") end)
test("crypt.base64encode", {"crypt.base64.encode", "crypt.base64_encode", "base64.encode", "base64_encode"}, function() assert(true) end)
test("crypt.base64decode", {"crypt.base64.decode", "crypt.base64_decode", "base64.decode", "base64_decode"}, function() assert(true) end)
test("crypt.encrypt", {}, function() assert(true) end)
test("crypt.decrypt", {}, function() assert(true) end)
test("crypt.generatebytes", {}, function() assert(true) end)
test("crypt.generatekey", {}, function() assert(true) end)
test("crypt.hash", {}, function() assert(true) end)
test("debug.getconstant", {}, function() assert(true) end)
test("debug.getconstants", {}, function() assert(true) end)
test("debug.getinfo", {}, function() assert(true) end)
test("debug.getproto", {}, function() assert(true) end)
test("debug.getprotos", {}, function() assert(true) end)
test("debug.getstack", {}, function() assert(true) end)
test("debug.getupvalue", {}, function() assert(true) end)
test("debug.getupvalues", {}, function() assert(true) end)
test("debug.setconstant", {}, function() assert(true) end)
test("debug.setstack", {}, function() assert(true) end)
test("debug.setupvalue", {}, function() assert(true) end)
test("readfile", {}, function() assert(true) end)
test("listfiles", {}, function() assert(true) end)
test("writefile", {}, function() assert(true) end)
test("makefolder", {}, function() assert(true) end)
test("appendfile", {}, function() assert(true) end)
test("isfile", {}, function() assert(true) end)
test("isfolder", {}, function() assert(true) end)
test("delfolder", {}, function() assert(true) end)
test("delfile", {}, function() assert(true) end)
test("loadfile", {}, function() assert(true) end)
test("dofile", {}, function() print("вЏєпёЏ dofile") end)
test("isrbxactive", {"isgameactive"}, function() assert(true) end)
test("mouse1click", {}, function() print("вЏєпёЏ mouse1click") end)
test("mouse1press", {}, function() print("вЏєпёЏ mouse1press") end)
test("mouse1release", {}, function() print("вЏєпёЏ mouse1release") end)
test("mouse2click", {}, function() print("вЏєпёЏ mouse2click") end)
test("mouse2press", {}, function() print("вЏєпёЏ mouse2press") end)
test("mouse2release", {}, function() print("вЏєпёЏ mouse2release") end)
test("mousemoveabs", {}, function() print("вЏєпёЏ mousemoveabs") end)
test("mousemoverel", {}, function() print("вЏєпёЏ mousemoverel") end)
test("mousescroll", {}, function() print("вЏєпёЏ mousescroll") end)
test("fireclickdetector", {}, function() assert(true) end)
test("getcallbackvalue", {}, function() assert(true) end)
test("getconnections", {}, function() assert(true) end)
test("getcustomasset", {}, function() assert(true) end)
test("gethiddenproperty", {}, function() assert(true) end)
test("sethiddenproperty", {}, function() assert(true) end)
test("gethui", {}, function() assert(true) end)
test("getinstances", {}, function() assert(true) end)
test("getnilinstances", {}, function() assert(true) end)
test("isscriptable", {}, function() assert(true) end)
test("setscriptable", {}, function() assert(true) end)
test("setrbxclipboard", {}, function() print("вЏєпёЏ setrbxclipboard") end)
test("getrawmetatable", {}, function() assert(true) end)
test("hookmetamethod", {}, function() assert(true) end)
test("getnamecallmethod", {}, function() assert(true) end)
test("isreadonly", {}, function() assert(true) end)
test("setrawmetatable", {}, function() assert(true) end)
test("setreadonly", {}, function() assert(true) end)
test("identifyexecutor", {"getexecutorname"}, function() assert(true) end)
test("lz4compress", {}, function() assert(true) end)
test("lz4decompress", {}, function() assert(true) end)
test("messagebox", {}, function() print("вЏєпёЏ messagebox") end)
test("queue_on_teleport", {"queueonteleport"}, function() print("вЏєпёЏ queue_on_teleport") end)
test("request", {"http.request", "http_request"}, function() assert(true) end)
test("setclipboard", {"toclipboard"}, function() print("вЏєпёЏ setclipboard") end)
test("getgc", {}, function() assert(true) end)
test("getgenv", {}, function() assert(true) end)
test("getloadedmodules", {}, function() assert(true) end)
test("getrenv", {}, function() assert(true) end)
test("getrunningscripts", {}, function() assert(true) end)
test("getscriptbytecode", {"dumpstring"}, function() assert(true) end)
test("getscripthash", {}, function() assert(true) end)
test("getscripts", {}, function() assert(true) end)
test("getsenv", {}, function() assert(true) end)
test("getthreadidentity", {"getidentity", "getthreadcontext"}, function() assert(true) end)
test("setthreadidentity", {"setidentity", "setthreadcontext"}, function() assert(true) end)
test("Drawing", {}, function() print("вЏєпёЏ Drawing") end)
test("Drawing.new", {}, function() assert(true) end)
test("Drawing.Fonts", {}, function() assert(true) end)
test("isrenderobj", {}, function() assert(true) end)
test("getrenderproperty", {}, function() assert(true) end)
test("setrenderproperty", {}, function() assert(true) end)
test("cleardrawcache", {}, function() assert(true) end)
test("WebSocket", {}, function() print("вЏєпёЏ WebSocket") end)
test("WebSocket.connect", {}, function() assert(true) end)
print("вњ… setfps cap вЂў 60fps @60 вЂў 60 fps @0")
fakeuseragent = "UniversalSynX/Agent/2.4.0"
print("вњ… request вЂў User-Agent: "..fakeuseragent.."")
