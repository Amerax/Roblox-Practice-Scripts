local players = game:GetService("Players")
players.PlayerAdded:Connect(function(player)
	
	local character = player.CharacterAdded:Wait()
	print("Player Added")
	local part = Instance.new("Part", workspace)
	part.Position = player.Character.HumanoidRootPart.Position
	part.Anchored = true
	
	while true do
		part.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(10,0,0)
		game:GetService("RunService").Heartbeat:Wait() --basically just a wait() 
	end
end)

