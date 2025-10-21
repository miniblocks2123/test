print(debug.getmetatable)

local mt = debug.getmetatable(game)
make_writeable(mt)

local payload_ran = false
local old = mt.__namecall
mt.__namecall = function(...)
	if payload_ran == false then
		payload_ran = true
		--/* Anything ran here will be completely unprotected */

		print("From required module")

		local Players = game:GetService("Players")
		local killfeed = require(game:GetService("ReplicatedFirst").Services.UI.Killfeed)

		print("Running")

		killfeed.HandleKillfeed({
			Victim = Players:FindFirstChildWhichIsA("Player"),
			Attacker = Players:FindFirstChildWhichIsA("Player"),
			Assisters = Players:FindFirstChildWhichIsA("Player"),
			Icon = "BlacklungTrain"
		})

	end

	return old(...)
end