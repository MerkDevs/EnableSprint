local plr = game:GetService("Players").LocalPlayer
local frame = script.Parent.Frame
local btn = frame.ImageButton
local Humanoid = plr.Character:WaitForChild("Humanoid")
local OriginalWalkspeed = Humanoid.WalkSpeed
local UIS = game:GetService("UserInputService")
-- variable that i'll use to determine if the user wants to activate or de-activate the run / walk
local active = false

--if user clicks on the button execute the bellow function
btn.MouseButton1Down:Connect(function()
	-- change active to what ever it isn't currently
	if active == false then
		active = true
		-- Change the colour of the shift button
		btn.BackgroundColor3 = Color3.fromRGB(79, 255, 0)
		-- Changes walkspeed
		Humanoid.WalkSpeed = OriginalWalkspeed * 1.5
		-- Changes state
		Humanoid:ChangeState("Running", true)
		-- else if active is false
	elseif active == true then
		active = false
		-- Change the colour of the shift button
		btn.BackgroundColor3 = Color3.fromRGB(255,255,255)
		-- Changes walkspeed
		Humanoid.WalkSpeed = OriginalWalkspeed / 1.5
		-- Changes state
		Humanoid:ChangeState("Running", false)
	end
	-- wait for less lag
	task.wait()
end)

UIS.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift and Humanoid ~= nil then
		-- change active to what ever it isn't currently
		if active == false then
			active = true
			-- Change the colour of the shift button
			btn.BackgroundColor3 = Color3.fromRGB(79, 255, 0)
			-- Changes walkspeed
			Humanoid.WalkSpeed = OriginalWalkspeed * 1.5
			-- Changes state
			Humanoid:ChangeState("Running", true)
			-- else if active is false
		elseif active == true then
			active = false
			-- Change the colour of the shift button
			btn.BackgroundColor3 = Color3.fromRGB(255,255,255)
			-- Changes walkspeed
			Humanoid.WalkSpeed = OriginalWalkspeed / 1.5
			-- Changes state
			Humanoid:ChangeState("Running", false)
		end
		-- wait for less lag
		task.wait()
	end
end)
