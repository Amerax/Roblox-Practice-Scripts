local tpOneParts = game.Workspace:WaitForChild("tpOne"):GetChildren()
local tpTwoParts = game.Workspace.tpOne:WaitForChild("tpTwo"):GetChildren()

for i, part in pairs(tpOneParts) do
	part.Touched:Connect(function(otherPart)
		local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
		local HRP = otherPart.Parent:FindFirstChild("HumanoidRootPart")
		local index = i
		if humanoid  then
			for i, v in pairs(tpTwoParts) do
				if i == index then
					v.Color = Color3.new(0.34902, 0.290196, 1)
					HRP.Position = v.Position 
					wait(.2)
					v.Color = Color3.new(0.560784, 0.92549, 1)
				end
			end
		end
	end)
end

