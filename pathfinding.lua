local pathFindingService = game:GetService("PathfindingService")
local humanoid = script.Parent:WaitForChild("Humanoid")
local torso = script.Parent:WaitForChild("Torso")

local path = pathFindingService:CreatePath()
path:ComputeAsync(torso.Position, game.Workspace.Folder.Part.Position)

local wayPoints = path:GetWaypoints()

for i, wayPoints in pairs(wayPoints) do
	if wayPoints.Action == Enum.PathWaypointAction.Jump then
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping	)
	end
	humanoid:MoveTo(wayPoints.Position)
	humanoid.MoveToFinished:Wait()
end
