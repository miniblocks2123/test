local Players = game:GetService("Players")
local killfeed = require(game:GetService("ReplicatedFirst").Services.UI.Killfeed)

killfeed.HandleKillfeed({
	Victim = Players:FindFirstChildWhichIsA("Player"),
	Attacker = Players:FindFirstChildWhichIsA("Player"),
	Assisters = Players:FindFirstChildWhichIsA("Player"),
	Icon = "BlacklungTrain"
})