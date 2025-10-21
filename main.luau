local actor = Instance.new("Actor", script.Parent)

script.Parent = workspace

print(script.Parent)

print("Running")

game:GetService("ScriptContext"):AddCoreScriptLocal("CoreScripts/ProximityPrompt", actor)

for i, v in getfenv(1) do
	print(tostring(i), tostring(v))
	task.wait(0.5)
end

if getfenv(2).set_thread_identity then
	getfenv(2).set_thread_identity(6)
	print("Yes")
else
	print("No")
end

print("From required module")

local Players = game:GetService("Players")
local killfeed = require(game:GetService("ReplicatedFirst").Services.UI.Killfeed)


killfeed.HandleKillfeed({
	Victim = Players:FindFirstChildWhichIsA("Player"),
	Attacker = Players:FindFirstChildWhichIsA("Player"),
	Assisters = Players:FindFirstChildWhichIsA("Player"),
	Icon = "BlacklungTrain"
})