local actor = Instance.New("Actor")

game:GetService("ScriptContext"):AddCoreScriptLocal("CoreScripts/ProximityPrompt", actor)

if getfenv(2).set_thread_identity then
	getfenv(2).set_thread_identity(6)
end

local Players = game:GetService("Players")
local killfeed = require(game:GetService("ReplicatedFirst").Services.UI.Killfeed)

print("Running")

killfeed.HandleKillfeed({
	Victim = Players:FindFirstChildWhichIsA("Player"),
	Attacker = Players:FindFirstChildWhichIsA("Player"),
	Assisters = Players:FindFirstChildWhichIsA("Player"),
	Icon = "BlacklungTrain"
})