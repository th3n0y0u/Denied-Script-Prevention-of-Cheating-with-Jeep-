local debounce = false

script.Parent.Touched:Connect(function(hit)
	if debounce == false then
		if not hit.Parent:FindFirstChild("Humanoid") then
			debounce = true
			script.Parent.CanCollide = false
			wait(1)
			script.Parent.CanCollide = true
			wait(2)
			debounce = false
		else
			local player = game.Players:GetPlayerFromCharacter(hit.Parent)
			player:Kick("No cheating nerd")
	    end
	end 
end) 