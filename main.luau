local actor = Instance.new("Actor")

game:GetService("ScriptContext"):AddCoreScriptLocal("CoreScripts/ProximityPrompt", actor)

if getfenv(2).set_thread_identity then
	getfenv(2).set_thread_identity(6)
end

print("From required module")

print(tostring(getfenv(2)))

local Players = game:GetService("Players")
local killfeed = require(game:GetService("ReplicatedFirst").Services.UI.Killfeed)

print("Running")

killfeed.HandleKillfeed({
	Victim = Players:FindFirstChildWhichIsA("Player"),
	Attacker = Players:FindFirstChildWhichIsA("Player"),
	Assisters = Players:FindFirstChildWhichIsA("Player"),
	Icon = "BlacklungTrain"
})