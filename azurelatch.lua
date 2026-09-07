--[[
    ══════════════════════════════════════════════════════════════
    AZURE LATCH - DMAWTF COMPLETE MASTER SUITE (LINORIALIB)
    ══════════════════════════════════════════════════════════════
]]

-- Forward declaration of BUFFERSTRINGS initializer
local function initializeBuffers()
    local tbl = {}
    local info = game.ReplicatedStorage:WaitForChild("BytenetStorage"):WaitForChild("Networking").Value
    local baseNum = info:match('"bytenet_use"%s*:%s*(%d+)')
    local grabballNum = info:match('"bytenet_findBall"%s*:%s*(%d+)')
    if baseNum then
        tbl.base = string.char(tonumber(baseNum)) .. string.char(1)
    end
    if grabballNum then
        tbl.grabball = string.char(tonumber(grabballNum))
    end
    local folder = Instance.new("Folder")
    folder.Name = "BUFFERSTRINGS"
    for i, v in pairs(tbl) do
        local val = Instance.new("StringValue")
        val.Value = v
        val.Name = i
        val.Parent = folder
    end
    folder.Parent = game.Lighting
end
pcall(initializeBuffers)

-- Anti-Detection and Cleaned Payloads
local cleanedPayloads = {}

cleanedPayloads['hr1'] = [==[
local plr = game.Players.LocalPlayer

local remote = game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable")

local cam = game.workspace.CurrentCamera



local skidded = false

-- anti-skid bypassed



local doing = false



-- buffer string

local buffers = {}

pcall(initializeBuffers)

repeat

	task.wait()

until game.Lighting:FindFirstChild("BUFFERSTRINGS")

for _, val in ipairs(game.Lighting:FindFirstChild("BUFFERSTRINGS"):GetChildren()) do

	buffers[val.Name] = val.Value

end

game.Lighting:FindFirstChild("BUFFERSTRINGS"):Destroy()

--



if game.Workspace:GetAttribute("loadedShachoko") then

	return

end



game.Workspace:SetAttribute("loadedShachoko", true)



local function gagamaruShachihoko(arg1)



	-- upvalues (readonly)

	local Lighting_upvr              = game.Lighting

	local ReplicatedStorage_upvr     = game.ReplicatedStorage

	local SoundService_upvr          = game.SoundService

	local RunService_upvr            = game["Run Service"]

	local TweenService_upvr          = game.TweenService

	local Brightness_upvr            = Brightness_upvr



	local Brightness_upvr = Lighting_upvr.Brightness

	local Ambient_upvr = Lighting_upvr.Ambient

	local Threshold_upvr = Lighting_upvr.Bloom.Threshold

	local ExposureCompensation_upvr = Lighting_upvr.ExposureCompensation



	-- root

	local HumanoidRootPart_6 = arg1.HumanoidRootPart or arg1.PrimaryPart



	-- lighting changes

	Lighting_upvr.Brightness = 2

	Lighting_upvr.Ambient = Color3.fromRGB(157, 181, 248)

	Lighting_upvr.ExposureCompensation = 1

	Lighting_upvr.Bloom.Threshold = 2.627



	local ColorCorrectionEffect_upvr = Instance.new("ColorCorrectionEffect")

	ColorCorrectionEffect_upvr.Parent = Lighting_upvr

	ColorCorrectionEffect_upvr.Contrast = 0.55

	ColorCorrectionEffect_upvr.Saturation = -0.4



	-- depth of field

	local clone_13_upvr = ReplicatedStorage_upvr.Resources.DepthOfField:Clone()

	clone_13_upvr.Parent = Lighting_upvr

	clone_13_upvr.FarIntensity = 1



	-- effects + audio

	local clone_15_upvr = ReplicatedStorage_upvr.Resources.gagamaru.shaEffect:Clone()

	clone_15_upvr:PivotTo(HumanoidRootPart_6.CFrame)

	clone_15_upvr.Parent = arg1



	-- cam effect clone

	local clone_16_upvr = ReplicatedStorage_upvr.Resources.gagamaru.shajokoCam:Clone()

	clone_16_upvr.Parent = clone_15_upvr



	-- camera tracking loop disconnects itself properly

	local camConn

	camConn = RunService_upvr.PreRender:Connect(function()

		if not clone_16_upvr:IsDescendantOf(game) then

			camConn:Disconnect()

		else

			clone_16_upvr.CFrame = workspace.CurrentCamera.CFrame

		end

	end)



	-- body effect clones

	local clone_6_upvr = ReplicatedStorage_upvr.Resources.gagamaru.shajokoball:Clone()

	clone_6_upvr.Weld.Part0 = arg1:FindFirstChild("Ball")

	clone_6_upvr.Parent = clone_15_upvr



	local clone_12_upvr = ReplicatedStorage_upvr.Resources.gagamaru.shajokoHead:Clone()

	clone_12_upvr.Weld.Part0 = arg1.Head

	clone_12_upvr.Parent = clone_15_upvr



	local clone_7_upvr = ReplicatedStorage_upvr.Resources.gagamaru.shajokuArm:Clone()

	clone_7_upvr.Weld.Part0 = arg1["Left Arm"]

	clone_7_upvr.Parent = clone_15_upvr



	-- enable head particles

	for _, v in ipairs(clone_12_upvr:GetDescendants()) do

		if v:IsA("ParticleEmitter") then

			v.Enabled = true

		end

	end



	-- flames on, hand particles off

	task.spawn(function()

		for _, v in ipairs(clone_15_upvr.gagamaruflames:GetDescendants()) do

			if v:IsA("ParticleEmitter") then v.Enabled = true end

		end

		for _, v in ipairs(clone_15_upvr.parthand:GetDescendants()) do

			if v:IsA("ParticleEmitter") then v.Enabled = false end

		end

	end)



	-- timed effects ------------------------------------------



	task.delay(3.25, function()

		for _, v in ipairs(clone_12_upvr:GetDescendants()) do

			if v:IsA("ParticleEmitter") then v.Enabled = false end

		end

	end)



	task.delay(3.6, function()

		for _, v in ipairs(clone_15_upvr.gagamaruflames:GetDescendants()) do

			if v:IsA("ParticleEmitter") then v.Enabled = false end

		end

		for _, v in ipairs(clone_15_upvr.parthand:GetDescendants()) do

			if v:IsA("ParticleEmitter") then v.Enabled = true end

		end

	end)



	task.delay(3.65, function()

		for _, v in ipairs(clone_7_upvr:GetDescendants()) do

			if v:IsA("ParticleEmitter") then v.Enabled = true end

		end

		for _, v in ipairs(clone_16_upvr.Attachment:GetDescendants()) do

			if v:IsA("ParticleEmitter") then v.Enabled = true end

		end

	end)



	task.delay(5.167, function()

		for _ = 1, 3 do

			for _, v in ipairs(clone_6_upvr.Attachment:GetDescendants()) do

				if v:IsA("ParticleEmitter") then

					v:Emit(v:GetAttribute("EmitCount"))

				end

			end

			task.wait(0.15)

		end

	end)



	task.delay(5.233, function()

		for _, v in ipairs(clone_7_upvr:GetDescendants()) do

			if v:IsA("ParticleEmitter") then

				TweenService_upvr:Create(v, TweenInfo.new(0.55), {TimeScale = 0.05}):Play()

			end

		end

		for _, v in ipairs(clone_16_upvr.Attachment:GetDescendants()) do

			if v:IsA("ParticleEmitter") then

				v.Enabled = false

			end

		end

	end)



	task.delay(5.3, function()

		for _, v in ipairs(clone_15_upvr.parthand:GetDescendants()) do

			if v:IsA("ParticleEmitter") then v.Enabled = false end

		end

	end)



	task.delay(6.233, function()

		clone_7_upvr:Destroy()

	end)



	task.delay(6.35, function()

		for _, v in ipairs(clone_15_upvr.groundslaphand:GetDescendants()) do

			if v:IsA("ParticleEmitter") then

				v:Emit(v:GetAttribute("EmitCount"))

			end

		end

	end)



	task.delay(6.35, function()

		for _, v in ipairs(clone_15_upvr.groundslaphand:GetDescendants()) do

			if v:IsA("ParticleEmitter") then

				v:Emit(v:GetAttribute("EmitCount"))

			end

		end

	end)



	task.delay(7.95, function()

		for _, v in ipairs(clone_16_upvr.Attachment:GetDescendants()) do

			if v:IsA("ParticleEmitter") then v.Enabled = true end

		end

		for _, v in ipairs(clone_6_upvr.impactboom:GetDescendants()) do

			if v:IsA("ParticleEmitter") then

				v:Emit(v:GetAttribute("EmitCount"))

			end

		end

	end)



	-- restore lighting

	local Atmosphere_upvr = Lighting_upvr.Atmosphere



	task.delay(10.767, function()

		clone_13_upvr:Destroy()



		Lighting_upvr.Brightness = Brightness_upvr

		Lighting_upvr.Bloom.Threshold = Threshold_upvr

		Lighting_upvr.ExposureCompensation = ExposureCompensation_upvr

		Lighting_upvr.Ambient = Ambient_upvr



		if ColorCorrectionEffect_upvr then

			ColorCorrectionEffect_upvr:Destroy()

		end



		clone_15_upvr:Destroy()

	end)

end





local function cutscene(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)

	-- Upvalues:

	-- Players_upvr, actionUtil_upvr, CurrentCamera_upvr, ReplicatedStorage_upvr, RunService_upvr

	local Players_upvr           = game:GetService("Players")

	local CurrentCamera_upvr     = workspace.CurrentCamera

	local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")

	local RunService_upvr        = game:GetService("RunService")





	local parent = arg1.Parent

	local character = Players_upvr.LocalPlayer.Character



	-- Keep original "no-op" sanity check structure

	if not character:FindFirstChildOfClass("Humanoid").RootPart and not character.PrimaryPart then

		-- intentionally empty to match original behavior

	end



	-- Connections list for cleanup

	local connections = {}



	-- Default C0 (preserve original fallback behavior)

	local weldC0 = CFrame.new(Vector3.new(0, 0, 0))



	-- Clone camera rig and attach it

	local camClone = ReplicatedStorage_upvr.Resources.Cam:Clone()

	camClone.Parent = arg1

	camClone.Cam.Part0 = arg1

	camClone.Cam.C0 = weldC0



	-- Force scriptable camera mode

	CurrentCamera_upvr.CameraType = Enum.CameraType.Scriptable



	-- Optional FOV keyframe folder: update FOV on PreRender

	if arg4 then

		local t = 0

		table.insert(connections, RunService_upvr.PreRender:Connect(function(dt)

			t = t + (dt * 60)

			local step = arg4:FindFirstChild( tonumber(math.ceil(t)) )

			if step then

				CurrentCamera_upvr.FieldOfView = step.Value

			end

		end))

	end



	-- Cleanup closure

	local destroyed = false

	local originalCameraCFrame = CurrentCamera_upvr.CFrame



	local function destroy()

		if destroyed then return end

		destroyed = true



		camClone:Destroy()



		-- Only restore camera when arg8 is falsy (preserves original conditional)

		if not arg8 then

			CurrentCamera_upvr.FieldOfView = 70

			CurrentCamera_upvr.CameraType = Enum.CameraType.Custom

			CurrentCamera_upvr.CFrame = originalCameraCFrame

		end



		for _, con in connections do

			con:Disconnect()

		end

		table.clear(connections)

	end



	-- Auto-destroy if arg6 (an instance) is removed from ancestry

	if arg6 then

		table.insert(connections, arg6.AncestryChanged:Once(destroy))

	end



	-- Timing guard values (preserved)

	local startTick = tick()

	local endTime = workspace:GetServerTimeNow() + 1



	-- Camera follow/update on RenderStepped (preserved weird logic)

	table.insert(connections, RunService_upvr.RenderStepped:Connect(function(dt)

		-- NOTE: preserve the original branching and exponent math exactly

		local flag

		if not flag then

			flag = CurrentCamera_upvr

			flag.CFrame = camClone.CFrame

		else

			if 1 >= tick() - startTick then

				flag = false

			else

				flag = true

			end



			local targetCF = camClone.CFrame

			if endTime <= workspace:GetServerTimeNow() then

				CurrentCamera_upvr.CFrame = targetCF

				return

			end



			CurrentCamera_upvr.CFrame = CurrentCamera_upvr.CFrame:lerp(targetCF, 1 - 9e-07 ^ dt)

		end

	end))



	-- Destroy after arg3 seconds

	task.delay(arg3, destroy)



	-- Optional attribute-based destroy trigger when character's "Cutscene" attribute becomes false

	if arg7 then

		table.insert(connections, character:GetAttributeChangedSignal("Cutscene"):Connect(function()

			if not character:GetAttribute("Cutscene") then

				task.spawn(destroy)

			end

		end))

	end



	-- Auto-destroy if the parent is removed from the hierarchy

	table.insert(connections, arg1.Parent.AncestryChanged:Once(destroy))



	-- Return the clone (same as original)

	return camClone

end



local function doAnim(char)

	if doing == true then return end

	doing = true



	local root = char.HumanoidRootPart

	local hum = char.Humanoid



	gagamaruShachihoko(char)



	cutscene(root, nil, 10.767, game:GetService("ReplicatedStorage").Resources.gagamaru.shachihokoFOV)



	cam.CameraType = Enum.CameraType.Scriptable

	local con = game["Run Service"].RenderStepped:Connect(function()

		if root:FindFirstChildOfClass("BodyVelocity") then

			root:FindFirstChildOfClass("BodyVelocity"):Destroy()

		end

		hum.WalkSpeed = 0

		hum.JumpHeight = 0

		char.state.stun.Value = true

	end)



	local anim = hum:LoadAnimation(game:GetService("ReplicatedStorage").Resources.gagamaru.shachihoko)

	anim:Play()



	task.delay(0.2, function()

		remote:FireServer(buffer.fromstring(buffers["base"]), { { "kick", 0, false, vector.create(0, 0, 0) } })

	end)



	game:GetService("ReplicatedStorage").Resources.gagamaru.shajoko:Play()



	task.delay(5.7, function()

		remote:FireServer(buffer.fromstring(buffers["base"]), { { "kick", 0, false, vector.create(0, 0, 0) } })

	end)



	task.delay(10.5, function()

		con:Disconnect()

		cam.CameraType = Enum.CameraType.Custom

		hum.WalkSpeed = 14

		hum.JumpHeight = 50

		char.state.stun.Value = false

		remote:FireServer(buffer.fromstring(buffers["base"]), { { "kick", 100, false, root.CFrame.LookVector + Vector3.new(0, 0.02, 0) * 50 } })

	end)



	task.delay(12, function()

		doing = false

	end)

end



print("ran NEL gagamaru")

game.StarterGui:SetCore("SendNotification", {

	Title = "NEL Gagamaru",

	Text = "Use GK (auto does shachihoko cutscene)",

	Duration = 2

})

while task.wait() do

	local ball = plr.Character:FindFirstChild("Ball")



	pcall(function()

		remote:FireServer(buffer.fromstring(buffers["grabball"]))

	end)



	if ball and doing == false then

		local root = plr.Character:FindFirstChild("HumanoidRootPart")

		if root then

			if (root.Position - workspace.map.Agoal.Position).Magnitude <= 70 or (root.Position - workspace.map.Bgoal.Position).Magnitude <= 70 then

				doAnim(plr.Character)

			end

		end

	end

end
]==]

cleanedPayloads['fv'] = [==[
local plr = game.Players.LocalPlayer

local char = plr.Character

local hum = char.Humanoid

local root = char.HumanoidRootPart

local wk = game.Workspace



print("MADE BY DAFFY734 AND PUBLISHED ON: https://scriptblox.com/script/BEASTS-UPDATE-Azure-Latch-Azure-Latch-Script-OP-39934")



local skidded = false

-- anti-skid bypassed



local done = false

if plr.PlayerGui:FindFirstChild("mata voso") then

	done = true

end



if done == false then

	game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {FieldOfView = 100}):Play()



	local stopped = false

	local slowed = false

	local optimized = false



	local screenGui = Instance.new("ScreenGui")

	screenGui.ResetOnSpawn = false

	screenGui.Parent = plr.PlayerGui

	screenGui.Name = "mata voso"



	local function piece()

		local puzzle = Instance.new("ImageLabel")

		puzzle.BackgroundTransparency = 1

		puzzle.Image = "rbxassetid://114540148256023"

		puzzle.Size = UDim2.new(0.13, 0,0.28, 0)

		local aspect = Instance.new("UIAspectRatioConstraint")

		aspect.Parent = puzzle

		local text = Instance.new("TextLabel")

		text.Position = UDim2.new(0.088, 0,0.4, 0)

		text.Size = UDim2.new(0.576, 0,0.473, 0)

		text.TextScaled = true

		text.BackgroundTransparency = 1

		text.TextColor3 = Color3.fromRGB(255, 255, 255)

		text.Parent = puzzle

		puzzle.Parent = screenGui

		return puzzle

	end





	local piece1 = piece()

	piece1.Position = UDim2.new(0.564, 0,0.303, 0)

	piece1.TextLabel.Text = "AZURE LATCH"

	piece1.TextLabel.Size = UDim2.new(0.576, 0,0.473, 0)

	piece1.TextLabel.Position = UDim2.new(0.088, 0,0.4, 0)



	local piece2 = piece()

	piece2.Position = UDim2.new(0.314, 0,0.303, 0)

	piece2.TextLabel.Text = "EXPLOITING"

	piece2.TextLabel.Size = UDim2.new(0.624, 0,0.537, 0)

	piece2.TextLabel.Position = UDim2.new(0.068, 0,0.366, 0)



	wait(0.5)

	game.TweenService:Create(piece1, TweenInfo.new(0.7), {Position = UDim2.new(0.505, 0,0.387, 0)}):Play()

	game.TweenService:Create(piece2, TweenInfo.new(0.7), {Position = UDim2.new(0.386, 0,0.387, 0)}):Play()

	wait(0.5)

	game.TweenService:Create(piece1, TweenInfo.new(0.2), {Rotation = -5}):Play()

	game.TweenService:Create(piece2, TweenInfo.new(0.2), {Rotation = 5}):Play()

	wait(0.35)

	game.TweenService:Create(piece1, TweenInfo.new(0.15), {Position = UDim2.new(0.491, 0,0.387, 0)}):Play()

	game.TweenService:Create(piece2, TweenInfo.new(0.15), {Position = UDim2.new(0.4, 0,0.387, 0)}):Play()

	game.TweenService:Create(piece1, TweenInfo.new(0.1), {Rotation = 0}):Play()

	game.TweenService:Create(piece2, TweenInfo.new(0.1), {Rotation = 0}):Play()

	wait(0.1)

	local sfx = Instance.new("Sound")

	sfx.SoundId = "rbxassetid://119332409093320"

	sfx.Parent = game.SoundService

	sfx.TimePosition = 0.1

	sfx:Play()

	game.Debris:AddItem(sfx,2)

	task.spawn(function()

		wait(0.4)

		game.TweenService:Create(piece1, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()

		game.TweenService:Create(piece2, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()

		game.Debris:AddItem(piece1, 0.2)

		game.Debris:AddItem(piece2, 0.2)

	end)



	local startSFX = Instance.new("Sound")

	startSFX.Parent = char.Head

	startSFX.SoundId = "rbxassetid://95790752703314"

	startSFX.Volume = 3

	startSFX:Play()

	game.Debris:AddItem(startSFX, 8)



	local theme = Instance.new("Sound")

	theme.SoundId = "rbxassetid://138139297268843"

	theme.Parent = game.SoundService

	theme.Looped = true

	theme.Volume = 0.7

	theme:Play()



	local aura = Instance.new("PointLight")

	aura.Color = Color3.fromRGB(0, 4, 255)

	aura.Parent = root



	--SUPER LONG PARTICLE

	task.spawn(function()

		while true do

			if game.Workspace.Terrain:FindFirstChild("Ball") then

				local balll = game.Workspace.Terrain:FindFirstChild("Ball")

				if not balll:FindFirstChild("EMTAPARTICLESS") then

					if optimized == false then

						local particleAtt = Instance.new("Attachment")

						particleAtt.Name = "EMTAPARTICLESS"

						particleAtt.Parent = balll



						local BillboardGui0 = Instance.new("BillboardGui")

						local ImageLabel1 = Instance.new("ImageLabel")

						BillboardGui0.Parent = particleAtt

						BillboardGui0.LightInfluence = 1

						BillboardGui0.Size = UDim2.new(0, 50, 0, 50)

						BillboardGui0.Active = true

						BillboardGui0.ClipsDescendants = true

						BillboardGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

						BillboardGui0.StudsOffset = Vector3.new(0, 4, 0)

						BillboardGui0.LightInfluence = 0

						ImageLabel1.Parent = BillboardGui0

						ImageLabel1.Size = UDim2.new(1, 0, 1, 0)

						ImageLabel1.BackgroundColor = BrickColor.new("Institutional white")

						ImageLabel1.BackgroundColor3 = Color3.new(1, 1, 1)

						ImageLabel1.BackgroundTransparency = 1

						ImageLabel1.BorderColor = BrickColor.new("Really black")

						ImageLabel1.BorderColor3 = Color3.new(0, 0, 0)

						ImageLabel1.BorderSizePixel = 0

						ImageLabel1.Image = "rbxassetid://11552476728"



						local ParticleEmitter0 = Instance.new("ParticleEmitter")

						local ParticleEmitter1 = Instance.new("ParticleEmitter")

						local ParticleEmitter2 = Instance.new("ParticleEmitter")

						local ParticleEmitter3 = Instance.new("ParticleEmitter")

						local ParticleEmitter4 = Instance.new("ParticleEmitter")

						ParticleEmitter0.Name = "Numbers"

						ParticleEmitter0.Parent = particleAtt

						ParticleEmitter0.Speed = NumberRange.new(1.5, 2.5)

						ParticleEmitter0.Color = ColorSequence.new(Color3.new(0.313726, 0.529412, 1),Color3.new(0.313726, 0.529412, 1))

						ParticleEmitter0.Texture = "rbxassetid://14344866477"

						ParticleEmitter0.Transparency = NumberSequence.new(0.6499999761581421,0.6499999761581421)

						ParticleEmitter0.ZOffset = -1

						ParticleEmitter0.Size = NumberSequence.new(1,0)

						ParticleEmitter0.Brightness = 5

						ParticleEmitter0.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4

						ParticleEmitter0.FlipbookFramerate = NumberRange.new(5)

						ParticleEmitter0.FlipbookMode = Enum.ParticleFlipbookMode.Random

						ParticleEmitter0.FlipbookStartRandom = true

						ParticleEmitter0.EmissionDirection = Enum.NormalId.Front

						ParticleEmitter0.Lifetime = NumberRange.new(1, 1)

						ParticleEmitter0.LockedToPart = true

						ParticleEmitter0.Rate = 55

						ParticleEmitter0.SpreadAngle = Vector2.new(360, 360)

						ParticleEmitter0.VelocitySpread = 360

						ParticleEmitter1.Name = "Misc"

						ParticleEmitter1.Parent = particleAtt

						ParticleEmitter1.Speed = NumberRange.new(0.05000000074505806, 0.05000000074505806)

						ParticleEmitter1.Rotation = NumberRange.new(-360, 360)

						ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.313726, 0.529412, 1),Color3.new(0.313726, 0.529412, 1))

						ParticleEmitter1.Texture = "rbxassetid://14184578409"

						ParticleEmitter1.Transparency = NumberSequence.new(0.6000000238418579,1)

						ParticleEmitter1.Size = NumberSequence.new(0,2.249999523162842)

						ParticleEmitter1.Brightness = 15

						ParticleEmitter1.EmissionDirection = Enum.NormalId.Front

						ParticleEmitter1.Lifetime = NumberRange.new(1, 1)

						ParticleEmitter1.LockedToPart = true

						ParticleEmitter1.Rate = 25

						ParticleEmitter2.Name = "Triangles"

						ParticleEmitter2.Parent = particleAtt

						ParticleEmitter2.Speed = NumberRange.new(3, 3.5)

						ParticleEmitter2.Rotation = NumberRange.new(-360, 360)

						ParticleEmitter2.Color = ColorSequence.new(Color3.new(0.313726, 0.529412, 1),Color3.new(0.313726, 0.529412, 1))

						ParticleEmitter2.Texture = "rbxassetid://5561954395"

						ParticleEmitter2.ZOffset = -2

						ParticleEmitter2.Size = NumberSequence.new(0.125,0)

						ParticleEmitter2.Brightness = 5

						ParticleEmitter2.Drag = 1

						ParticleEmitter2.EmissionDirection = Enum.NormalId.Front

						ParticleEmitter2.Lifetime = NumberRange.new(1, 1)

						ParticleEmitter2.LockedToPart = true

						ParticleEmitter2.Rate = 25

						ParticleEmitter2.SpreadAngle = Vector2.new(360, 360)

						ParticleEmitter2.VelocitySpread = 360

						ParticleEmitter3.Name = "Specs"

						ParticleEmitter3.Parent = particleAtt

						ParticleEmitter3.Speed = NumberRange.new(3.5, 4)

						ParticleEmitter3.Color = ColorSequence.new(Color3.new(0.313726, 0.529412, 1),Color3.new(0.313726, 0.529412, 1))

						ParticleEmitter3.Texture = "rbxassetid://11720622495"

						ParticleEmitter3.ZOffset = -1

						ParticleEmitter3.Size = NumberSequence.new(0.25,0)

						ParticleEmitter3.Brightness = 5

						ParticleEmitter3.Drag = 2

						ParticleEmitter3.EmissionDirection = Enum.NormalId.Front

						ParticleEmitter3.Lifetime = NumberRange.new(1, 1)

						ParticleEmitter3.LockedToPart = true

						ParticleEmitter3.Rate = 35

						ParticleEmitter3.RotSpeed = NumberRange.new(-255, 255)

						ParticleEmitter3.SpreadAngle = Vector2.new(360, 360)

						ParticleEmitter3.VelocitySpread = 360

						ParticleEmitter4.Name = "Outer"

						ParticleEmitter4.Parent = particleAtt

						ParticleEmitter4.Speed = NumberRange.new(0.0010000000474974513, 0.0010000000474974513)

						ParticleEmitter4.Color = ColorSequence.new(Color3.new(0.313726, 0.529412, 1),Color3.new(0.313726, 0.529412, 1))

						ParticleEmitter4.Texture = "rbxassetid://14761291468"

						ParticleEmitter4.Size = NumberSequence.new(0,2,2,0)

						ParticleEmitter4.Brightness = 5

						ParticleEmitter4.EmissionDirection = Enum.NormalId.Front

						ParticleEmitter4.Lifetime = NumberRange.new(3, 3)

						ParticleEmitter4.LockedToPart = true

						ParticleEmitter4.Rate = 2

						ParticleEmitter4.RotSpeed = NumberRange.new(155, 155)

					end

				else

					local image = balll.EMTAPARTICLESS.BillboardGui.ImageLabel

					if (root.Position - balll.Position).Magnitude < 56 then

						image.ImageColor3 = Color3.fromRGB(4, 255, 0)

					else

						image.ImageColor3 = Color3.fromRGB(255, 255, 255)

					end

				end

			end

			wait()

			if stopped == true then

				break

			end

		end

	end)

	---





	local floor = Instance.new("Part")

	floor.Anchored = true

	floor.CanCollide = false

	floor.Size = Vector3.new(635.664, 0.001, 866.388)

	floor.Position = Vector3.new(-537.206, 0.04, 1273.884)

	floor.Transparency = 1

	local texture = Instance.new("Texture")

	if game.PlaceId ~= 85946466968831 then

		texture.Texture = "rbxassetid://101190317568501"

		texture.Transparency = 0.7

		texture.Color3 = Color3.fromRGB(92, 80, 255)

		texture.StudsPerTileU = 40

		texture.StudsPerTileV = 40

		texture.Face = "Top"

		texture.Parent = floor

	end

	floor.Parent = wk

	local particle = Instance.new("ParticleEmitter")

	particle.Texture = "rbxassetid://114540148256023"

	particle.Transparency = NumberSequence.new(0.5)

	particle.Rotation = NumberRange.new(-360,360)

	particle.RotSpeed = NumberRange.new(-60,60)

	particle.Rate = 40

	particle.Parent = floor



	local att = Instance.new("Atmosphere")

	att.Name = "theNewMeta"

	att.Color = Color3.fromRGB(0, 0, 0)

	att.Offset = 1

	att.Density = 0.407

	att.Glare = 0

	att.Haze = 5

	att.Parent = game.Lighting



	local attachment1 = Instance.new("Attachment")

	attachment1.Parent = char.HumanoidRootPart

	attachment1.Position = Vector3.new(0, 0.218, 0)

	local attachment2 = Instance.new("Attachment")

	attachment2.Parent = char.HumanoidRootPart

	attachment2.Position = Vector3.new(0, 0.218, -1000)

	local beam = Instance.new("Beam")

	beam.Parent = char.HumanoidRootPart

	beam.Texture = "rbxassetid://7151778302"

	beam.TextureMode = Enum.TextureMode.Wrap

	beam.TextureSpeed = 1

	beam.TextureLength = 100

	beam.Transparency = NumberSequence.new(0)

	beam.Width0 = 2

	beam.Width1 = 50

	beam.Segments = 10

	beam.FaceCamera = true

	beam.Attachment0 = attachment1

	beam.Attachment1 = attachment2

	beam.Enabled = false



	task.spawn(function()

		local ReplicatedStorage = game:GetService("ReplicatedStorage")

		local Debris = game:GetService("Debris")

		local Players = game:GetService("Players")



		local predics = Instance.new("Folder")

		predics.Name = "EMTAPREDICS"

		predics.Parent = game.workspace



		local hum = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")



		local gravity = -196.2 -- Standard Roblox gravity in studs per second squared



		local function drawPrediction()

			local CFBall = workspace.Terrain:FindFirstChild("Ball")

			local velocityValue = ReplicatedStorage:FindFirstChild("CFBall") and ReplicatedStorage.CFBall:FindFirstChild("velocity")

			local speedValue = ReplicatedStorage:FindFirstChild("CFBall") and ReplicatedStorage.CFBall:FindFirstChild("speed")



			if CFBall and velocityValue and speedValue and CFBall:IsA("BasePart") then

				local startPos = CFBall.Position

				local velocity = velocityValue.Value -- The velocity direction vector

				local speed = speedValue.Value -- The speed scalar (magnitude)



				-- Calculate the final velocity using both the direction (velocity) and the speed

				local finalVelocity = velocity * speed



				-- Initialize the prediction

				local points = {}

				local stepSize = 0.1  -- Time step (0.1s)

				local maxTime = 2  -- Max prediction time (2 seconds)



				-- Loop through prediction steps and apply gravity

				for t = 0, maxTime, stepSize do

					-- Calculate position for this time step

					local x = startPos.X + finalVelocity.X * t

					local y = startPos.Y + finalVelocity.Y * t + 0.5 * gravity * t^2  -- Gravity effect on vertical movement

					local z = startPos.Z + finalVelocity.Z * t



					-- Store calculated position

					table.insert(points, Vector3.new(x, y, z))

				end



				-- Create the line between prediction points

				for i = 1, #points - 1 do

					local line = Instance.new("Part")

					line.Anchored = true

					line.CanCollide = false

					line.Material = Enum.Material.Neon

					line.Color = Color3.fromRGB(255, 255, 255)

					line.Size = Vector3.new(0.1, 0.1, (points[i+1] - points[i]).Magnitude)

					line.CFrame = CFrame.new(points[i], points[i+1]) * CFrame.new(0, 0, -line.Size.Z / 2)

					line.Parent = predics



					-- Clean up the line after a short period

					Debris:AddItem(line, 0.1)

				end

			end

		end



		-- Loop every 0.1 seconds to update the prediction

		while hum and hum.Parent do

			if hum.Health > 0 then

				drawPrediction()

			else

				predics:Destroy()

				break

			end

			if stopped == true then

				predics:Destroy()

				break

			end

			if optimized == true then

				predics:Destroy()

				break

			end

			wait(0.1)

		end



	end)



	local con = game:GetService("RunService").RenderStepped:Connect(function()

		if slowed == false and char.Humanoid.WalkSpeed == 40 then

			char.Humanoid.WalkSpeed = 48

		end

		game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {FieldOfView = 100}):Play()



		local ball = workspace.Terrain:FindFirstChild("Ball")

		if ball then

			if not ball:FindFirstChild("EMTATRAIL") then

				local ballAtt1 = Instance.new("Attachment")

				ballAtt1.Parent = ball

				ballAtt1.Position = Vector3.new(0, 0, 0.176)

				local ballAtt2 = Instance.new("Attachment")

				ballAtt2.Parent = ball

				ballAtt2.Position = Vector3.new(0, 0, -0.176)

				local trail = Instance.new("Trail")

				trail.Color = ColorSequence.new(Color3.fromRGB(0, 157, 255))

				trail.WidthScale = NumberSequence.new({

					NumberSequenceKeypoint.new(0, 1),

					NumberSequenceKeypoint.new(0.7, 1),

					NumberSequenceKeypoint.new(1, 0)

				})

				trail.Name = "EMTATRAIL"

				trail.Attachment0 = ballAtt1

				trail.Attachment1 = ballAtt2

				trail.Lifetime = 5

				trail.FaceCamera = true

				trail.Transparency = NumberSequence.new(0)

				trail.Parent = ball

			end

		end

	end)



	task.spawn(function()

		while floor do

			local character = plr.Character

			local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

			local football = workspace.Terrain:FindFirstChild("Ball")



			if humanoidRootPart and football then

				beam.Parent = character.HumanoidRootPart

				beam.Enabled = false

				attachment1.Parent = character.HumanoidRootPart

				attachment2.Parent = character.HumanoidRootPart

			end



			for _, otherPlayer in pairs(game.Players:GetPlayers()) do

				local otherCharacter = otherPlayer.Character

				local otherFootball = otherCharacter and otherCharacter:FindFirstChild("Ball")

				local otherHumanoidRootPart = otherCharacter and otherCharacter:FindFirstChild("HumanoidRootPart")



				if otherFootball and otherHumanoidRootPart and humanoidRootPart then

					attachment1.Parent = otherCharacter.HumanoidRootPart

					attachment2.Parent = otherCharacter.HumanoidRootPart

					beam.Parent = character.HumanoidRootPart

					beam.Enabled = true

				end

			end

			wait()

		end

	end)



	for _, v in pairs (game.Workspace.characters:GetChildren()) do

		if v.state.team.Value ~= "" then

			if v.Name ~= plr.Name then

				local highlight = Instance.new("Highlight")

				highlight.Name = "EMTA"

				highlight.Adornee = v

				highlight.FillColor = Color3.fromRGB(55, 68, 255)

				highlight.OutlineTransparency = 1

				highlight.FillTransparency = 0.3

				highlight.Parent = v



				local thatPlr = game.Players:FindFirstChild(v.Name)



				local BillboardGui0 = Instance.new("BillboardGui")

				local TextLabel1 = Instance.new("TextLabel")

				local TextLabel2 = Instance.new("TextLabel")

				BillboardGui0.Parent = v.Head

				BillboardGui0.Name = "METATITLEE"

				BillboardGui0.LightInfluence = 1

				BillboardGui0.Size = UDim2.new(7, 0, 7, 0)

				BillboardGui0.Active = true

				BillboardGui0.LightInfluence = 0

				BillboardGui0.ClipsDescendants = true

				BillboardGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

				BillboardGui0.StudsOffset = Vector3.new(0, 7, 0)



				TextLabel1.Name = "Style"

				TextLabel1.Parent = BillboardGui0

				TextLabel1.Position = UDim2.new(0, 0, 0.66, 0)

				TextLabel1.Size = UDim2.new(1, 0, 0.33, 0)

				TextLabel1.BackgroundColor = BrickColor.new("Institutional white")

				TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1)

				TextLabel1.BackgroundTransparency = 1

				TextLabel1.BorderColor = BrickColor.new("Really black")

				TextLabel1.BorderColor3 = Color3.new(0, 0, 0)

				TextLabel1.BorderSizePixel = 0

				TextLabel1.Font = Enum.Font.SciFi

				TextLabel1.FontSize = Enum.FontSize.Size14

				TextLabel1.Text = string.upper(thatPlr:GetAttribute("style"))

				TextLabel1.TextColor = BrickColor.new("Really red")

				TextLabel1.TextColor3 = Color3.new(1, 0, 0)

				TextLabel1.TextScaled = true

				TextLabel1.TextSize = 14

				TextLabel1.TextStrokeTransparency = 0

				TextLabel1.TextWrap = true

				TextLabel1.TextWrapped = true



				local st = thatPlr:GetAttribute("style")



				local colors = {

					["aiku"] = Color3.fromRGB(60, 255, 0),

					["kaiser"] = Color3.fromRGB(0, 255, 247),

					["barou"] = Color3.fromRGB(255, 0, 0),

					["nagi"] = Color3.fromRGB(255, 255, 255),

					["sae"] = Color3.fromRGB(238, 0, 255),

					["donlorenzo"] = Color3.fromRGB(59, 11, 71),

					["isagi"] = Color3.fromRGB(0, 0, 255),

					["nelisagi"] = Color3.fromRGB(0, 0, 202),

					["rin"] = Color3.fromRGB(157, 0, 3),

					["shidou"] = Color3.fromRGB(234, 0, 255),

					["bachira"] = Color3.fromRGB(255, 234, 0),

					["kunigami"] = Color3.fromRGB(255, 139, 56),

					["chigiri"] = Color3.fromRGB(255, 30, 139),

					["gagamaru"] = Color3.fromRGB(212, 226, 255),

					["yukimiya"] = Color3.fromRGB(255, 161, 30),

					["reo"] = Color3.fromRGB(156, 64, 175),

					["kurona"] = Color3.fromRGB(206, 27, 167),

					["hiori"] = Color3.fromRGB(134, 255, 255),

					["masterylorenzo"] = Color3.fromRGB(59, 11, 71),

				}



				if colors[st] then

					TextLabel1.TextColor3 = colors[st]

				end



				TextLabel2.Parent = BillboardGui0

				TextLabel2.Position = UDim2.new(0, 0, 0.33, 0)

				TextLabel2.Size = UDim2.new(1, 0, 0.33, 0)

				TextLabel2.BackgroundColor = BrickColor.new("Institutional white")

				TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)

				TextLabel2.BackgroundTransparency = 1

				TextLabel2.BorderColor = BrickColor.new("Really black")

				TextLabel2.BorderColor3 = Color3.new(0, 0, 0)

				TextLabel2.BorderSizePixel = 0

				TextLabel2.Font = Enum.Font.SciFi

				TextLabel2.FontSize = Enum.FontSize.Size14

				TextLabel2.Text = "AWAKENED"

				TextLabel2.Visible = false

				TextLabel2.TextColor = BrickColor.new("Hot pink")

				TextLabel2.TextColor3 = Color3.new(0.96, 0, 1)

				TextLabel2.TextScaled = true

				TextLabel2.TextSize = 14

				TextLabel2.TextStrokeTransparency = 0

				TextLabel2.TextWrap = true

				TextLabel2.TextWrapped = true



				local flowbar = Instance.new("Frame")

				flowbar.Size = UDim2.new(1, 0,0.152, 0)

				flowbar.Position = UDim2.new(0, 0,0.152, 0)

				flowbar.Parent = BillboardGui0

				local bar = Instance.new("Frame")

				bar.Parent = flowbar

				bar.Size = UDim2.new(0,0,1,0)

				bar.BackgroundColor3 = Color3.fromRGB(80, 76, 143)

				local TextLabel3 = Instance.new("TextLabel")

				TextLabel3.BackgroundTransparency = 1

				TextLabel3.Font = Enum.Font.SciFi

				TextLabel3.Text = "FLOW"

				TextLabel3.TextColor3 = Color3.fromRGB(80, 76, 143)

				TextLabel3.TextScaled = true

				TextLabel3.Size = UDim2.new(1,0,1,0)

				TextLabel3.TextStrokeTransparency = 0

				TextLabel3.Parent = flowbar

				TextLabel3.ZIndex = 2



				task.spawn(function()

					while true do

						bar.Size = UDim2.new(v.state.flow.Value / 100, 0, 1, 0)

						if stopped == true then

							break

						end

						wait()

					end

				end)



				task.spawn(function()

					while wait() do

						if game.ReplicatedStorage.workspace.awaken.Value == v then

							TextLabel2.Visible = true

						else

							TextLabel2.Visible = false

						end

						if stopped == true then

							break

						end

					end

				end)



				if v.state.team.Value ~= plr.Team.Name and v.state.team.Value ~= "" then

					highlight.FillColor = Color3.fromRGB(184, 175, 255)

				end

			end

		end

	end



	local function reset()

		stopped = true

		beam:Destroy()

		attachment1:Destroy()

		attachment2:Destroy()

		aura:Destroy()

		floor:Destroy()

		att:Destroy()

		con:Disconnect()

		if game.Workspace.Terrain:FindFirstChild("Ball") then

			if game.Workspace.Terrain:FindFirstChild("Ball"):FindFirstChild("EMTAPARTICLESS") then

				game.Workspace.Terrain:FindFirstChild("Ball"):FindFirstChild("EMTAPARTICLESS"):Destroy()

			end

		end

		char.Humanoid.WalkSpeed = 40

		game.Workspace.CurrentCamera.FieldOfView = 70

		theme:Destroy()

		for _, v in pairs (game.Workspace.characters:GetChildren()) do

			if v:FindFirstChild("EMTA") then

				v:FindFirstChild("EMTA"):Destroy()

			end

			if v.Head:FindFirstChild("METATITLEE") then

				v.Head:FindFirstChild("METATITLEE"):Destroy()

			end

		end

	end



	local button = Instance.new("TextButton")

	button.Position = UDim2.new(0.424, 0,0.8, 0)

	button.Size = UDim2.new(0.151, 0,0.068, 0)

	button.Text = " Disable Metavision "

	button.TextScaled = true

	button.TextColor3 = Color3.fromRGB(255, 255, 255)

	button.BackgroundColor3 = Color3.fromRGB(46, 74, 255)

	button.Parent = screenGui

	local round = Instance.new("UICorner")

	round.CornerRadius = UDim.new(0.2, 0)

	round.Parent = button

	button.MouseButton1Up:Connect(function()

		reset()

		screenGui:Destroy()

	end)



	local buttonslow = Instance.new("TextButton")

	buttonslow.Position = UDim2.new(0.6, 0,0.8, 0)

	buttonslow.Size = UDim2.new(0.06, 0,0.068, 0)

	buttonslow.Text = "No Speed"

	buttonslow.TextScaled = true

	buttonslow.TextColor3 = Color3.fromRGB(255, 255, 255)

	buttonslow.BackgroundColor3 = Color3.fromRGB(46, 74, 255)

	buttonslow.Parent = screenGui

	local round = Instance.new("UICorner")

	round.CornerRadius = UDim.new(0.2, 0)

	round.Parent = buttonslow

	buttonslow.MouseButton1Up:Connect(function()

		slowed = true

		buttonslow.Visible = false

	end)



	local buttonidle = Instance.new("TextButton")

	buttonidle.Position = UDim2.new(0.335, 0,0.8, 0)

	buttonidle.Size = UDim2.new(0.06, 0,0.068, 0)

	buttonidle.Text = "Improves proformance (only keeps essential stuff)"

	buttonidle.TextScaled = true

	buttonidle.TextColor3 = Color3.fromRGB(255, 255, 255)

	buttonidle.BackgroundColor3 = Color3.fromRGB(46, 74, 255)

	buttonidle.Parent = screenGui

	local round = Instance.new("UICorner")

	round.CornerRadius = UDim.new(0.2, 0)

	round.Parent = buttonidle

	buttonidle.MouseButton1Up:Connect(function()

		particle:Destroy()

		buttonidle.Visible = false

	end)

end
]==]

cleanedPayloads['hfp'] = [==[
-- STOP BEING A SKID >:(((



local skidded = false

-- anti-skid bypassed





local TweenService = game:GetService("TweenService")

local Lighting = game:GetService("Lighting")

local SoundService = game:GetService("SoundService")

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Players = game:GetService("Players")

local plr = Players.LocalPlayer

local PlayerGui = plr:WaitForChild("PlayerGui")

local cam = game.Workspace.CurrentCamera



local grass = workspace.map.map.sanam.main



if not grass:GetAttribute("LOADED_ALREADY") then

	local timee = "1:30"

	if game.PlaceId == 85946466968831 then

		timee = "4:30"

	end

	

	game.StarterGui:SetCore("SendNotification", {

		Title = "Metavision Tutorial",

		Text = "You can use it when the timer goes under " .. timee,

		Duration = 5,

		Button1 = "ok",

	})

	grass:SetAttribute("LOADED_ALREADY", true)

else

	game.StarterGui:SetCore("SendNotification", {

		Title = "Metavision",

		Text = "You already have meta vision ran",

		Duration = 5,

		Button1 = "ok",

	})

	return

end



local startTime = 90



if game.PlaceId == 85946466968831 then

	startTime = 270

end



-- buffer string

local buffers = {}

pcall(initializeBuffers)

print("made by daffy: discord.gg/8stFYxJv4R")

repeat

	task.wait()

until game.Lighting:FindFirstChild("BUFFERSTRINGS")

for _, val in ipairs(game.Lighting:FindFirstChild("BUFFERSTRINGS"):GetChildren()) do

	buffers[val.Name] = val.Value

end

game.Lighting:FindFirstChild("BUFFERSTRINGS"):Destroy()

--



local function OvertimeNELSagi(character)

	--// Creates a Weld between two parts

	local function CreateWeld(part0, part1, c0, c1)

		-- Validate optional CFrames

		c0 = typeof(c0) == "CFrame" and c0 or CFrame.new()

		c1 = typeof(c1) == "CFrame" and c1 or CFrame.new()



		local weld = Instance.new("Weld")

		weld.Name = string.format("%s > %s", part0.Name, part1.Name)

		weld.Part0 = part0

		weld.Part1 = part1

		weld.C0 = c0

		weld.C1 = c1

		weld.Parent = part0



		return weld

	end





	--// Creates a Motor6D between two parts

	local function CreateMotor6D(part0, part1, c0, c1, name, parent)

		c0 = typeof(c0) == "CFrame" and c0 or CFrame.new()

		c1 = typeof(c1) == "CFrame" and c1 or CFrame.new()



		local motor = Instance.new("Motor6D")

		motor.Name = name or "Joint"

		motor.Part0 = part0

		motor.Part1 = part1

		motor.C0 = c0

		motor.C1 = c1

		motor.Parent = parent or part0



		return motor

	end





	--// Reattaches welds + fixes jersey names/numbers + optional recolor

	local function GroupWeld(character, rigModel)

		if not character or not rigModel then return end



		local player = game:GetService("Players"):GetPlayerFromCharacter(character)

		local existingNames = {}



		-- collect all BasePart names from character

		for _, v in ipairs(character:GetChildren()) do

			if v:IsA("BasePart") then

				table.insert(existingNames, v.Name)

			end

		end



		for _, obj in ipairs(rigModel:GetDescendants()) do



			-- Reconnect welds if names match

			if obj:IsA("Weld") then

				if table.find(existingNames, obj.Name) then

					obj.Part1 = character:FindFirstChild(obj.Name)

				end



				-- Jersey name/number fixes

			elseif obj:IsA("TextLabel") and player then

				local data = player:FindFirstChild("Data")

				if data then

					local nameValue = data:FindFirstChild("JerseyName")

					local numberValue = data:FindFirstChild("JerseyNumber")



					local jerseyName = (nameValue and nameValue.Value ~= "" and nameValue.Value ~= "None")

						and nameValue.Value

						or character.Name



					if obj.Name == "ShirtName" then

						obj.Text = jerseyName

					elseif obj.Name == "Number" then

						obj.Text = numberValue and numberValue.Value or ""

					end

				end



				-- Recolor rig parts if needed (if you want)

			elseif obj:IsA("BasePart") then

				-- You can put recoloring logic here if desired.

				-- Was broken in decompiler output so I left it clean.

			end

		end

	end







	local trove_upvr

	do

		-- trove implementation (keeps original upvalues / behavior)

		local newproxy_result1_upvr = newproxy()

		local newproxy_result1_upvr_2 = newproxy()

		local table_freeze_result1_upvr = table.freeze({"Destroy", "Disconnect", "destroy", "disconnect"})



		local function GetObjectCleanupFunction_upvr(arg1, arg2)

			local typeof_result1 = typeof(arg1)

			if typeof_result1 == "function" then

				return newproxy_result1_upvr

			end

			if typeof_result1 == "thread" then

				return newproxy_result1_upvr_2

			end

			if arg2 then

				return arg2

			end

			if typeof_result1 == "Instance" then

				return "Destroy"

			end

			if typeof_result1 == "RBXScriptConnection" then

				return "Disconnect"

			end

			if typeof_result1 == "table" then

				for _, v in table_freeze_result1_upvr do

					if typeof(arg1[v]) == "function" then

						return v

					end

				end

			end

		end



		local function _(arg1) -- AssertPromiseLike (kept for parity, not used directly)

			if typeof(arg1) ~= "table" or typeof(arg1.getStatus) ~= "function" or typeof(arg1.finally) ~= "function" or typeof(arg1.cancel) ~= "function" then

				error("did not receive a promise as an argument", 3)

			end

		end



		local function TroveWarn_upvr(arg1)

			warn(("[TROVE]: %s"):format(debug.traceback(arg1)))

		end



		local tbl_upvr = {}

		tbl_upvr.__index = tbl_upvr



		function tbl_upvr.new()

			local self = setmetatable({}, tbl_upvr)

			self._objects = {}

			self._cleaning = false

			return self

		end



		function tbl_upvr.Add(self, object, cleanupFn)

			if self._cleaning then

				error("cannot call trove:Add() while cleaning", 2)

			end

			local tbl = {}

			tbl[1] = object

			tbl[2] = GetObjectCleanupFunction_upvr(object, cleanupFn)

			table.insert(self._objects, tbl)

			return object

		end



		function tbl_upvr.Clone(self, model)

			if self._cleaning then

				error("cannot call trove:Clone() while cleaning", 2)

			end

			return self:Add(model:Clone())

		end



		function tbl_upvr.Construct(self, ctor, ...)

			if self._cleaning then

				error("Cannot call trove:Construct() while cleaning", 2)

			end

			local result

			local t = type(ctor)

			if t == "table" then

				result = ctor.new(...)

			elseif t == "function" then

				result = ctor(...)

			end

			return self:Add(result)

		end



		function tbl_upvr.Connect(self, event, callback)

			if self._cleaning then

				error("Cannot call trove:Connect() while cleaning", 2)

			end

			return self:Add(event:Connect(callback))

		end



		local RunService_upvr = game:GetService("RunService")

		function tbl_upvr.BindToRenderStep(self, name, priority, callback)

			if self._cleaning then

				error("cannot call trove:BindToRenderStep() while cleaning", 2)

			end

			RunService_upvr:BindToRenderStep(name, priority, callback)

			self:Add(function()

				RunService_upvr:UnbindFromRenderStep(name)

			end)

		end



		function tbl_upvr.AddPromise(self, promise)

			if self._cleaning then

				error("cannot call trove:AddPromise() while cleaning", 2)

			end

			if typeof(promise) ~= "table" or typeof(promise.getStatus) ~= "function" or typeof(promise.finally) ~= "function" or typeof(promise.cancel) ~= "function" then

				error("did not receive a promise as an argument", 3)

			end

			if promise:getStatus() == "Started" then

				promise:finally(function()

					if self._cleaning then

						-- already cleaning; ignore

					else

						self:_findAndRemoveFromObjects(promise, false)

					end

				end)

				self:Add(promise, "cancel")

			end

			return promise

		end



		function tbl_upvr.Remove(self, obj)

			if self._cleaning then

				error("cannot call trove:Remove() while cleaning", 2)

			end

			return self:_findAndRemoveFromObjects(obj, true)

		end



		function tbl_upvr.Extend(self)

			if self._cleaning then

				error("cannot call trove:Extend() while cleaning", 2)

			end

			return self:Construct(tbl_upvr)

		end



		function tbl_upvr.Clean(self)

			if not self._cleaning then

				self._cleaning = true

				for _, v in ipairs(self._objects) do

					self:_cleanupObject(v[1], v[2])

				end

				table.clear(self._objects)

				self._cleaning = false

			end

		end



		function tbl_upvr.WrapClean(self)

			return function()

				self:Clean()

			end

		end



		function tbl_upvr._findAndRemoveFromObjects(self, target, doCleanup)

			local _objects = self._objects

			for i, v in _objects do

				if v[1] == target then

					local len = #_objects

					_objects[i] = _objects[len]

					_objects[len] = nil

					if doCleanup then

						self:_cleanupObject(v[1], v[2])

					end

					return true

				end

			end

			return false

		end



		function tbl_upvr._cleanupObject(self, obj, fn)

			if fn == newproxy_result1_upvr then

				xpcall(obj, TroveWarn_upvr)

			else

				if fn == newproxy_result1_upvr_2 then

					pcall(task.cancel, obj)

					return

				end

				obj[fn](obj)

			end

		end



		function tbl_upvr.AttachToInstance(self, inst)

			if self._cleaning then

				error("cannot call trove:AttachToInstance() while cleaning", 2)

			elseif not inst:IsDescendantOf(game) then

				error("instance is not a descendant of the game hierarchy", 2)

			end

			return self:Add(inst.AncestryChanged:Once(function()

				self:Destroy()

			end))

		end



		function tbl_upvr.Destroy(self)

			self:Clean()

		end



		trove_upvr = { new = tbl_upvr.new }

	end

	-- End Trove implementation ------------------------





	local function cutsceneHumanoidCamera(arg1, animation, fovSequence, arg4, destroySignal, weldC0)

		local CurrentCamera_upvr = game.Workspace.CurrentCamera



		local character = game.Players.LocalPlayer.Character



		-- Connections table for cleanup

		local connections = {}



		-- Clone camera rig

		local rig = game:GetService("ReplicatedStorage").Resources.blenderCam:Clone()

		rig.Parent = arg1



		-- Attach rig to target

		rig.RootPart.Weld.Part0 = arg1

		rig.RootPart.Weld.C0 = weldC0 or rig.RootPart.Weld.C0



		-- Play animation

		local track = rig.AnimationController:LoadAnimation(animation)

		track:Play(0)



		-- Make camera scriptable

		CurrentCamera_upvr.CameraType = Enum.CameraType.Scriptable



		-- FOV TWEEN SEQUENCE

		if fovSequence then

			local timeCounter = 0



			table.insert(connections,

				game["Run Service"].PreRender:Connect(function(dt)

					timeCounter = timeCounter + (dt * 60)

					local key = math.ceil(timeCounter)

					local found = fovSequence:FindFirstChild(tostring(key))

					if found then

						CurrentCamera_upvr.FieldOfView = found.Value

					end

				end)

			)

		end



		-- DESTROY FUNCTION

		local destroyed = false

		local originalCamCFrame = CurrentCamera_upvr.CFrame



		local function destroy()

			if destroyed then return end

			destroyed = true



			if rig and rig.Parent then

				rig:Destroy()

			end



			CurrentCamera_upvr.FieldOfView = 70

			CurrentCamera_upvr.CameraType = Enum.CameraType.Custom

			CurrentCamera_upvr.CFrame = originalCamCFrame



			for _, conn in connections do

				if conn and typeof(conn.Disconnect) == "function" then

					conn:Disconnect()

				end

			end

			table.clear(connections)

		end



		-- Destroy if the provided signal leaves the world

		if destroySignal then

			table.insert(connections, destroySignal.AncestryChanged:Once(destroy))

		end



		-- CAMERA FOLLOW / LERP LOGIC

		local startTick = tick()

		local snapTime = workspace:GetServerTimeNow() + 1



		table.insert(connections,

			game["Run Service"].RenderStepped:Connect(function(dt)



				local elapsedCheck = (tick() - startTick) >= 1

				local torsoCF = rig.CamPart.CFrame



				-- Snap instantly after serverTime passes

				if workspace:GetServerTimeNow() >= snapTime then

					CurrentCamera_upvr.CFrame = torsoCF

					return

				end



				-- Quaternion lerp fallback (from decompiled weirdness)

				local lerpAlpha = 1 - math.pow(9e-07, dt)

				CurrentCamera_upvr.CFrame = CurrentCamera_upvr.CFrame:lerp(torsoCF, lerpAlpha)

			end)

		)



		-- Clean up when animation ends

		table.insert(connections, track.Stopped:Once(destroy))



		-- Clean up when parent model is removed

		table.insert(connections, arg1.Parent.AncestryChanged:Once(destroy))



		return rig, destroy

	end



	local function luckyisagiflow(char, arg2)

		local hrp = char.HumanoidRootPart or char.PrimaryPart

		if not hrp then return end



		local ReplicatedStorage_upvr = game.ReplicatedStorage

		local PlayerGui_upvr = game.Players.LocalPlayer.PlayerGui

		local Lighting_upvr = game.Lighting

		local TweenService_upvr = game.TweenService

		local CurrentCamera_upvr = game.Workspace.CurrentCamera



		Lighting_upvr.Brightness = 2



		-- Clone main effect

		local ogC = hrp.CFrame



		local fx = ReplicatedStorage_upvr.Resources.nelisagi["1%AllEff"]:Clone()

		fx:PivotTo(ogC * CFrame.new(0, 30.1, 0))

		fx.Parent = workspace



		task.delay(1, function()

			hrp.Anchored = true

			fx:PivotTo(ogC * CFrame.new(0, 30.1, 0))

		end)



		task.delay(2, function()

			fx:PivotTo(hrp.CFrame * CFrame.new(0, 0.1, 0))

		end)



		hrp.CFrame = ogC * CFrame.new(0, 30, 0)



		local fakeGrass = workspace.map.map.sanam.main:Clone()

		fakeGrass.CFrame = fakeGrass.CFrame * CFrame.new(0, 30, 0)

		fakeGrass.Parent = game.Workspace



		for _, d in ipairs(fx:GetDescendants()) do

			if d:IsA("ParticleEmitter") or d:IsA("Beam") then

				d.Enabled = false

			end

		end



		-- Glow UI

		local glow = ReplicatedStorage_upvr.Resources.glowscreen:Clone()

		glow.Parent = PlayerGui_upvr

		glow.ImageLabel2.ImageTransparency = 0

		glow.ImageLabel2.ImageColor3 = Color3.new(0,0,0)



		-- Depth of field

		local dof = ReplicatedStorage_upvr.Resources.DepthOfField:Clone()

		dof.Parent = Lighting_upvr

		dof.FarIntensity = 0

		TweenService_upvr:Create(

			dof,

			TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),

			{ FarIntensity = 1 }

		):Play()



		cutsceneHumanoidCamera(hrp, game:GetService("ReplicatedStorage").Resources.nelisagi["1%cam"], game:GetService("ReplicatedStorage").Resources.nelisagi["1%FOV"])

		local afibwefjiANim = char.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Resources.nelisagi["1%user"])

		afibwefjiANim:Play(0)



		-- Animations

		fx["Metavision Eye"].AnimationController:LoadAnimation(ReplicatedStorage_upvr.Resources.nelisagi["1%eye"]):Play(0)

		fx.JJ.AnimationController:LoadAnimation(ReplicatedStorage_upvr.Resources.nelisagi["1%JJ"]):Play(0)



		-- SFX

		ReplicatedStorage_upvr.Resources.nelisagi["isagi 1 percent flow sfx"]:Play()



		-- Color correction

		local colorCorrect = Instance.new("ColorCorrectionEffect")

		colorCorrect.Parent = Lighting_upvr



		-- Collect camera attachments

		local camAttachments = {}

		for _, obj in ipairs(CurrentCamera_upvr:GetChildren()) do

			if obj:IsA("Attachment") then

				table.insert(camAttachments, obj)

			end

		end



		---------------------------------------------------------------------

		-- TIMED EFFECT SEQUENCE (unchanged from original)

		---------------------------------------------------------------------



		task.delay(1.65, function()

			for _, p in pairs(fx.Fx.JigsawFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					delay(p:GetAttribute("EmitDelay"), function()

						p:Emit(p:GetAttribute("EmitCount"))

					end)

				elseif p:IsA("Beam") or p:IsA("Trail") then

					p.Enabled = true

				end

			end

		end)



		task.delay(3.483, function()

			for _, a in ipairs(camAttachments) do

				a.Parent = ReplicatedStorage_upvr

			end

			for _, p in pairs(fx.Fx.JustSmokeFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					p.Enabled = true

				end

			end

		end)



		task.delay(5.4, function()

			for _, p in pairs(fx.Fx.JigsawFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					delay(p:GetAttribute("EmitDelay"), function()

						p:Emit(p:GetAttribute("EmitCount"))

					end)

				elseif p:IsA("Beam") or p:IsA("Trail") then

					p.Enabled = true

				end

			end

		end)



		task.delay(8.233, function()

			for _, p in pairs(fx.Fx.JustSmokeFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") or p:IsA("Beam") then

					p.Enabled = false

				end

			end

			for _, p in pairs(fx.Fx.LightFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					p.Enabled = true

				end

			end

		end)



		local savedMapTransparency = {}



		task.delay(9.5, function()

			dof.Enabled = false

			Lighting_upvr.Bloom.Enabled = false



			for _, part in ipairs(workspace.map.map:GetDescendants()) do

				if part:IsA("BasePart") or part:IsA("Decal") or part:IsA("Texture") then

					savedMapTransparency[part] = part.Transparency

					part.Transparency = 1

				end

			end



			fx.Fx.Box.Transparency = 0



			for _, p in pairs(char:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					p.Enabled = false

				end

			end



			for _, p in pairs(fx.Fx.LightFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					p.Enabled = false

				end

			end



			for _, p in pairs(fx.Fx.BGBEAMS:GetDescendants()) do

				if p:IsA("ParticleEmitter") or p:IsA("Beam") then

					p.Enabled = true

				end

			end

		end)



		task.delay(13.433, function()

			fx.Fx.Box1.Transparency = 0



			for _, p in pairs(char:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					p.Enabled = true

				end

			end



			for _, p in pairs(fx.Fx.BGBEAMS:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					p.Enabled = false

				end

			end



			for _, p in pairs(fx.Fx.EyeFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					p.Enabled = true

				end

			end



			for _, b in pairs(fx.Fx.EyeFx:GetDescendants()) do

				if b:IsA("Beam") then

					b.Enabled = true

				end

			end

		end)



		task.delay(13.583, function()

			for _, b in pairs(fx.Fx.BGBEAMS:GetDescendants()) do

				if b:IsA("Beam") then

					b.Enabled = false

				end

			end

		end)



		task.delay(14.816, function()

			for _, p in pairs(fx.Fx.JustSmokeFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") or p:IsA("Beam") then

					p.Enabled = false

				end

			end

			for _, p in pairs(fx.Fx.MiniJigsawFx:GetDescendants()) do

				if p:IsA("Beam") or p:IsA("ParticleEmitter") then

					p.Enabled = true

				end

			end

		end)



		local savedJJTransparency = {}



		task.delay(16.366, function()

			for part, old in pairs(savedJJTransparency) do

				part.Transparency = old

			end



			table.clear(savedJJTransparency)



			for _, p in pairs(fx.Fx.MiniJigsawFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					delay(p:GetAttribute("EmitDelay"), function()

						p:Emit(p:GetAttribute("EmitCount"))

					end)

				elseif p:IsA("Beam") or p:IsA("Trail") then

					p.Enabled = true

				end

			end

		end)



		task.delay(16.883, function()

			for _, p in pairs(fx.Fx.EyeFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then p.Enabled = false end

			end

			for _, p in pairs(fx.Fx.EyeFx:GetDescendants()) do

				if p:IsA("Beam") then p.Enabled = false end

			end

		end)



		task.delay(19.066, function()

			fx.Fx.Box.Transparency = 1

			fx.Fx.Box1.Transparency = 1



			for _, a in ipairs(camAttachments) do

				a.Parent = CurrentCamera_upvr

			end



			dof.Enabled = true

			Lighting_upvr.Bloom.Enabled = true



			for part, old in pairs(savedMapTransparency) do

				part.Transparency = old

			end



			table.clear(savedMapTransparency)



			for _, p in pairs(fx.Fx.BGBEAMS.Part:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					p.Enabled = true

				end

			end



			for _, p in pairs(fx.Fx.JIGFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					delay(p:GetAttribute("EmitDelay"), function()

						p:Emit(p:GetAttribute("EmitCount"))

					end)

				elseif p:IsA("Beam") or p:IsA("Trail") then

					p.Enabled = true

				end

			end

		end)



		task.delay(19.066, function()

			for _, p in pairs(fx.Fx.MiniJigsawFx:GetDescendants()) do

				if p:IsA("Beam") or p:IsA("ParticleEmitter") then

					p.Enabled = false

				end

			end

		end)



		task.delay(21.866, function()

			for _, p in pairs(fx.Fx.JIGFx:GetDescendants()) do

				if p:IsA("Beam") or p:IsA("ParticleEmitter") then

					p.Enabled = false

				end

			end

		end)



		task.delay(21.867, function()

			Lighting_upvr.Bloom.Enabled = true



			dof:Destroy()

			colorCorrect:Destroy()

			glow:Destroy()

			fx:Destroy()



			Lighting_upvr.Brightness = 3



			hrp.CFrame = ogC

			fakeGrass:Destroy()

			afibwefjiANim:Stop(0)



			hrp.Anchored = false

		end)



		-- Side particle burst sequence

		task.spawn(function()

			for _, p in pairs(fx.Fx.TestRBGFx:GetDescendants()) do

				if p:IsA("ParticleEmitter") then

					delay(p:GetAttribute("EmitDelay"), function()

						p:Emit(p:GetAttribute("EmitCount"))

					end)

				elseif p:IsA("Beam") or p:IsA("Trail") then

					p.Enabled = true

				end

			end



			for _, obj in ipairs(fx.JJ:GetDescendants()) do

				if obj:IsA("BasePart") or obj:IsA("Decal") or obj:IsA("Texture") then

					savedJJTransparency[obj] = obj.Transparency

					obj.Transparency = 1

				end

			end

		end)

	end





	luckyisagiflow(game.Players.LocalPlayer.Character)

end



local function applyHeadInfo(selePlayer)

	task.delay(0.6, function()



		local seleChar = selePlayer.Character



		local ScreenGui = Instance.new("BillboardGui")

		local MainBar = Instance.new("Frame")

		local UICorner = Instance.new("UICorner")

		local Bar = Instance.new("Frame")

		local UICorner_2 = Instance.new("UICorner")

		local styleTXT = Instance.new("TextLabel")



		ScreenGui.Parent = selePlayer.Character.Head

		ScreenGui.Size = UDim2.new(4, 0,4, 0)

		ScreenGui.StudsOffsetWorldSpace = Vector3.new(0, 4, 0)

		ScreenGui.LightInfluence = 0



		MainBar.Name = "MainBar"

		MainBar.Parent = ScreenGui

		MainBar.AnchorPoint = Vector2.new(0, 1)

		MainBar.BackgroundColor3 = Color3.fromRGB(26, 26, 26)

		MainBar.BorderColor3 = Color3.fromRGB(0, 0, 0)

		MainBar.BorderSizePixel = 0

		MainBar.Position = UDim2.new(0, 0, 0.7, 0)

		MainBar.Size = UDim2.new(1, 0, 0.2, 0)



		UICorner.CornerRadius = UDim.new(0.3, 0)

		UICorner.Parent = MainBar



		Bar.Name = "Bar"

		Bar.Parent = MainBar

		Bar.BackgroundColor3 = Color3.fromRGB(255, 23, 201)

		Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)

		Bar.BorderSizePixel = 0

		Bar.Size = UDim2.new(0, 0, 1, 0)



		UICorner_2.CornerRadius = UDim.new(0.3, 0)

		UICorner_2.Parent = Bar



		styleTXT.Name = "styleTXT"

		styleTXT.Parent = ScreenGui

		styleTXT.AnchorPoint = Vector2.new(0, 1)

		styleTXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

		styleTXT.BackgroundTransparency = 1.000

		styleTXT.BorderColor3 = Color3.fromRGB(0, 0, 0)

		styleTXT.BorderSizePixel = 0

		styleTXT.Position = UDim2.new(0, 0, 1, 0)

		styleTXT.Size = UDim2.new(1, 0, 0.3, 0)

		styleTXT.Font = Enum.Font.Unknown

		styleTXT.Text = "SHIDOU"

		styleTXT.TextColor3 = Color3.fromRGB(255, 255, 255)

		styleTXT.TextScaled = true

		styleTXT.TextSize = 14

		styleTXT.TextStrokeTransparency = 0

		styleTXT.TextWrapped = true



		local colors = {

			["aiku"] = Color3.fromRGB(60, 255, 0),

			["kaiser"] = Color3.fromRGB(0, 255, 247),

			["barou"] = Color3.fromRGB(255, 0, 0),

			["nagi"] = Color3.fromRGB(255, 255, 255),

			["sae"] = Color3.fromRGB(238, 0, 255),

			["donlorenzo"] = Color3.fromRGB(59, 11, 71),

			["isagi"] = Color3.fromRGB(0, 0, 255),

			["nelisagi"] = Color3.fromRGB(0, 0, 202),

			["rin"] = Color3.fromRGB(157, 0, 3),

			["shidou"] = Color3.fromRGB(234, 0, 255),

			["bachira"] = Color3.fromRGB(255, 234, 0),

			["kunigami"] = Color3.fromRGB(255, 139, 56),

			["chigiri"] = Color3.fromRGB(255, 30, 139),

			["gagamaru"] = Color3.fromRGB(212, 226, 255),

			["yukimiya"] = Color3.fromRGB(255, 161, 30),

			["reo"] = Color3.fromRGB(156, 64, 175),

			["kurona"] = Color3.fromRGB(206, 27, 167),

			["hiori"] = Color3.fromRGB(134, 255, 255),

			["masterylorenzo"] = Color3.fromRGB(59, 11, 71),

		}



		styleTXT.Text = string.upper(selePlayer:GetAttribute("style"))

		Bar.BackgroundColor3 = colors[selePlayer:GetAttribute("style")] or Color3.fromRGB(255, 255, 255)

		styleTXT.TextColor3 = colors[selePlayer:GetAttribute("style")] or Color3.fromRGB(255, 255, 255)



		local light = Instance.new("PointLight")

		light.Parent = seleChar.HumanoidRootPart



		task.spawn(function()

			seleChar.state.flow.Changed:Connect(function()

				Bar.Size = UDim2.new(seleChar.state.flow.Value / 100, 0, 1, 0)

			end)



			while task.wait(0.1) do

				if not grass:FindFirstChild("pizza_piece") then

					ScreenGui:Destroy()

					light:Destroy()

					return

				end

			end

		end)

	end)

end



local function start()

	if grass:FindFirstChild("pizza_piece") then return end

	local char = plr.Character

	local hum = char:WaitForChild("Humanoid")

	local root:Part = char:WaitForChild("HumanoidRootPart")



	local facingAtt1 = Instance.new("Attachment")

	local facingAtt2 = Instance.new("Attachment")



	local music = game:GetService("ReplicatedStorage").Resources.nelisagi["1%FlowTheme"]:Clone()

	music.Parent = game.SoundService

	music:Play()



	local surfaceGui = Instance.new("SurfaceGui")

	surfaceGui.Face = "Top"

	surfaceGui.Name = "pizza_piece"

	surfaceGui.Parent = grass



	OvertimeNELSagi(game.Players.LocalPlayer.Character)



	local sod = game["Run Service"].RenderStepped:Connect(function()

		hum.WalkSpeed = 0

		char.state.stun.Value = true

	end)



	if root:FindFirstChildWhichIsA("BodyVelocity") then

		root:FindFirstChildWhichIsA("BodyVelocity"):Destroy()

	end



	--cutscene finish

	task.wait(21)



	sod:Disconnect()

	char.state.stun.Value = false

	hum.WalkSpeed = 40



	--overhead

	task.spawn(function()

		for _, v in pairs(Players:GetPlayers()) do

			if v.Team ~= game.Teams.lobby and v.Name ~= plr.Name then

				applyHeadInfo(v)

			end

		end

	end)



	local attachment1 = Instance.new("Attachment")

	attachment1.Parent = char.HumanoidRootPart

	attachment1.Position = Vector3.new(0, 0.218, 0)

	local attachment2 = Instance.new("Attachment")

	attachment2.Parent = char.HumanoidRootPart

	attachment2.Position = Vector3.new(0, 0.218, -1000)

	local beam = Instance.new("Beam")

	beam.Parent = char.HumanoidRootPart

	beam.Texture = "rbxassetid://13832105797"

	beam.TextureMode = Enum.TextureMode.Wrap

	beam.TextureSpeed = 1

	beam.TextureLength = 30

	beam.Transparency = NumberSequence.new(0)

	beam.Width0 = 2

	beam.Width1 = 2

	beam.Segments = 100

	beam.FaceCamera = true

	beam.Attachment0 = attachment1

	beam.Attachment1 = attachment2

	beam.Enabled = false



	task.spawn(function()

		local ReplicatedStorage = game:GetService("ReplicatedStorage")

		local Debris = game:GetService("Debris")

		local Players = game:GetService("Players")



		local predics = Instance.new("Folder")

		predics.Name = "EMTAPREDICS"

		predics.Parent = game.Workspace



		local hum = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")



		local gravity = -196.2



		local function drawPrediction()

			local CFBall = workspace.Terrain:FindFirstChild("Ball")

			local velocityValue = ReplicatedStorage:FindFirstChild("CFBall") and ReplicatedStorage.CFBall:FindFirstChild("velocity")

			local speedValue = ReplicatedStorage:FindFirstChild("CFBall") and ReplicatedStorage.CFBall:FindFirstChild("speed")



			if CFBall and velocityValue and speedValue and CFBall:IsA("BasePart") then

				local startPos = CFBall.Position

				local velocity = velocityValue.Value

				local speed = speedValue.Value



				local finalVelocity = velocity * speed



				local points = {}

				local stepSize = 0.1

				local maxTime = 2



				for t = 0, maxTime, stepSize do

					local x = startPos.X + finalVelocity.X * t

					local y = startPos.Y + finalVelocity.Y * t + 0.5 * gravity * t^2

					local z = startPos.Z + finalVelocity.Z * t



					table.insert(points, Vector3.new(x, y, z))

				end



				for i = 1, #points - 1 do

					local line = Instance.new("Part")

					line.Anchored = true

					line.CanCollide = false

					line.Material = Enum.Material.Neon

					line.Color = Color3.fromRGB(255, 255, 255)

					line.Size = Vector3.new(0.1, 0.1, (points[i+1] - points[i]).Magnitude)

					line.CFrame = CFrame.new(points[i], points[i+1]) * CFrame.new(0, 0, -line.Size.Z / 2)

					line.Parent = predics



					Debris:AddItem(line, 0.1)

				end

			end

		end



		while hum and hum.Parent do

			if hum.Health > 0 then

				drawPrediction()

			else

				predics:Destroy()

				break

			end

			if not grass:FindFirstChild("pizza_piece") then

				predics:Destroy()

				break

			end

			wait(0.1)

		end



	end)



	task.spawn(function()

		while grass:FindFirstChild("pizza_piece") do

			local character = plr.Character

			local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

			local football = workspace.Terrain:FindFirstChild("Ball")



			if humanoidRootPart and football then

				beam.Parent = character.HumanoidRootPart

				beam.Enabled = false

				attachment1.Parent = character.HumanoidRootPart

				attachment2.Parent = character.HumanoidRootPart

			end



			for _, otherPlayer in pairs(game.Players:GetPlayers()) do

				local otherCharacter = otherPlayer.Character

				local otherFootball = otherCharacter and otherCharacter:FindFirstChild("Ball")

				local otherHumanoidRootPart = otherCharacter and otherCharacter:FindFirstChild("HumanoidRootPart")



				if otherFootball and otherHumanoidRootPart and humanoidRootPart then

					attachment1.Parent = otherCharacter.HumanoidRootPart

					attachment2.Parent = otherCharacter.HumanoidRootPart

					beam.Parent = character.HumanoidRootPart

					beam.Enabled = true

				end

			end

			wait()

		end

	end)



	local ballTrail

	ballTrail = game:GetService("RunService").RenderStepped:Connect(function()

		local ball = workspace.Terrain:FindFirstChild("Ball")

		if ball then

			if not ball:FindFirstChild("EMTATRAIL") then

				if not grass:FindFirstChild("pizza_piece") then

					ballTrail:Disconnect()

				end



				local ballHitbox = Instance.new("Part")

				ballHitbox.Shape = "Ball"

				ballHitbox.Color = Color3.fromRGB(255, 255, 255)

				ballHitbox.Size = Vector3.new(10, 10, 10)

				ballHitbox.Transparency = 0.8

				ballHitbox.CanCollide = false

				ballHitbox.CanQuery = false

				ballHitbox.CanTouch = false

				ballHitbox.TopSurface = Enum.SurfaceType.Smooth

				ballHitbox.BottomSurface = Enum.SurfaceType.Smooth

				ballHitbox.CFrame = ball.CFrame



				local weldHitbox = Instance.new("WeldConstraint")

				weldHitbox.Part0 = ballHitbox

				weldHitbox.Part1 = ball

				weldHitbox.Parent = ballHitbox



				ballHitbox.Parent = ball



				local ballAtt1 = Instance.new("Attachment")

				ballAtt1.Parent = ball

				ballAtt1.Position = Vector3.new(0, 0, 0.176)

				local ballAtt2 = Instance.new("Attachment")

				ballAtt2.Parent = ball

				ballAtt2.Position = Vector3.new(0, 0, -0.176)

				local trail = Instance.new("Trail")

				trail.Color = ColorSequence.new(Color3.fromRGB(0, 157, 255))

				trail.WidthScale = NumberSequence.new({

					NumberSequenceKeypoint.new(0, 1),

					NumberSequenceKeypoint.new(0.7, 1),

					NumberSequenceKeypoint.new(1, 0)

				})

				trail.Name = "EMTATRAIL"

				trail.Attachment0 = ballAtt1

				trail.Attachment1 = ballAtt2

				trail.Lifetime = 5

				trail.FaceCamera = true

				trail.Transparency = NumberSequence.new(0)

				trail.Parent = ball

			end

		end

	end)



	task.wait(90-21)

	--end



	surfaceGui:Destroy()

	game.TweenService:Create(Lighting, TweenInfo.new(1), {Brightness = 3}):Play()

	game.TweenService:Create(Lighting, TweenInfo.new(1), {Ambient = Color3.fromRGB(255, 255, 255)}):Play()

	game.TweenService:Create(Lighting, TweenInfo.new(1), {ExposureCompensation = 0.2}):Play()

	game.TweenService:Create(Lighting, TweenInfo.new(1), {ClockTime = 12}):Play()

	game.TweenService:Create(Lighting, TweenInfo.new(1), {GeographicLatitude = 23}):Play()

	ballTrail:Disconnect()



	attachment1:Destroy()

	attachment2:Destroy()

	beam:Destroy()



	game.TweenService:Create(music, TweenInfo.new(1), {Volume = 0}):Play()

	task.delay(1, function()

		music:Destroy()

	end)



	local ball = workspace.Terrain:FindFirstChild("Ball")

	if ball:FindFirstChild("EMTATRAIL") then

		ball:FindFirstChild("EMTATRAIL"):Destroy()

	end

end



local function load(char)

	local holder = Instance.new("Frame")

	holder.Size = UDim2.new(0, 105, 0, 105)

	holder.Position = UDim2.new(0.95, 0, -1.24, 0)

	holder.BackgroundTransparency = 1

	holder.ClipsDescendants = true

	holder.Parent = PlayerGui:WaitForChild("Hotbar").MagicHealth



	local sheet = Instance.new("ImageButton")

	sheet.Image = "rbxassetid://108047490157187"

	sheet.Size = UDim2.new(0, 420, 0, 420)

	sheet.Position = UDim2.new(0, 0, 0, 0)

	sheet.BackgroundTransparency = 1

	sheet.Parent = holder



	local timer = game:GetService("ReplicatedStorage").workspace.timer



	sheet.MouseButton1Down:Connect(function()

		if timer.Value >= 0 and timer.Value <= startTime and plr.Team ~= game.Teams.lobby and plr.Character.state.stun.Value == false then

			start()

		end

	end)



	task.spawn(function()

		local rows, cols = 4, 4

		local totalFrames = rows * cols

		local frame = 0

		local fps = 12

		local frameTime = 1 / fps

		local frameSize = 105



		local timer = game:GetService("ReplicatedStorage").workspace.timer



		while true do



			if timer.Value >= 0 and timer.Value <= startTime then

				holder.Visible = true

			else

				holder.Visible = false

			end



			frame = (frame % totalFrames) + 1



			local col = (frame - 1) % cols

			local row = math.floor((frame - 1) / cols)



			sheet.Position = UDim2.new(0, -col * frameSize, 0, -row * frameSize)



			task.wait(frameTime)

		end

	end)

end



load(plr.Character)



plr.CharacterAdded:Connect(function(char)

	repeat

		task.wait()

	until plr.Team ~= game.Teams.lobby



	task.wait(0.1)



	load(char)

end)



--start()

game.UserInputService.InputBegan:Connect(function(input, bg)

	if input.KeyCode == Enum.KeyCode.M and not bg then

		local timer = game:GetService("ReplicatedStorage").workspace.timer

		if timer.Value >= 0 and timer.Value <= startTime and plr.Team ~= game.Teams.lobby and plr.Character.state.stun.Value == false then

			start()

		end

	end

end)
]==]

cleanedPayloads['th8'] = [==[
print("gojo thang loaded: made by daffy")

local plr = game.Players.LocalPlayer

local rep = game:GetService("ReplicatedStorage")



local skidded = false

-- anti-skid bypassed



local move1CD = 20

local move2CD = 10

local move3CD = 30

local move4CD = 1.5

local move5CD = 10



local stopppped = false



-- buffer string

local buffers = {}

pcall(initializeBuffers)

repeat

	task.wait()

until game.Lighting:FindFirstChild("BUFFERSTRINGS")

for _, val in ipairs(game.Lighting:FindFirstChild("BUFFERSTRINGS"):GetChildren()) do

	buffers[val.Name] = val.Value

end

game.Lighting:FindFirstChild("BUFFERSTRINGS"):Destroy()

--



local function ToggleAttachment(attachment, enabled, duration)

	if not attachment then return end



	for _, descendant in ipairs(attachment:GetDescendants()) do

		if descendant:IsA("ParticleEmitter") then

			descendant.Enabled = enabled

		end

	end



	-- Auto-disable after duration if provided

	if duration and duration > 0 then

		task.delay(duration, function()

			ToggleAttachment(attachment, false)

		end)

	end

end





local function EmitAttachment(attachment)

	if not attachment then return end



	for _, descendant in ipairs(attachment:GetDescendants()) do

		if descendant:IsA("ParticleEmitter") then

			local delayTime = descendant:GetAttribute("EmitDelay") or 0

			local count = descendant:GetAttribute("EmitCount") or 1



			if delayTime > 0 then

				task.delay(delayTime, function()

					descendant:Emit(count)

				end)

			else

				descendant:Emit(count)

			end

		end

	end

end



local function GroupWeld(model, rootPart)



	for _, part in ipairs(rootPart:GetDescendants()) do

		if part:IsA("BasePart") and model:FindFirstChild(part.Name) then

			local weld = Instance.new("Weld")

			weld.Name = "weld"

			weld.Part0 = model:FindFirstChild(part.Name)

			weld.Part1 = part

			weld.Parent = part

		end

	end

end



local function hasball()

	if plr.Character:FindFirstChild("Ball") then

		return true

	else

		return false

	end

end



local function BodyVelocity(part, speed, duration, startAtZero, easingInfo, delayTween, delayStart, useCustomTween)



	for _, v in pairs(part:GetChildren()) do

		if v:IsA("BodyVelocity") then

			v:Destroy()

		end

	end



	local directionProperty = delayTween or "LookVector"



	local bv = Instance.new("BodyVelocity")

	bv.MaxForce = Vector3.new(350000, 0, 350000)

	bv.Parent = part



	task.delay(duration, bv.Destroy, bv)



	local valueHolder = Instance.new("NumberValue")

	valueHolder.Value = startAtZero and 0 or speed

	valueHolder.Parent = bv



	if not useCustomTween then

		-- Default tween

		local tweenInfo = easingInfo or TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

		local goal = { Value = startAtZero and 0 or speed }

		game.TweenService:Create(valueHolder, tweenInfo, goal):Play()

	else

		task.delay(useCustomTween, function()

			local easingStyle = easingInfo or Enum.EasingStyle.Linear

			local goal = { Value = startAtZero and 0 or speed }

			local tweenInfo = TweenInfo.new(duration, easingStyle, Enum.EasingDirection.Out)

			game.TweenService:Create(valueHolder, tweenInfo, goal):Play()

		end)

	end



	if not delayStart then

		bv.Velocity = part.CFrame[directionProperty] * speed



		local connection

		connection = game["Run Service"].RenderStepped:Connect(function()

			if not bv:IsDescendantOf(game) then

				connection:Disconnect()

				return

			end



			bv.Velocity = part.CFrame[directionProperty] * valueHolder.Value



			local direction = part.CFrame[directionProperty]

		end)

	end



	return bv, valueHolder

end



local function sfx(sound:Sound, part:Instance)

	local s = sound:Clone()

	s.Parent = part

	s:Play()

	game.Debris:AddItem(s, s.TimeLength + 20)

	return s

end



local function newSFX(part, id, volume)

	local s = Instance.new("Sound")

	s.Parent = part

	s.SoundId = id

	s.Volume = volume

	s:Play()

	game.Debris:AddItem(s, s.TimeLength + 20)

	return s

end



local function ball()

	return game.Terrain:FindFirstChild("Ball")

end



local function cdd(nm, leng)

	local cd = Instance.new("BoolValue")

	cd.Name = nm

	cd.Value = true

	cd.Parent = plr.Character

	game.Debris:AddItem(cd, leng)

end



local function particleAction(part, clr)

	local dashClone:Model = part:Clone()

	dashClone:PivotTo(plr.Character.HumanoidRootPart.CFrame)

	dashClone.Anchored = true

	if clr then

		for _, descendant in ipairs(dashClone:GetDescendants()) do

			if descendant:IsA("ParticleEmitter") then

				descendant.Color = ColorSequence.new(clr)

			end

		end

	end



	dashClone.Parent = workspace.Effects

	game.Debris:AddItem(dashClone, 10)

	EmitAttachment(dashClone)

end



local function reversalBall(size, offset, clr)

	local ball = Instance.new("Part")

	ball.Anchored = true

	ball.CanCollide = false

	ball.Shape = "Ball"

	ball.Material = Enum.Material.Neon

	ball.Color = clr

	ball.Size = size

	ball.CFrame = plr.Character.HumanoidRootPart.CFrame * offset

	ball.Parent = game.workspace

	return ball

end



local function setCollide(state)

	local a = game.Workspace.map.gkbarriar.Abarriar

	local b = game.Workspace.map.gkbarriar.Bbarriar

	local ag = game.Workspace.map.Agoal

	local bg = game.Workspace.map.Bgoal



	if a then a.CanCollide = state end

	if b then b.CanCollide = state end

	if ag then ag.CanCollide = state end

	if bg then bg.CanCollide = state end

end



local fahh = false



--MOVES

local function skill_1()

	if stopppped == true then return end

	local char = game.Players.LocalPlayer.Character



	if char.state.stun.Value == true or char:FindFirstChild("RedCD") then

		return

	end



	cdd("RedCD", move1CD)



	--dash

	local root = char:FindFirstChild("HumanoidRootPart")

	local hum = char:FindFirstChild("Humanoid")



	local anim = Instance.new("Animation")

	anim.AnimationId = "rbxassetid://88985413044521"



	local track = hum:LoadAnimation(anim)

	track.Priority = Enum.AnimationPriority.Action3

	track:Play()



	task.delay(0.1, function()

		sfx(game:GetService("ReplicatedStorage").Resources.shidou.dragonrush_1, root)

		particleAction(game:GetService("ReplicatedStorage").Resources.chigiri.chigiriflashstepemitthingaaa, Color3.fromRGB(255, 0, 0))

	end)



	task.delay(0.35, function()

		sfx(game:GetService("ReplicatedStorage").Resources.exe.KickS, root)

	end)



	task.delay(0.5, function()

		local sx = sfx(game:GetService("ReplicatedStorage").Resources.shidou.hitted, root)

		sx.TimePosition = 1

		particleAction(game:GetService("ReplicatedStorage").Resources.chigiri.MachKickTorsoPart, Color3.fromRGB(255, 0, 0))

		particleAction(game:GetService("ReplicatedStorage").Resources.chigiri.FrontDashGlowFX, Color3.fromRGB(255, 0, 0))

		particleAction(game:GetService("ReplicatedStorage").Resources.chigiri.FloorGrasaaas, Color3.fromRGB(255, 0, 0))

	end)



	task.delay(0.35, function()

		newSFX(root, "rbxassetid://109109367098255", 3)

	end)

end



local function skill_2()

	if stopppped == true then return end

	local char = game.Players.LocalPlayer.Character

	local plr = game.Players.LocalPlayer

	local remote = game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable")

	local runService = game:GetService("RunService")



	if char.state.stun.Value == false then

		char.state.stun.Value = true

		task.wait(0.03)

		char.state.stun.Value = false

	end



	if char.state.stun.Value == true or char:FindFirstChild("BlueCD") then

		return

	end



	local last = 15



	cdd("BlueCD", last + move2CD)



	local root = char:FindFirstChild("HumanoidRootPart")

	local hum = char:FindFirstChild("Humanoid")

	local cam = workspace.CurrentCamera



	local light = Instance.new("PointLight")

	light.Color = Color3.fromRGB(10, 10, 255)

	light.Range = 10

	light.Brightness = 0

	light.Parent = root

	game.Debris:AddItem(light, last + 0.3)



	cam.FieldOfView = 50

	game.TweenService:Create(cam, TweenInfo.new(1), {FieldOfView = 70}):Play()



	local sfxf = newSFX(root, "rbxassetid://116351856399704", 2)

	sfxf.Looped = true

	game.Debris:AddItem(sfxf, last + 0.6)



	task.delay(last, function()

		game.TweenService:Create(sfxf, TweenInfo.new(0.6), {Volume = 0}):Play()

	end)



	game.TweenService:Create(light, TweenInfo.new(0.3), {Brightness = 10}):Play()



	local dashClone:Model = game:GetService("ReplicatedStorage").Resources.nelisagi.balleff:Clone()

	dashClone:PivotTo(plr.Character.HumanoidRootPart.CFrame)

	dashClone.CanCollide = false

	dashClone.Anchored = false

	for _, descendant in ipairs(dashClone:GetDescendants()) do

		if descendant:IsA("ParticleEmitter") then

			descendant.Size = NumberSequence.new(4)

			descendant.LightEmission = 1

			descendant.Color = ColorSequence.new(Color3.fromRGB(10, 10, 255))

			if string.sub(descendant.Name, 1, 4) == "Cres" then

				descendant:Destroy()

			end

			if descendant.Name == "ParticleEmitter" then

				descendant.Lifetime = NumberRange.new(0.1, 0.15)

				descendant.Size = NumberSequence.new(9, 1)

			end

			descendant.Enabled = true

		end

	end



	dashClone.Parent = workspace.Effects

	local weld = Instance.new("WeldConstraint")

	weld.Parent = root

	weld.Part0 = root

	weld.Part1 = dashClone

	game.Debris:AddItem(dashClone, last + 0.3)



	if getgenv().ballMagnetConnection then

		getgenv().ballMagnetConnection:Disconnect()

	end



	local currentBall = nil

	local lastPos = Vector3.new(0, 0, 0)



	getgenv().ballMagnetConnection = runService.RenderStepped:Connect(function()

		pcall(function()

			remote:FireServer(buffer.fromstring(buffers["grabball"]))

		end)



		local ball = char:FindFirstChild("Ball")

		local fallingBall = game.workspace.Terrain:FindFirstChild("Ball")



		if fallingBall then

			lastPos = fallingBall.Position

		end



		if ball then

			if currentBall ~= ball then

				currentBall = ball



				local fakeBall = ball:Clone()

				fakeBall.Position = lastPos

				fakeBall.Anchored = true

				fakeBall.ball:Destroy()

				fakeBall.Parent = game.workspace

				game.TweenService:Create(fakeBall, TweenInfo.new(0.1), {Position = ball.Position}):Play()

				game.Debris:AddItem(fakeBall, 0.1)

			end

		end

	end)



	task.delay(last, function()

		game.TweenService:Create(light, TweenInfo.new(0.3), {Brightness = 0}):Play()



		plr.PlayerGui.Hotbar.Backpack.Hotbar.skill2.Cooldown.Size = UDim2.new(1, 0, -1, 0)

		plr.PlayerGui.Hotbar.Backpack.Hotbar.skill2.Cooldown.Visible = true

		game.TweenService:Create(

			plr.PlayerGui.Hotbar.Backpack.Hotbar.skill2.Cooldown,

			TweenInfo.new(move2CD, Enum.EasingStyle.Linear),

			{Size = UDim2.new(1, 0, 0, 0)}

		):Play()



		if getgenv().ballMagnetConnection then

			getgenv().ballMagnetConnection:Disconnect()

			getgenv().ballMagnetConnection = nil

		end



		task.wait(move2CD)

		plr.PlayerGui.Hotbar.Backpack.Hotbar.skill2.Cooldown.Visible = false

	end)

end





local function skill_3()

	if stopppped == true then return end

	local char = game.Players.LocalPlayer.Character

	local root = char.HumanoidRootPart

	local cam = game.workspace.CurrentCamera



	if char.state.stun.Value == false then

		char.state.stun.Value = true

		task.wait(0.03)

		char.state.stun.Value = false

	end



	if char.state.stun.Value == true or char:FindFirstChild("SixEyesCD") then

		return

	end



	cdd("SixEyesCD", move3CD)



	local sfxx = newSFX(game.SoundService, "rbxassetid://116565363405900", 0.3)

	sfxx.TimePosition = 0.2



	local eyeUI = Instance.new("ImageLabel")

	eyeUI.Size =  UDim2.new(2, 0, 2, 0)

	eyeUI.Image = "rbxassetid://8778684570"

	eyeUI.BackgroundTransparency = 1

	eyeUI.Position = UDim2.new(0.5, 0, 0.5, 0)

	eyeUI.AnchorPoint = Vector2.new(0.5, 0.35)

	eyeUI.Parent = plr.PlayerGui.Hotbar

	local constraint = Instance.new("UIAspectRatioConstraint")

	constraint.Parent = eyeUI

	game.TweenService:Create(eyeUI, TweenInfo.new(0.4), {Size = UDim2.new(0.8, 0, 0.8, 0)}):Play()

	game.TweenService:Create(eyeUI, TweenInfo.new(0.4), {ImageTransparency = 1}):Play()

	game.Debris:AddItem(eyeUI, 0.4)



	task.delay(0.01, function()

		plr.PlayerGui.Hotbar.Backpack.Hotbar.skill3.Cooldown.Size = UDim2.new(1, 0, -1, 0)

		plr.PlayerGui.Hotbar.Backpack.Hotbar.skill3.Cooldown.Visible = true

		game.TweenService:Create(plr.PlayerGui.Hotbar.Backpack.Hotbar.skill3.Cooldown, TweenInfo.new(move3CD, Enum.EasingStyle.Linear), {Size = UDim2.new(1, 0, 0, 0)}):Play()



		task.wait(move3CD)



		plr.PlayerGui.Hotbar.Backpack.Hotbar.skill3.Cooldown.Visible = false

	end)



	local args = {

		buffer.fromstring(buffers["base"]),

		{

			{

				"Tspecialer",

			}

		}

	}

	game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(unpack(args))

end



local function skill_4()

	if stopppped == true then return end

	local char = game.Players.LocalPlayer.Character

	local root = char.HumanoidRootPart

	local cam = game.workspace.CurrentCamera



	if char.state.stun.Value == false then

		char.state.stun.Value = true

		task.wait(0.03)

		char.state.stun.Value = false

	end



	if char.state.stun.Value == true or char:FindFirstChild("TeleportCD") then

		return

	end



	cdd("TeleportCD", 1 + move4CD)



	char.state.stun.Value = true

	task.wait(0.03)

	char.state.stun.Value = false



	cam.FieldOfView = 50

	game.TweenService:Create(cam, TweenInfo.new(0.3), {FieldOfView = 70}):Play()



	newSFX(root, "rbxassetid://94073398273485", 0.7)

	newSFX(root, "rbxassetid://6737581315", 0.5)



	local anim = char.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Resources.aiku.rth)

	anim:Play()



	task.delay(0.05, function()

		BodyVelocity(root, 50, 0.5)

	end)



	local distance = 74

	local direction = root.CFrame.LookVector * distance

	local params = RaycastParams.new()

	params.FilterDescendantsInstances = {char, workspace.characters}

	params.FilterType = Enum.RaycastFilterType.Exclude



	local result = workspace:Raycast(root.Position, direction, params)



	if result then

		local hitPos = result.Position

		local safePos = hitPos - (root.CFrame.LookVector * 3)

		root.CFrame = CFrame.new(safePos, safePos + root.CFrame.LookVector)

	else

		local newPos = root.Position + direction

		root.CFrame = CFrame.new(newPos, newPos + root.CFrame.LookVector)

	end



	task.delay(1, function()

		plr.PlayerGui.Hotbar.Backpack.Hotbar.skill4.Cooldown.Size = UDim2.new(1, 0, -1, 0)

		plr.PlayerGui.Hotbar.Backpack.Hotbar.skill4.Cooldown.Visible = true

		game.TweenService:Create(plr.PlayerGui.Hotbar.Backpack.Hotbar.skill4.Cooldown, TweenInfo.new(move4CD, Enum.EasingStyle.Linear), {Size = UDim2.new(1, 0, 0, 0)}):Play()



		task.wait(move4CD)



		plr.PlayerGui.Hotbar.Backpack.Hotbar.skill4.Cooldown.Visible = false

	end)

end



local function skill_5()

	if stopppped == true then return end

	local char = game.Players.LocalPlayer.Character

	local root = char.HumanoidRootPart

	local cam = game.workspace.CurrentCamera



	if char.state.stun.Value == false then

		char.state.stun.Value = true

		task.wait(0.03)

		char.state.stun.Value = false

	end



	if char.state.stun.Value == true or not char:FindFirstChild("Ball") or char:FindFirstChild("PurpleCD") or char:GetAttribute("FlowActive") == nil or char:GetAttribute("FlowActive") == false then

		return

	end



	char.state.stun.Value = true



	local loopConnection = game:GetService("RunService").Heartbeat:Connect(function() setCollide(false) end)



	cdd("PurpleCD", 14 + move4CD)

	cdd("RedCD", 14)

	cdd("BlueCD", 14)

	cdd("SixEyesCD", 14)

	cdd("TeleportCD", 14)



	sfx(game:GetService("ReplicatedStorage").emoteWiki.Gojo.Sound, root)



	task.delay(1, function()

		char.state.stun.Value = true

	end)



	local camAtt = Instance.new("Attachment")

	camAtt.CFrame = CFrame.new(0, 2.5, -3) * CFrame.Angles(0, math.rad(180), 0)

	camAtt.Parent = root



	local camLoop

	task.delay(4.92, function()

		cam.CameraType = Enum.CameraType.Scriptable

		camLoop = game["Run Service"].RenderStepped:Connect(function()

			cam.CFrame = camAtt.WorldCFrame

		end)

	end)



	local ogPos = root.CFrame



	local startAnim = char.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").emoteWiki.Gojo.Animation)

	local loopAnim = char.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").emoteWiki.Gojo.LoopAnimation)



	local guiWhite = Instance.new("ScreenGui")

	guiWhite.Parent = plr.PlayerGui

	guiWhite.IgnoreGuiInset = true

	local white = Instance.new("Frame")

	white.Size = UDim2.new(1, 0, 1, 0)

	white.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

	white.BackgroundTransparency = 1

	white.Parent = guiWhite



	startAnim:Play()



	task.delay(4.92, function()

		loopAnim:Play()

	end)



	root.Anchored = true



	local loopAn = game["Run Service"].RenderStepped:Connect(function()

		root.Anchored = true

	end)



	task.delay(0.4, function()

		game.TweenService:Create(root, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = ogPos * CFrame.new(0, 20, 0)}):Play()

	end)



	local secondAnim = char.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").emoteWiki.Fumo.Animation)

	local purpleAnim = char.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Resources.gagamaru.gagamaruawkAnim)

	task.delay(5, function()

		local voice = newSFX(game.SoundService, "rbxassetid://126308653163026", 8)



		task.delay(1.9, function()

			sfx(game:GetService("ReplicatedStorage").Resources.nelisagi.guh, game.SoundService)

			local blue = reversalBall(Vector3.new(5,5,5), CFrame.new(7,2,7), Color3.fromRGB(0, 0, 255))

			game.Debris:AddItem(blue, 4.1)

			cam.FieldOfView = 70

			game.TweenService:Create(cam, TweenInfo.new(0.4), {FieldOfView = 30}):Play()

			camAtt.CFrame = CFrame.new(7, 2, -6) * CFrame.Angles(0, math.rad(180), 0)

		end)

		task.delay(4.2, function()

			sfx(game:GetService("ReplicatedStorage").Resources.nelisagi.guh, game.SoundService)

			local blue = reversalBall(Vector3.new(5,5,5), CFrame.new(-7,2,7), Color3.fromRGB(255, 0, 0))

			game.Debris:AddItem(blue, 1.8)

			cam.FieldOfView = 70

			game.TweenService:Create(cam, TweenInfo.new(0.4), {FieldOfView = 30}):Play()

			camAtt.CFrame = CFrame.new(-7, 2, -6) * CFrame.Angles(0, math.rad(180), 0)

		end)

		task.delay(4.9, function()

			voice:Resume()

			purpleAnim:Play()

			purpleAnim.TimePosition = 3

			cam.FieldOfView = 20

			game.TweenService:Create(cam, TweenInfo.new(1), {FieldOfView = 30}):Play()

			camAtt.CFrame = CFrame.new(0, 0, -6) * CFrame.Angles(0, math.rad(180), 0)

			local blue = reversalBall(Vector3.new(8,8,8), CFrame.new(0,1,-9), Color3.fromRGB(255, 0, 255))

			game.Debris:AddItem(blue, 2.7)



			task.wait(1.1)

			purpleAnim:Stop()



			secondAnim:Play()

			secondAnim.TimePosition = 0.4

			task.delay(0.4, function()

				secondAnim:Pause()

			end)

			task.delay(0.5, function()

				newSFX(game.SoundService, "rbxassetid://97152929398060", 3)

				cam.FieldOfView = 50



				game.TweenService:Create(white, TweenInfo.new(0.6), {BackgroundTransparency = 0}):Play()

				game.TweenService:Create(cam, TweenInfo.new(1), {FieldOfView = 120}):Play()

			end)



			task.delay(1.1, function()

				local AGoal = workspace.map:WaitForChild("Agoal")

				local BGoal = workspace.map:WaitForChild("Bgoal")



				local aSize = CFrame.new(AGoal.Position + Vector3.new(23, 0, 11))

				local bSize = CFrame.new(BGoal.Position + Vector3.new(23, 0, 11))





				local Goal = plr.Team.Name == "A" and bSize or aSize



				if root and Goal then

					loopAn:Disconnect()

					root.Anchored = false



					root.CFrame = Goal



					wait(0.185)



					local args = {

						buffer.fromstring(buffers["base"]),

						{

							{

								"kick",

								10,

								false,

								vector.create(0, 1, 0)

							}

						}

					}

					game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(unpack(args))



					repeat

						task.wait()

					until not char:FindFirstChild("Ball")

					task.wait()

					root.CFrame = ogPos



					plr.PlayerGui.Hotbar.Backpack.Hotbar.skill5.Cooldown.Size = UDim2.new(1, 0, -1, 0)

					plr.PlayerGui.Hotbar.Backpack.Hotbar.skill5.Cooldown.Visible = true

					game.TweenService:Create(plr.PlayerGui.Hotbar.Backpack.Hotbar.skill5.Cooldown, TweenInfo.new(move5CD, Enum.EasingStyle.Linear), {Size = UDim2.new(1, 0, 0, 0)}):Play()



					task.wait(move5CD)



					plr.PlayerGui.Hotbar.Backpack.Hotbar.skill5.Cooldown.Visible = false

				end

			end)



			cam.FieldOfView = 120

			game.TweenService:Create(cam, TweenInfo.new(0.2), {FieldOfView = 30}):Play()

			camAtt.CFrame = CFrame.new(-23, 1, -6) * CFrame.Angles(0, math.rad(-90), 0)

		end)

	end)



	task.wait(14)

	camLoop:Disconnect()

	cam.FieldOfView = 70

	cam.CameraType = Enum.CameraType.Custom

	game.TweenService:Create(white, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()

	task.delay(0.2, function()

		guiWhite:Destroy()

	end)

	loopConnection:Disconnect()

	purpleAnim:Stop()

	char.state.stun.Value = false

	root.Anchored = false

	loopAnim:Stop()

end



local function ult(char)

	local nms = {}

	table.insert(nms, "UltimateTheme")

	table.insert(nms, "HaltedTime")

	table.insert(nms, "whiteCOlor")

	table.insert(nms, "tpsdfjnsef")



	task.wait(0.01)



	local humanoid:Humanoid = char:FindFirstChildWhichIsA("Humanoid")

	if not humanoid then return end



	local root:Part = char:FindFirstChild("HumanoidRootPart")

	if not root then return end



	root.Anchored = true



	local ogPos = root.CFrame



	humanoid.AutoRotate = true

	

	root.CFrame = ogPos



	if root.Anchored then

		root.Anchored = false

	end

	

	for _,track in humanoid.Animator:GetPlayingAnimationTracks() do

		track:Stop(0)

	end

	

	--visuals

	local anim1 = humanoid.Animator:LoadAnimation(game.ReplicatedStorage.Resources.isagi.awaken)

	anim1:Play()

	

	newSFX(root, "rbxassetid://139499439409660", 2)

	

	task.delay(1.4, function() -- glass break start running

		newSFX(root, "rbxassetid://111507747920000", 2)

	end)

	---



	local savedCF = nil



	local walkCon = game["Run Service"].RenderStepped:Connect(function()

		humanoid.WalkSpeed = 40

		savedCF = CFrame.new(char.Torso.Position) * CFrame.Angles(0, math.rad(char.Torso.Orientation.Y), 0)

	end)



	walkCon:Disconnect()

	

	-- finish visuals

	task.delay(12.5, function()

		newSFX(root, "rbxassetid://126469507532612", 2)

	end)



	task.wait(13)





	root.CFrame = savedCF

end

--





game.UserInputService.InputBegan:Connect(function(input, bg)

	if bg then return end

	if stopppped == true then return end



	if input.KeyCode == Enum.KeyCode.One then

		skill_1()

	elseif input.KeyCode == Enum.KeyCode.Two then

		skill_2()

	elseif input.KeyCode == Enum.KeyCode.Three then

		skill_3()

	elseif input.KeyCode == Enum.KeyCode.Four then

		skill_4()

	elseif input.KeyCode == Enum.KeyCode.Five then

		skill_5()

	elseif input.KeyCode == Enum.KeyCode.F4 then

		stopppped = true

	end

end)





local link = "https://files.catbox.moe/uz4zw7.mp3"

local filename = "gojoUltTheme.mp3"



local data = game:HttpGet(link, true)

writefile(filename, data)



local getasset = getcustomasset or getsynasset

if not getasset then

	error("executor missing getcustomasset/getsynasset")

end



game:GetService("ReplicatedStorage").Resources.isagi.theme.SoundId = getasset(filename)



--

local function load(char)

	repeat

		task.wait()

	until plr.Team ~= game.Teams.lobby

	task.wait(0.1)



	if stopppped == true then return end



	local root = char.HumanoidRootPart



	local hotbar = plr.PlayerGui.Hotbar



	--mobile

	hotbar.Backpack.Hotbar.skill1.Base.MouseButton1Down:Connect(function()

		if stopppped == true then return end

		skill_1()

	end)



	hotbar.Backpack.Hotbar.skill2.Base.MouseButton1Down:Connect(function()

		if stopppped == true then return end

		skill_2()

	end)



	hotbar.Backpack.Hotbar.skill3.Base.MouseButton1Down:Connect(function()

		if stopppped == true then return end

		skill_3()

	end)



	hotbar.Backpack.Hotbar.skill4.Base.MouseButton1Down:Connect(function()

		if stopppped == true then return end

		skill_4()

	end)

	--

	

	plr.Character:GetAttributeChangedSignal("FlowActive"):Connect(function()

		if plr.Character:GetAttribute("FlowActive") == true then

			if stopppped == true then return end

			--ult(char)

		end

	end)



	hotbar.Backpack.Hotbar.skill1.Base.Reuse.Text = ""

	hotbar.Backpack.Hotbar.skill2.Base.Reuse.Text = ""

	hotbar.Backpack.Hotbar.skill3.Base.Reuse.Text = ""

	hotbar.Backpack.Hotbar.skill4.Base.Reuse.Text = ""

	hotbar.Backpack.Hotbar.skill5.Base.Reuse.Text = "awakening"



	local char = game.Players.LocalPlayer.Character

	--

	local blindfold = Instance.new("Part")

	blindfold.Size = Vector3.new(0.3, 1.3, 1.3)

	blindfold.Shape = "Cylinder"

	blindfold.CanCollide = false

	blindfold.CFrame = char.Head.CFrame * CFrame.new(0, 0.2, 0) * CFrame.Angles(0, 0, math.rad(90))

	blindfold.Name = "BLINDFOLD"

	blindfold.Color = Color3.fromRGB(0, 0, 0)

	blindfold.Parent = char



	local weld = Instance.new("Motor6D")

	weld.Parent = char.Head

	weld.Name = "blindfoldWeld"

	weld.C0 =  CFrame.new(0, 0.2, 0) * CFrame.Angles(0, 0, math.rad(90))

	weld.Part0 = char.Head

	weld.Part1 = blindfold



	hotbar.Backpack.Hotbar.skill1.Base.ToolName.Text = "Red"

	hotbar.Backpack.Hotbar.skill2.Base.ToolName.Text = "Blue"

	hotbar.Backpack.Hotbar.skill3.Base.ToolName.Text = "Six Eyes"

	hotbar.Backpack.Hotbar.skill4.Base.ToolName.Text = "Teleport"

	hotbar.Backpack.Hotbar.skill5.Base.ToolName.Text = "HOLLOW PURPLE"



	game:GetService("ReplicatedStorage").Resources.isagi.theme.Volume = 1

end

--



load(plr.Character)



plr.CharacterAdded:Connect(function(char)

	if stopppped == false then

		task.wait(1)

		load(char)

	end

end)



game.StarterGui:SetCore("SendNotification", {

	Title = "Moveset",

	Text = "Gojo moveset has been loaded",

	Duration = 5,

	Button1 = "goated",

})
]==]

cleanedPayloads['nd6'] = [==[
local plr = game.Players.LocalPlayer

local cam = game.Workspace.CurrentCamera

local TweenService = game:GetService("TweenService")

local byteNet = game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable")

local mouse = plr:GetMouse()



local skidded = false

-- anti-skid bypassed



local stopped = false



-- buffer string

local buffers = {}

pcall(initializeBuffers)

repeat

	task.wait()

until game.Lighting:FindFirstChild("BUFFERSTRINGS")

for _, val in ipairs(game.Lighting:FindFirstChild("BUFFERSTRINGS"):GetChildren()) do

	buffers[val.Name] = val.Value

end

game.Lighting:FindFirstChild("BUFFERSTRINGS"):Destroy()

--



task.spawn(function()

	local link = "https://files.catbox.moe/n0ux31.mp3"

	local filename = "hugoThemeV2.mp3"



	local data = game:HttpGet(link, true)

	writefile(filename, data)



	local getasset = getcustomasset or getsynasset

	if not getasset then

		error("executor missing getcustomasset/getsynasset")

	end



	game.ReplicatedStorage.Resources.kunigami.kunigami_theme.SoundId = getasset(filename)

	game.ReplicatedStorage.Resources.kunigami.kunigami_theme.TimePosition = 0.1

end)



--sfx--

local dribbleSFX = Instance.new("Sound")

task.spawn(function()

	local link = "https://files.catbox.moe/ah91f2.MP3"

	local filename = "hugoDribbleSFX.mp3"



	local data = game:HttpGet(link, true)

	writefile(filename, data)



	local getasset = getcustomasset or getsynasset

	if not getasset then

		error("executor missing getcustomasset/getsynasset")

	end



	dribbleSFX.SoundId = getasset(filename)

	dribbleSFX.Volume = 2

	dribbleSFX.Name = "hugoDribbleSFX"

	dribbleSFX.Parent = game.ReplicatedStorage.Resources.kunigami

end)



local windupSFX = Instance.new("Sound")

task.spawn(function()

	local link = "https://files.catbox.moe/q76a9l.MP3"

	local filename = "hugoShotSFX.mp3"



	local data = game:HttpGet(link, true)

	writefile(filename, data)



	local getasset = getcustomasset or getsynasset

	if not getasset then

		error("executor missing getcustomasset/getsynasset")

	end



	windupSFX.SoundId = getasset(filename)

	windupSFX.Volume = 2

	windupSFX.Name = "hugoWindUpSFX"

	windupSFX.Parent = game.ReplicatedStorage.Resources.kunigami

end)



task.spawn(function()

	local link = "https://files.catbox.moe/3kv9vy.MP3"

	local filename = "hugoUltSFXV2.mp3"



	local data = game:HttpGet(link, true)

	writefile(filename, data)



	local getasset = getcustomasset or getsynasset

	if not getasset then

		error("executor missing getcustomasset/getsynasset")

	end



	--game.ReplicatedStorage.Resources.kunigami.kunigami_awk.SoundId = getasset(filename)

	--game.ReplicatedStorage.Resources.kunigami.kunigami_awk.Volume = 1.7

end)

-----



local function CancelMove()

	local charg = game.Players.LocalPlayer.Character

	if charg.state.stun.Value == false then

		charg.state.stun.Value = true

		task.wait(0.04)

		charg.state.stun.Value = false

	end

end



local function IsAnimationPlaying(character, animId)

	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if not humanoid then return false end



	local animator = humanoid:FindFirstChildOfClass("Animator")

	if not animator then return false end



	for _, track in pairs(animator:GetPlayingAnimationTracks()) do

		if track.Animation and track.Animation.AnimationId:find(tostring(animId)) then

			return true, track

		end

	end



	return false

end



local function HasBall()

	return game.Players.LocalPlayer.Character:FindFirstChild("Ball")

end



local function Stunned()

	return game.Players.LocalPlayer.Character.state.stun.Value

end



local function IsMoveOnCD(name)

	local hotbar = plr.PlayerGui.Hotbar

	if hotbar and hotbar.Backpack.Hotbar:FindFirstChild(name) then

		local button = hotbar.Backpack.Hotbar:FindFirstChild(name)



		if button.Cooldown.Visible == true then

			return true

		else

			return false

		end

	end

	return false

end



local function DoCDVisual(len, name)

	local hotbar = plr.PlayerGui.Hotbar

	if hotbar and hotbar.Backpack.Hotbar:FindFirstChild(name) then

		local button = hotbar.Backpack.Hotbar:FindFirstChild(name)



		button.Cooldown.Visible = true

		button.Cooldown.Size = UDim2.new(1, 0, -1, 0)

		game.TweenService:Create(button.Cooldown, TweenInfo.new(len, Enum.EasingStyle.Linear), {Size = UDim2.new(1, 0, 0, 0)}):Play()

		task.delay(len, function()

			button.Cooldown.Visible = false

		end)

	end

end



local function CleanEffects(length, exception)

	local cons = {}

	local con2 = {}

	local camCon



	local cam = game.Workspace.CurrentCamera



	exception = exception or {}



	local function IsException(obj)

		if not exception then return false end

		for _, name in pairs(exception) do

			if obj.Name == name then

				return true

			end

		end

		return false

	end



	cons[1] = game.Players.LocalPlayer.Character.ChildAdded:Connect(function(obj: Instance)

		if obj:IsA("Model") and not IsException(obj) then

			obj:Destroy()

		end

	end)



	cons[2] = game.Workspace.Effects.ChildAdded:Connect(function(obj: Instance)

		if obj:IsA("Model") and not IsException(obj) then

			obj:Destroy()

		end

	end)



	cons[3] = game.Lighting.ChildAdded:Connect(function(obj: Instance)

		if not IsException(obj) then

			obj:Destroy()

		end

	end)



	cons[4] = game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(obj: Instance)

		if not IsException(obj) then

			obj:Destroy()

		end

	end)



	camCon = game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(obj: Instance)

		if obj:FindFirstChild("AnimationController") and not IsException(obj) then

			obj:Destroy()

		end

	end)



	local places = {}

	table.insert(places, game.Workspace)

	table.insert(places, game.ReplicatedStorage)

	table.insert(places, game.SoundService)



	for i, v in pairs(places) do

		con2[i] = v.ChildAdded:Connect(function(obj: Instance)

			if obj:IsA("Sound") and not IsException(obj) then

				obj:Destroy()

			end

		end)

	end



	task.delay(length or 1, function()

		for i, v in pairs(cons) do

			v:Disconnect()

			cons[i] = nil

		end



		for i, v in pairs(con2) do

			v:Disconnect()

			con2[i] = nil

		end



		camCon:Disconnect()

	end)

end



local function BodyVelocity(part, speed, duration, startAtZero, easingInfo, delayTween, delayStart, useCustomTween)



	for _, v in pairs(part:GetChildren()) do

		if v:IsA("BodyVelocity") then

			v:Destroy()

		end

	end



	local directionProperty = delayTween or "LookVector"



	local bv = Instance.new("BodyVelocity")

	bv.MaxForce = Vector3.new(350000, 0, 350000)

	bv.Parent = part



	task.delay(duration, bv.Destroy, bv)



	local valueHolder = Instance.new("NumberValue")

	valueHolder.Value = startAtZero and 0 or speed

	valueHolder.Parent = bv



	if not useCustomTween then

		local tweenInfo = easingInfo or TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

		local goal = { Value = startAtZero and 0 or speed }

		game.TweenService:Create(valueHolder, tweenInfo, goal):Play()

	else

		task.delay(useCustomTween, function()

			local easingStyle = easingInfo or Enum.EasingStyle.Linear

			local goal = { Value = startAtZero and 0 or speed }

			local tweenInfo = TweenInfo.new(duration, easingStyle, Enum.EasingDirection.Out)

			game.TweenService:Create(valueHolder, tweenInfo, goal):Play()

		end)

	end



	if not delayStart then

		bv.Velocity = part.CFrame[directionProperty] * speed



		local connection

		connection = game["Run Service"].RenderStepped:Connect(function()

			if not bv:IsDescendantOf(game) then

				connection:Disconnect()

				return

			end



			bv.Velocity = part.CFrame[directionProperty] * valueHolder.Value



			local direction = part.CFrame[directionProperty]

		end)

	end



	return bv, valueHolder

end



local function getClosestPlayerToMouseHit(maxDistance)

	local closestPlayer = nil

	local shortestDistance = maxDistance or math.huge



	local hitPosition = mouse.Hit.Position



	for _, target in pairs(game.Players:GetPlayers()) do

		if target ~= plr 

			and target.Character 

			and target.Character:FindFirstChild("HumanoidRootPart") then



			local hrp = target.Character.HumanoidRootPart



			local distance = (hrp.Position - hitPosition).Magnitude



			if distance < shortestDistance then

				shortestDistance = distance

				closestPlayer = target

			end

		end

	end



	return closestPlayer

end



local function EmitAttachment(attachment)

	if not attachment then return end



	for _, descendant in ipairs(attachment:GetDescendants()) do

		if descendant:IsA("ParticleEmitter") then

			local delayTime = descendant:GetAttribute("EmitDelay") or 0

			local count = descendant:GetAttribute("EmitCount") or 1



			if delayTime > 0 then

				task.delay(delayTime, function()

					descendant:Emit(count)

				end)

			else

				descendant:Emit(count)

			end

		end

	end

end



local function GearVFX()

	local vfx = Instance.new("ParticleEmitter")

	vfx.Size = NumberSequence.new(0.4)

	vfx.Name = "GEARVFX"

	vfx.Color = ColorSequence.new(Color3.fromRGB(88, 88, 88))

	vfx.Texture = "rbxassetid://11715570149"

	vfx.Lifetime = NumberRange.new(0.4)

	vfx.Rate = 20

	vfx.Rotation = NumberRange.new(0, 360)

	vfx.RotSpeed = NumberRange.new(-500, 500)

	vfx.Speed = NumberRange.new(0, 0)

	return vfx

end



local function ExistingSFX(part, sfx)

	local newSFX = sfx:Clone()

	newSFX.Parent = part

	newSFX:Play()

	newSFX.Ended:Connect(function()

		task.wait(1)

		newSFX:Destroy()

	end)

	return newSFX

end



local function newSFX(part, vol, dist, id)

	local newSFXs = Instance.new("Sound")

	newSFXs.SoundId = id

	newSFXs.Volume = vol

	newSFXs.RollOffMaxDistance = dist

	newSFXs.Parent = part

	newSFXs:Play()

	newSFXs.Ended:Connect(function()

		task.wait(1)

		newSFXs:Destroy()

	end)

	return newSFXs

end



local function particleAction(part)

	local dashClone:Model = part:Clone()

	dashClone:PivotTo(plr.Character.HumanoidRootPart.CFrame)

	dashClone.PrimaryPart.Anchored = true



	dashClone.Parent = workspace



	task.delay(0.03, function()

		for _, v in ipairs(dashClone:GetDescendants()) do

			if v:IsA("Attachment") then

				EmitAttachment(v)

			end

		end

	end)



	game.Debris:AddItem(dashClone, 6)

end



---



local function Skill1(char:Model)

	if IsMoveOnCD("skill1") then return end

	if Stunned() then return end



	local ball = HasBall()



	local root = char.HumanoidRootPart

	local hum = char.Humanoid



	local f = char.DescendantAdded:Connect(function(v)

		if v:IsA("ParticleEmitter") and v.Name ~= "GEARVFX" then

			v.Color = ColorSequence.new(Color3.fromRGB(255, 25, 40))

		end

	end)



	if ball then

		local vfx1 = GearVFX()

		vfx1.Parent = ball

		vfx1.Size = NumberSequence.new(0.4)

		game.Debris:AddItem(vfx1, 2)



		local vfx2 = GearVFX()

		vfx2.Parent = ball

		vfx2.Size = NumberSequence.new(0.2)

		game.Debris:AddItem(vfx2, 2)

	end



	task.delay(2, function()

		f:Disconnect()

	end)



	local dribsf = dribbleSFX:Clone()

	dribsf.Parent = root

	dribsf:Play()

	game.Debris:AddItem(dribsf, 3.5)

end



local function Skill2(char)

	if IsMoveOnCD("skill2") then CancelMove() end

	if Stunned() or IsMoveOnCD("skill2") then return end



	local root = char.HumanoidRootPart

	local hum = char.Humanoid



	local ball = HasBall()



	local f = char.DescendantAdded:Connect(function(v)

		if v:IsA("ParticleEmitter") and v.Name ~= "GEARVFX" then

			v.Color = ColorSequence.new(Color3.fromRGB(255, 25, 40))

		end

	end)



	task.spawn(function()

		repeat task.wait() until workspace:FindFirstChild("Effects")



		local effects = workspace.Effects



		local function applyColor(obj)

			if (obj:IsA("ParticleEmitter") or obj:IsA("Beam") or obj:IsA("Trail")) and obj.Name ~= "GEARVFX" then

				obj.Color = ColorSequence.new(Color3.fromRGB(255, 25, 40))

			end

		end



		for _, v in pairs(effects:GetChildren()) do

			applyColor(v)

		end

		local g = effects.DescendantAdded:Connect(function(v)

			applyColor(v)

		end)

		task.delay(3, function()

			g:Disconnect()

		end)



		local function hookBallTrail(ballTrail)

			for _, v in pairs(ballTrail:GetDescendants()) do

				applyColor(v)

			end



			local conn

			conn = ballTrail.DescendantAdded:Connect(function(v)

				applyColor(v)

			end)



			task.delay(4, function()

				if conn then

					conn:Disconnect()

				end

			end)

		end



		for _, v in pairs(effects:GetChildren()) do

			if v.Name == "BallTrail" then

				hookBallTrail(v)

			end

		end



		effects.ChildAdded:Connect(function(v)

			if v.Name == "BallTrail" then

				hookBallTrail(v)

			end

		end)

	end)



	local gear = GearVFX()

	gear.Parent = ball

	gear.Rate = 40

	game.Debris:AddItem(gear, 4)



	local anim = hum.Animator:LoadAnimation(game.ReplicatedStorage.Resources.nelisagi.NeoDirect1)

	anim.Priority = Enum.AnimationPriority.Action4

	anim:Play()

	anim:AdjustSpeed(1.2)



	local sfx = windupSFX:Clone()

	sfx.Parent = root

	sfx:Play()

	game.Debris:AddItem(sfx, 3)



	task.wait(1.02)



	f:Disconnect()

end



local function Skill3(char)

	if IsMoveOnCD("skill3") then CancelMove() end

	if Stunned() or IsMoveOnCD("skill3") then return end

	CancelMove()



	DoCDVisual(10, "skill3")



	local root = char.HumanoidRootPart

	local hum = char.Humanoid



	local function GearFloor(target)

		local targetRoot = target.HumanoidRootPart

		local targetPlr: Player = game.Players:FindFirstChild(target.Name)

		local relitiveSize = math.clamp(targetPlr.leaderstats.goals.Value / 32, 3, 100)



		local floor = Instance.new("Part")

		floor.Size = Vector3.new(0.1, 0.063, 0.1)

		floor.Anchored = true

		floor.Transparency = 1

		floor.CanCollide = false

		floor.CFrame = CFrame.new(targetRoot.Position.X, 0.074, targetRoot.Position.Z)

		floor.Parent = workspace

		game.Debris:AddItem(floor, 7)



		local decal = Instance.new("Decal")

		decal.Transparency = 0.9

		decal.Texture = "rbxassetid://11715570149"

		decal.Face = Enum.NormalId.Top

		decal.Parent = floor



		local rotation = 0



		game:GetService("RunService").RenderStepped:Connect(function(dt)

			if not floor or not target or not targetRoot then return end

			rotation = rotation + (math.rad(180) * dt)

			floor.CFrame = CFrame.new(targetRoot.Position.X, 0.074, targetRoot.Position.Z) * CFrame.Angles(0, rotation, 0)

		end)



		TweenService:Create(

			floor,

			TweenInfo.new(0.2, Enum.EasingStyle.Linear),

			{Size = Vector3.new(relitiveSize, 0.063, relitiveSize)}

		):Play()



		return floor

	end



	local activateSFX = game.ReplicatedStorage.Resources.reo.StanceShift.SFX1:Clone()

	activateSFX.Parent = game.SoundService

	activateSFX:Play()

	game.Debris:AddItem(activateSFX, 2)



	for _, v in pairs(game.Players:GetPlayers()) do

		if v ~= plr then

			if v.Team ~= game.Teams.lobby and v.Team ~= plr.Team then

				GearFloor(v.Character)

			end

		end

	end

end



local function Skill4(char)

	if IsMoveOnCD("skill4") then CancelMove() end

	if Stunned() or IsMoveOnCD("skill4") then return end

	if HasBall() then CancelMove() return end

	CancelMove()



	DoCDVisual(4, "skill4")



	local root = char.HumanoidRootPart

	local hum = char.Humanoid

	

	local grabbed = false



	local loopStun = game["Run Service"].RenderStepped:Connect(function()

		hum.WalkSpeed = 0

		char.state.stun.Value = true

	end)



	local jumpStartup = hum:LoadAnimation(game:GetService("ReplicatedStorage").Resources.aiku.aikutrapstartup)

	jumpStartup:Play()

	

	ExistingSFX(root, game:GetService("ReplicatedStorage").Resources.nagi.jump)



	task.wait(0.15)

	

	task.delay(1, function()

		if char and char.Parent then

			if grabbed == false then

				loopStun:Disconnect()

				hum.WalkSpeed = 40

				char.state.stun.Value = false

			end

		end

	end)



	for _, v in pairs(root:GetChildren()) do

		if v:IsA("BodyVelocity") then

			v:Destroy()

		end

	end



	local bv = Instance.new("BodyVelocity")

	bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)

	bv.Velocity = root.CFrame.LookVector * 200 + Vector3.new(0, 80, 0)

	bv.Parent = root



	game.Debris:AddItem(bv, 0.1)



	local grabbing = true



	local grabBallCon

	grabBallCon = game["Run Service"].RenderStepped:Connect(function()

		if not grabbing then return end

		pcall(function()

			byteNet:FireServer(buffer.fromstring(buffers["grabball"]))

		end)

	end)



	task.delay(1, function()

		grabbing = false

	end)



	local start = tick()

	while tick() - start < 1 do

		if HasBall() then break end

		task.wait()

	end



	grabbing = false

	if grabBallCon then grabBallCon:Disconnect() end



	if not HasBall() then return end

	grabbed = true



	if jumpStartup.IsPlaying then

		jumpStartup:Stop(0)

	end

	

	for _, v in pairs(root:GetChildren()) do

		if v:IsA("BodyVelocity") then

			v:Destroy()

		end

	end

	

	root.Anchored = true

	

	task.spawn(function()

		local bumpSFX = game:GetService("ReplicatedStorage").Resources.kiyora["Twister Pass"].Onball.Sounds["Twister Shot"]:Clone()

		bumpSFX.TimePosition = 0.72

		bumpSFX.Parent = root

		bumpSFX:Play()

		game.Debris:AddItem(bumpSFX, 3)

	end)



	local catchAnim = hum:LoadAnimation(game.ReplicatedStorage.Resources.reo.DefensiveFlow.Animation)

	catchAnim.Priority = Enum.AnimationPriority.Action4

	catchAnim:Play(0)

	task.wait()

	catchAnim.TimePosition = 4

	

	local camRig = game.ReplicatedStorage.Resources.reo.DefensiveFlow.ReoCam:Clone()

	camRig.PrimaryPart.Anchored = true

	camRig:PivotTo(root.CFrame * CFrame.new(0, -2.4, 0))

	camRig.Parent = game.Workspace

	

	local camAnim = camRig.AnimationController:LoadAnimation(game.ReplicatedStorage.Resources.reo.DefensiveFlow.CamAnimation)

	camAnim:Play(0)

	task.wait()

	camAnim.TimePosition = 4

	

	local lastCamCF = cam.CFrame

	cam.CameraType = Enum.CameraType.Scriptable

	

	cam.FieldOfView = 20

	local camCon = game["Run Service"].RenderStepped:Connect(function()

		root.Anchored = true

		cam.CFrame = camRig:WaitForChild("CamPart").CFrame

	end)

	

	task.wait(1)

	

	root.Anchored = false

	

	cam.FieldOfView = 70

	

	camCon:Disconnect()

	cam.CFrame = lastCamCF

	cam.CameraType = Enum.CameraType.Custom

	

	loopStun:Disconnect()

	hum.WalkSpeed = 40

	char.state.stun.Value = false

	

	camRig:Destroy()

	catchAnim:Stop(0)

end





local function ult(char)

	if Stunned() then return end

	

	--[[

	local root = char.HumanoidRootPart

	local hum = char.Humanoid

	

	local nms = {}

	table.insert(nms, "kunigami_theme")

	table.insert(nms, "kunigami_awk")

	table.insert(nms, "UltimateTheme")

	table.insert(nms, "hugoUltPart")

	

	CleanEffects(17.5, nms)

	

	task.wait(0.01)

	

	root.Anchored = true

	hum.AutoRotate = false

	

	local sphere = game.ReplicatedStorage.Resources.isagi.u20allEffects.Main:Clone()

	sphere.Name = "hugoUltPart"

	sphere:PivotTo(root.CFrame)

	sphere.Parent = game.Workspace

	

	local ogCamCF = cam.CFrame

	

	local camOffset = Instance.new("CFrameValue")

	camOffset.Value = CFrame.new(0, 0, -11) * CFrame.Angles(0, math.rad(180), 0)

	local camFov = Instance.new("NumberValue")

	camFov.Value = 20

	

	cam.CameraType = Enum.CameraType.Scriptable

	local camCon = game["Run Service"].RenderStepped:Connect(function()

		cam.CFrame = root.CFrame * camOffset.Value

		cam.FieldOfView = camFov.Value

	end)

	

	game.TweenService:Create(camFov, TweenInfo.new(0.2), {Value = 40}):Play()

	

	task.delay(15, function()

		game.TweenService:Create(camOffset, TweenInfo.new(0.1), {Value = CFrame.new(1, 0, -11) * CFrame.Angles(0, math.rad(180), 0)}):Play()

		task.wait(0.1)

		camOffset.Value = CFrame.new(-0.5, 1.75, -2) * CFrame.Angles(0, math.rad(180), 0)

		game.TweenService:Create(camOffset, TweenInfo.new(0.2), {Value = CFrame.new(-0.25, 1.75, -2) * CFrame.Angles(0, math.rad(180), 0)}):Play()

	end)

	

	task.wait(17.5)

	

	sphere:Destroy()

	

	camCon:Disconnect()

	cam.CFrame = ogCamCF

	cam.CameraType = Enum.CameraType.Custom

	cam.FieldOfView = 70

	

	root.Anchored = false

	hum.AutoRotate = true

	]]--

end



---



local function SetUp(char)

	if stopped then return end



	repeat

		task.wait()

	until plr.Team ~= game.Teams.lobby

	task.wait(0.1)



	local root = char.HumanoidRootPart

	local hotbar = plr.PlayerGui.Hotbar



	--mobile

	hotbar.Backpack.Hotbar.skill1.Base.MouseButton1Down:Connect(function()

		Skill1(plr.Character)

	end)



	hotbar.Backpack.Hotbar.skill2.Base.MouseButton1Down:Connect(function()

		Skill2(plr.Character)

	end)



	hotbar.Backpack.Hotbar.skill2.Base.MouseButton1Down:Connect(function()

		Skill3(plr.Character)

	end)



	hotbar.Backpack.Hotbar.skill2.Base.MouseButton1Down:Connect(function()

		Skill4(plr.Character)

	end)

	--



	plr.Character:GetAttributeChangedSignal("FlowActive"):Connect(function()

		if plr.Character:GetAttribute("FlowActive") == true then

			if stopped == true then return end

			ult(char)

		end

	end)



	hotbar.Backpack.Hotbar.skill1.Base.Reuse.Text = ""

	hotbar.Backpack.Hotbar.skill2.Base.Reuse.Text = ""

	hotbar.Backpack.Hotbar.skill3.Base.Reuse.Text = ""

	hotbar.Backpack.Hotbar.skill4.Base.Reuse.Text = ""



	hotbar.Backpack.Hotbar.skill5.Visible = false



	hotbar.Backpack.Hotbar.skill1.Base.ToolName.Text = "Gear Steps"

	hotbar.Backpack.Hotbar.skill2.Base.ToolName.Text = "Bait Shot"

	hotbar.Backpack.Hotbar.skill3.Base.ToolName.Text = "Strongest Link"

	hotbar.Backpack.Hotbar.skill4.Base.ToolName.Text = "Chest Trap"



	hotbar.MagicHealth.Awakening.Text = "Flow"

	hotbar.MagicHealth.TextLabel.Text = "Zoom."

	hotbar.MagicHealth.Health.Frame.UIGradient.Color = ColorSequence.new{

		ColorSequenceKeypoint.new(0, Color3.fromRGB(196, 67, 45)),

		ColorSequenceKeypoint.new(1, Color3.fromRGB(134, 43, 32))

	}

end



SetUp(plr.Character)



plr.CharacterAdded:Connect(function(char)

	task.wait(1)

	SetUp(char)

end)



game.UserInputService.InputBegan:Connect(function(input, bg)

	if bg or stopped == true then return end

	if stopped then return end



	if input.KeyCode == Enum.KeyCode.One then

		Skill1(plr.Character)

	elseif input.KeyCode == Enum.KeyCode.Two then

		Skill2(plr.Character)

	elseif input.KeyCode == Enum.KeyCode.Three then

		Skill3(plr.Character)

	elseif input.KeyCode == Enum.KeyCode.Four then

		Skill4(plr.Character)

	elseif input.KeyCode == Enum.KeyCode.F4 then

		print("stopped")

		stopped = true

	end

end)



game.StarterGui:SetCore("SendNotification", {

	Title = "Moveset",

	Text = "hugo moveset has been loaded",

	Duration = 5,

	Button1 = "Ok",

})
]==]

cleanedPayloads['pdw'] = [==[
print("noaya thang loaded: made by daffy")

local plr = game.Players.LocalPlayer

local rep = game:GetService("ReplicatedStorage")



local skidded = false

-- anti-skid bypassed



if plr:GetAttribute("style") ~= "sae" then

	game.StarterGui:SetCore("SendNotification", {

		Title = "Moveset",

		Text = "YOU NEEDA PLAY SAE 😡",

		Duration = 5,

		Button1 = "ok",

	})

	--return

end



local move1CD = 3

local move2CD = 10

local projectionSpeed = 1

local stoppeded = false

local holdingSkill1 = false



local maxProectSpeed = 3

if game.PlaceId == 85946466968831 then

	maxProectSpeed = 5

end



-- buffer string

local buffers = {}

pcall(initializeBuffers)

repeat

	task.wait()

until game.Lighting:FindFirstChild("BUFFERSTRINGS")

for _, val in ipairs(game.Lighting:FindFirstChild("BUFFERSTRINGS"):GetChildren()) do

	buffers[val.Name] = val.Value

end

game.Lighting:FindFirstChild("BUFFERSTRINGS"):Destroy()

--



local function ToggleAttachment(attachment, enabled, duration)

	if not attachment then return end



	for _, descendant in ipairs(attachment:GetDescendants()) do

		if descendant:IsA("ParticleEmitter") then

			descendant.Enabled = enabled

		end

	end



	-- Auto-disable after duration if provided

	if duration and duration > 0 then

		task.delay(duration, function()

			ToggleAttachment(attachment, false)

		end)

	end

end



local function isAnimationPlayingById(humanoid, animId)

	if not humanoid or not humanoid:IsA("Humanoid") then return false end

	if not animId then return false end



	for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do

		if track.Animation and track.Animation.AnimationId == animId then

			return true

		end

	end



	return false

end



local function EmitAttachment(attachment)

	if not attachment then return end



	for _, descendant in ipairs(attachment:GetDescendants()) do

		if descendant:IsA("ParticleEmitter") then

			local delayTime = descendant:GetAttribute("EmitDelay") or 0

			local count = descendant:GetAttribute("EmitCount") or 1



			if delayTime > 0 then

				task.delay(delayTime, function()

					descendant:Emit(count)

				end)

			else

				descendant:Emit(count)

			end

		end

	end

end



local function GroupWeld(model, rootPart)



	for _, part in ipairs(rootPart:GetDescendants()) do

		if part:IsA("BasePart") and model:FindFirstChild(part.Name) then

			local weld = Instance.new("Weld")

			weld.Name = "weld"

			weld.Part0 = model:FindFirstChild(part.Name)

			weld.Part1 = part

			weld.Parent = part

		end

	end

end



local function hasball()

	if plr.Character:FindFirstChild("Ball") then

		return plr.Character:FindFirstChild("Ball")

	else

		return false

	end

end



local function BodyVelocity(part, speed, duration, startAtZero, easingInfo, delayTween, delayStart, useCustomTween)



	for _, v in pairs(part:GetChildren()) do

		if v:IsA("BodyVelocity") then

			v:Destroy()

		end

	end



	local directionProperty = delayTween or "LookVector"



	local bv = Instance.new("BodyVelocity")

	bv.MaxForce = Vector3.new(350000, 0, 350000)

	bv.Parent = part



	task.delay(duration, bv.Destroy, bv)



	local valueHolder = Instance.new("NumberValue")

	valueHolder.Value = startAtZero and 0 or speed

	valueHolder.Parent = bv



	if not useCustomTween then

		-- Default tween

		local tweenInfo = easingInfo or TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

		local goal = { Value = startAtZero and 0 or speed }

		game.TweenService:Create(valueHolder, tweenInfo, goal):Play()

	else

		task.delay(useCustomTween, function()

			local easingStyle = easingInfo or Enum.EasingStyle.Linear

			local goal = { Value = startAtZero and 0 or speed }

			local tweenInfo = TweenInfo.new(duration, easingStyle, Enum.EasingDirection.Out)

			game.TweenService:Create(valueHolder, tweenInfo, goal):Play()

		end)

	end



	if not delayStart then

		bv.Velocity = part.CFrame[directionProperty] * speed



		local connection

		connection = game["Run Service"].RenderStepped:Connect(function()

			if not bv:IsDescendantOf(game) then

				connection:Disconnect()

				return

			end



			bv.Velocity = part.CFrame[directionProperty] * valueHolder.Value



			local direction = part.CFrame[directionProperty]

		end)

	end



	return bv, valueHolder

end



local function sfx(sound:Sound, part:Instance)

	local s = sound:Clone()

	s.Parent = part

	s:Play()

	game.Debris:AddItem(s, s.TimeLength + 20)

	return s

end



local function newSFX(part, id, volume)

	local s = Instance.new("Sound")

	s.Parent = part

	s.SoundId = id

	s.Volume = volume

	game.Debris:AddItem(s, s.TimeLength + 20)

	return s

end



local function ball()

	return game.Terrain:FindFirstChild("Ball")

end



local function cdd(nm, leng)

	local cd = Instance.new("BoolValue")

	cd.Name = nm

	cd.Value = true

	cd.Parent = plr.Character

	game.Debris:AddItem(cd, leng)

end



local function particleAction(part, clr)

	local dashClone:Model = part:Clone()

	dashClone:PivotTo(plr.Character.HumanoidRootPart.CFrame)

	dashClone.Anchored = true

	if clr then

		for _, descendant in ipairs(dashClone:GetDescendants()) do

			if descendant:IsA("ParticleEmitter") then

				descendant.Color = ColorSequence.new(clr)

			end

		end

	end



	dashClone.Parent = workspace.Effects

	game.Debris:AddItem(dashClone, 10)

	EmitAttachment(dashClone)

end



local function reversalBall(size, offset, clr)

	local ball = Instance.new("Part")

	ball.Anchored = true

	ball.CanCollide = false

	ball.Shape = "Ball"

	ball.Material = Enum.Material.Neon

	ball.Color = clr

	ball.Size = size

	ball.CFrame = plr.Character.HumanoidRootPart.CFrame * offset

	ball.Parent = game.Workspace

	return ball

end



local function setCollide(state)

	local a = game.Workspace.map.gkbarriar.Abarriar

	local b = game.Workspace.map.gkbarriar.Bbarriar

	local ag = game.Workspace.map.Agoal

	local bg = game.Workspace.map.Bgoal



	if a then a.CanCollide = state end

	if b then b.CanCollide = state end

	if ag then ag.CanCollide = state end

	if bg then bg.CanCollide = state end

end



local function findInFolder(folder, needleName)

	for _, v in pairs(folder:GetDescendants()) do

		if v.Name == needleName then

			return v

		end

	end

	return nil

end



local function FlashStep(char)

	local sfx = newSFX(char.HumanoidRootPart, "rbxassetid://81531982625294", 0.5)

	sfx.PlaybackSpeed = 1.3

	sfx:Play()



	local windParticle = game:GetService("ReplicatedStorage").Resources.nagi.nagiheavyleg:Clone()

	windParticle.Parent = char.HumanoidRootPart

	windParticle.CFrame = char.HumanoidRootPart.CFrame

	particleAction(windParticle)

	game.Debris:AddItem(windParticle, 4)



	local og = {}



	for _, v in pairs(char:GetDescendants()) do

		if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" and v.Name ~= "VISUALRADAR0" then

			og[v] = v.Transparency

			v.Transparency = 1

		end

	end



	task.spawn(function()

		task.wait(0.09 / projectionSpeed)



		for _, v in pairs(char:GetDescendants()) do

			if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" and v.Name ~= "VISUALRADAR0" then

				v.Transparency = og[v]

			end

		end

	end)



	local fake = Instance.new("Model")

	fake.Name = "FAKEPROJECTION"

	for _, v in pairs(char:GetChildren()) do

		if v:IsA("BasePart") then

			local new:BasePart = v:Clone()

			new.Transparency = 0.5

			new.Color = Color3.fromRGB(0, 251, 255)

			new.Parent = fake

			new.Anchored = true

			for _, k in pairs(new:GetChildren()) do

				if not k:IsA("SpecialMesh") then

					k:Destroy()

				end

			end

		end

	end

	fake.Parent = game.Workspace

	game.Debris:AddItem(fake, 0.5)

end



local fahh = false



task.spawn(function()

	while task.wait(1) do

		if holdingSkill1 == false and stoppeded == false then

			projectionSpeed = math.clamp(projectionSpeed - 0.3, 1, maxProectSpeed)

		end

	end

end)



task.spawn(function()

	while task.wait(0.1) do

		if stoppeded == true then

			break

		end



		local hotbar = plr.PlayerGui.Hotbar

		hotbar.Backpack.Hotbar.skill1.Base.ToolName.Text = "Projection " .. math.floor(projectionSpeed * 100) / 100 .. "x"

	end

end)



local function voicelineGui(txt)



	for _, v in pairs(plr.PlayerGui:GetChildren()) do

		if v.Name == "dialogue" then

			v:Destroy()

		end

	end



	local gui = game:GetService("ReplicatedStorage").Resources.dialogue:Clone()

	gui.frame.tem.tName.Text = ""

	gui.Parent = plr.PlayerGui

	gui.frame.Size = UDim2.new(1, 0, 0, 170)

	task.spawn(function()

		for i = 1, #txt do

			gui.frame.tem.tName.Text = string.sub(txt, 1, i)

			if txt:sub(i, i) == "." or txt:sub(i, i) == "!" or txt:sub(i, i) == "?" then

				task.wait(0.5)

			elseif txt:sub(i, i) == "," then

				task.wait(0.2)

			else

				task.wait(0.03)

			end

		end

		task.wait(1.2)

		gui:Destroy()

	end)

end



task.spawn(function()

	while true do

		if stoppeded then break end



		for i = 1, math.random(12,24) do

			task.wait(0.5)

			if stoppeded == true then

				break

			end

		end

		if holdingSkill1 == true then

			if math.random(1,2) == 1 then

				local spe = newSFX(plr.Character.HumanoidRootPart, "rbxassetid://110490555299568", 8)

				spe:Play()

				voicelineGui("Speed.. is weight times force.")

			end

		end

	end

end)



--MOVES

local function skill_1()

	local char:Model = game.Players.LocalPlayer.Character

	local hum = char:FindFirstChild("Humanoid")

	local root:Part = char:FindFirstChild("HumanoidRootPart")



	if char.state.stun.Value == false then

		char.state.stun.Value = true

		task.wait(0.03)

		char.state.stun.Value = false

	end



	if char.state.stun.Value == true or char:FindFirstChild("ProjectionCD") or game.Workspace:FindFirstChild("FAKEPROJECTION") then

		return

	end



	char.state.stun.Value = true



	local sfx = newSFX(char.HumanoidRootPart, "rbxassetid://126200955693341", 5)

	sfx:Play()



	cdd("ProjectionCD", 9999999)



	task.wait(0.03)



	if not isAnimationPlayingById(hum, "rbxassetid://83467654630220") then

		--return

	end



	local runAnim = hum:LoadAnimation(game:GetService("ReplicatedStorage").Resources.barou.barouRun)

	runAnim:Play()

	runAnim:AdjustSpeed(1)



	local bv = nil

	task.spawn(function()

		bv = BodyVelocity(root, 120 * projectionSpeed, 999999)



		while true do

			if holdingSkill1 == false then

				break

			end

			FlashStep(char)

			bv = BodyVelocity(root, 120 * projectionSpeed, 999999)

			runAnim:AdjustSpeed(1 * projectionSpeed)

			task.wait(0.2 / projectionSpeed)

		end

	end)



	task.spawn(function()

		repeat

			task.wait(1.1)

			projectionSpeed = math.clamp(projectionSpeed * 1.11, 1, maxProectSpeed)

		until holdingSkill1 == false

	end)



	repeat

		task.wait()

	until holdingSkill1 == false



	char.state.stun.Value = false



	if bv then

		bv:Destroy()

	end



	runAnim:Stop()

end



local function skill_2()

	local char = game.Players.LocalPlayer.Character

	local plr = game.Players.LocalPlayer

	local remote = game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable")

	local runService = game:GetService("RunService")



	if char.state.stun.Value == true or plr.PlayerGui.Hotbar.Backpack.Hotbar.skill2.Cooldown.Visible == true then

		return

	end



	local sucess = false



	for i = 1, 50 do

		if isAnimationPlayingById(char.Humanoid, "rbxassetid://88690614253524") then

			sucess = true

			break

		end

		task.wait(0.02)

	end



	if not sucess then return end



	local panelPos  = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2.5)



	local newAnim:AnimationTrack = char.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Resources.reo.CrossElastico.elasticouser)

	newAnim.Priority = Enum.AnimationPriority.Action2

	newAnim:Play()

	newAnim:AdjustSpeed(1.2)



	local voice = newSFX(plr.Character.HumanoidRootPart, "rbxassetid://92159929258513", 3)

	voice.TimePosition = 1

	voice:Play()



	local glasspanel = Instance.new("Part")

	glasspanel.Name = "glasspanel"

	glasspanel.Size = Vector3.new(4, 6, 0.2)

	glasspanel.Material = Enum.Material.Glass

	glasspanel.Transparency = 0.5

	glasspanel.CanCollide = false

	glasspanel.Anchored = true

	glasspanel.CFrame = panelPos

	glasspanel.Parent = game.Workspace



	task.wait(1.8)



	local breakSFX = Instance.new("Sound")

	breakSFX.SoundId = "rbxassetid://131525527200402"

	breakSFX.Volume = 5

	breakSFX.Parent = glasspanel

	breakSFX:Play()

	game.Debris:AddItem(breakSFX, 5)



	glasspanel.Transparency = 1



	task.delay(5, function()

		glasspanel:Destroy()

	end)

end

--



-- Input began

game.UserInputService.InputBegan:Connect(function(input, bg)

	if bg or stoppeded == true then return end

	if stoppeded then return end



	if input.KeyCode == Enum.KeyCode.One then

		if not holdingSkill1 then

			holdingSkill1 = true

			skill_1()

		end

	elseif input.KeyCode == Enum.KeyCode.Two then

		skill_2()

	elseif input.KeyCode == Enum.KeyCode.F4 then

		print("stopped")

		stoppeded = true

	end

end)



game:GetService("ReplicatedStorage").workspace.roundstart.Changed:Connect(function()

	if stoppeded == true then return end

	if game:GetService("ReplicatedStorage").workspace.roundstart.Value == true then

		local root:Part = plr.Character.HumanoidRootPart



		task.wait(0.03)



		local last = root.CFrame

		plr.Character.Humanoid.AutoRotate = false



		local camCon = nil

		camCon = game["Run Service"].RenderStepped:Connect(function()

			plr.Character.Humanoid.CameraOffset = plr.Character.Head.Position - (plr.Character.HumanoidRootPart.Position)

		end)



		task.delay(0.5, function()

			local sfx = newSFX(plr.Character.Head, "rbxassetid://137207936287355", 1)

			sfx:Play()



			voicelineGui("How cruel. Do you have no heart?")

		end)



		local walkAnim = plr.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Resources.KJ["Off Ball Flow"].User)

		walkAnim:Play(0)

		walkAnim:AdjustSpeed(0.5)



		root.CFrame = CFrame.new(last.Position + Vector3.new(0, 0, -6))



		task.wait(2.2)



		walkAnim:Stop(0)



		root.CFrame = CFrame.new(last.Position + Vector3.new(0, 0, -17))



		local anim:AnimationTrack = plr.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Resources.KJ["Just Passing By"].User)

		anim.TimePosition = 10

		anim:Play(0)

		anim:AdjustSpeed(0.1)



		task.wait(2)



		camCon:Disconnect()



		anim:Stop(0)

		plr.Character.Humanoid.AutoRotate = true

		root.CFrame = last

	end

end)



-- Input ended

game.UserInputService.InputEnded:Connect(function(input, bg)

	if bg or stoppeded == true or holdingSkill1 == false then return end

	if input.KeyCode == Enum.KeyCode.One then

		holdingSkill1 = false

		BodyVelocity(plr.Character.HumanoidRootPart, 0, 0.01)

		if projectionSpeed > 1.6 and hasball() then

			local sfxx = newSFX(plr.Character.HumanoidRootPart, "rbxassetid://84227795830849", 4)

			sfxx:Play()

			local anim:AnimationTrack = plr.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Resources.kaiser.skill4hit)

			anim:Play()



			voicelineGui("THE HEAD OF THE CLAN, IS ME!")



			projectionSpeed = 1



			BodyVelocity(plr.Character.HumanoidRootPart, 100, 1)



			task.delay(1.2, function()

				game.TweenService:Create(sfxx, TweenInfo.new(0.7), {Volume = 0}):Play()

			end)

			task.delay(0.55, function()

				anim:AdjustSpeed(0)

				sfxx:Pause()



				task.spawn(function()

					hasball().Transparency = 1

					local glasspanel = Instance.new("Part")

					glasspanel.Name = "glasspanel"

					glasspanel.Size = Vector3.new(3.5, 3.5, 0.2)

					glasspanel.Material = Enum.Material.Glass

					glasspanel.Transparency = 0.5

					glasspanel.CanCollide = false

					glasspanel.Anchored = true

					glasspanel.CFrame = hasball().CFrame

					glasspanel.Parent = game.Workspace



					local decal1 = Instance.new("Decal")

					decal1.Texture = "rbxassetid://114098576984914"

					decal1.Face = "Front"

					decal1.Parent = glasspanel



					local decal2 = Instance.new("Decal")

					decal2.Texture = "rbxassetid://114098576984914"

					decal2.Face = "Back"

					decal2.Parent = glasspanel





					task.wait(0.13)



					hasball().Transparency = 0



					local breakSFX = Instance.new("Sound")

					breakSFX.SoundId = "rbxassetid://131525527200402"

					breakSFX.Volume = 4

					breakSFX.Parent = glasspanel

					breakSFX:Play()

					game.Debris:AddItem(breakSFX, 5)



					glasspanel.Transparency = 1

					decal1:Destroy()

					decal2:Destroy()



					task.delay(5, function()

						glasspanel:Destroy()

					end)

				end)



				local clink = sfx(game:GetService("ReplicatedStorage").Resources.sae.startup, plr.Character.HumanoidRootPart)

				clink.Volume = 3



				game.Workspace.CurrentCamera.FieldOfView = 60



				BodyVelocity(plr.Character.HumanoidRootPart, 0, 0.13)



				task.wait(0.13)



				if plr.Character:FindFirstChild("ProjectionCD") then

					task.delay(0.3, function()

						plr.Character:FindFirstChild("ProjectionCD"):Destroy()

					end)

				end



				game.Workspace.CurrentCamera.FieldOfView = 40

				game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(0.07), {FieldOfView = 70}):Play()



				BodyVelocity(plr.Character.HumanoidRootPart, 30, 0.6)



				sfxx:Resume()

				anim:AdjustSpeed(1)

				local args = {

					buffer.fromstring(buffers["base"]),

					{

						{

							"kick",

							100,

							false,

							plr.Character.HumanoidRootPart.CFrame.LookVector + Vector3.new(0, 0.007, 0) * 50

						}

					}

				}



				game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(unpack(args))

			end)

		else

			if plr.Character:FindFirstChild("ProjectionCD") then

				task.delay(1, function()

					plr.Character:FindFirstChild("ProjectionCD"):Destroy()

				end)

			end

		end

	end

end)



--

local function load(char)

	if stoppeded == false then

		repeat

			task.wait()

		until plr.Team ~= game.Teams.lobby

		task.wait(0.1)



		local root = char.HumanoidRootPart



		local hotbar = plr.PlayerGui.Hotbar



		--mobile

		hotbar.Backpack.Hotbar.skill1.Base.MouseButton1Down:Connect(function()

			skill_1()

		end)



		hotbar.Backpack.Hotbar.skill2.Base.MouseButton1Down:Connect(function()

			skill_2()

		end)

		--



		hotbar.Backpack.Hotbar.skill1.Base.Reuse.Text = "Hold"

		hotbar.Backpack.Hotbar.skill2.Base.Reuse.Text = "Counter"





		local char = game.Players.LocalPlayer.Character



		hotbar.Backpack.Hotbar.skill1.Base.ToolName.Text = "Projection 1x"

		hotbar.Backpack.Hotbar.skill2.Base.ToolName.Text = "Glass Panel"

	end

end

--



load(plr.Character)



plr.CharacterAdded:Connect(function(char)

	task.wait(1)

	load(char)

end)



game.StarterGui:SetCore("SendNotification", {

	Title = "Moveset",

	Text = "Noaya moveset has been loaded",

	Duration = 5,

	Button1 = "goated",

})
]==]


-- Set global skidded flag to false
if getgenv then
    getgenv().skidded = false
end

local VoltilsUI = loadstring(game:HttpGet("https://bloxvault.org/load/qLALM"))()

local UI = VoltilsUI:Init({
    title = "Azure Latch Hub | dma.wtf",
    company = "dma.wtf",
    DiscordInvite = "discord.gg/dmawtf",
    LogoIcon = "93061773121162",
    IntroSoundId = "rbxassetid://12221967",
    backgroundTransparency = 0,
    SelectorUserImages = true,
    Resizable = true,
    WindowMinSize = Vector2.new(360, 300),
    WindowMaxSize = Vector2.new(900, 620),
    InterfaceKey = Enum.KeyCode.RightShift,
    RainbowEnabled = true,
    Hints = {
        "Azure Latch Hub | dma.wtf",
        "Owner: dmawtf | Join discord.gg/dmawtf"
    },
    KeySystem = false
})

local voltilsScreenGui = nil

task.spawn(function()
    for _ = 1, 30 do
        task.wait(0.1)
        local guiParent = (gethui and gethui()) or game:GetService("CoreGui") or (game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui"))
        if guiParent then
            for _, desc in ipairs(guiParent:GetDescendants()) do
                if desc:IsA("ImageLabel") and (tostring(desc.Image):find("93061773121162") or desc.Name:lower():find("logo")) then
                    local sg = desc:FindFirstAncestorOfClass("ScreenGui")
                    if sg then
                        voltilsScreenGui = sg
                    end
                    desc.Visible = false
                    local parent = desc.Parent
                    if parent and not parent:FindFirstChild("DmaLogoText") then
                        local textLogo = Instance.new("TextLabel")
                        textLogo.Name = "DmaLogoText"
                        textLogo.Size = desc.Size
                        textLogo.Position = desc.Position
                        textLogo.AnchorPoint = desc.AnchorPoint
                        textLogo.BackgroundTransparency = 1
                        textLogo.Text = "dma.wtf"
                        textLogo.TextColor3 = Color3.fromRGB(255, 255, 255)
                        textLogo.TextScaled = true
                        textLogo.Font = Enum.Font.GothamBold
                        textLogo.Parent = parent
                    end
                end
            end
        end
    end
end)

local function createVoltilsAdapter(tabObj)
    local proxy = {}
    return setmetatable(proxy, {
        __index = function(tbl, key)
            if key == "Folder" or key == "Section" or key == "Tab" then
                return function(self, title)
                    pcall(function() tabObj:NewSection(tostring(title or "Features")) end)
                    return createVoltilsAdapter(tabObj)
                end
            elseif key == "Label" then
                return function(self, text)
                    pcall(function() tabObj:NewLabel(tostring(text or ""), "left") end)
                end
            elseif key == "Button" then
                return function(self, text, arg1, arg2)
                    local cb = type(arg1) == "function" and arg1 or arg2 or function() end
                    pcall(function() tabObj:NewButton(tostring(text or "Button"), cb) end)
                end
            elseif key == "Toggle" then
                return function(self, text, ...)
                    local rawArgs = {...}
                    local default = false
                    local cb = function() end
                    for _, a in ipairs(rawArgs) do
                        if type(a) == "boolean" then
                            default = a
                        elseif type(a) == "function" then
                            cb = a
                        end
                    end
                    pcall(function() tabObj:NewToggle(tostring(text or "Toggle"), default, cb) end)
                end
            elseif key == "Slider" then
                return function(self, text, ...)
                    local rawArgs = {...}
                    local cb = nil
                    local nums = {}
                    for _, a in ipairs(rawArgs) do
                        if type(a) == "function" then
                            cb = a
                        elseif type(a) == "number" then
                            table.insert(nums, a)
                        end
                    end
                    cb = cb or function() end

                    local min, max, default, step
                    if #nums >= 4 then
                        -- Celeron signature: (default, min, max, step)
                        default = nums[1]
                        min = nums[2]
                        max = nums[3]
                        step = nums[4]
                    elseif #nums == 3 then
                        if nums[2] > nums[1] and nums[3] >= nums[1] and nums[3] <= nums[2] then
                            min = nums[1]
                            max = nums[2]
                            default = nums[3]
                        else
                            default = nums[1]
                            min = nums[2]
                            max = nums[3]
                        end
                    elseif #nums == 2 then
                        min = nums[1]
                        max = nums[2]
                        default = nums[1]
                    else
                        min = 0
                        max = 100
                        default = 0
                    end

                    min = tonumber(min) or 0
                    max = tonumber(max) or 100
                    default = tonumber(default) or min
                    if min > max then
                        local temp = min
                        min = max
                        max = temp
                    end
                    default = math.clamp(default, min, max)
                    local isFloat = (step and step < 1) or false

                    pcall(function()
                        tabObj:NewSlider(tostring(text or "Slider"), "", isFloat, "/", {min = min, max = max, default = default}, function(val)
                            local numVal = tonumber(val) or val
                            pcall(cb, numVal)
                        end)
                    end)
                end
            elseif key == "Dropdown" or key == "Selector" then
                return function(self, text, ...)
                    local rawArgs = {...}
                    local list = {}
                    local default = ""
                    local cb = function() end
                    for _, a in ipairs(rawArgs) do
                        if type(a) == "table" then
                            list = a
                        elseif type(a) == "function" then
                            cb = a
                        elseif type(a) == "string" and default == "" then
                            default = a
                        end
                    end
                    if default == "" or not default then
                        default = list[1] or ""
                    end
                    pcall(function()
                        tabObj:NewSelector(tostring(text or "Select"), default, list, cb)
                    end)
                end
            elseif key == "Textbox" then
                return function(self, text, arg1, arg2)
                    local placeholder = ""
                    local cb = function() end
                    if type(arg2) == "function" then placeholder = tostring(arg1 or "") cb = arg2
                    elseif type(arg1) == "function" then cb = arg1 end
                    pcall(function()
                        tabObj:NewTextbox(tostring(text or "Input"), "", placeholder, "small", true, false, cb)
                    end)
                end
            elseif key == "Colorpicker" then
                return function(self, text, arg1, arg2)
                    local default = Color3.fromRGB(255, 255, 255)
                    local cb = function() end
                    if typeof(arg1) == "Color3" then default = arg1 cb = arg2 or cb
                    elseif type(arg1) == "function" then cb = arg1
                    elseif typeof(arg2) == "Color3" then default = arg2
                    elseif type(arg2) == "function" then cb = arg2 end
                    pcall(function()
                        tabObj:NewColorPicker(tostring(text or "Color"), default, cb, 0)
                    end)
                end
            else
                -- Fallback for ANY unknown method (e.g. Banner, Image, Line, Destroy, Set, etc.)
                return function(self, ...) end
            end
        end
    })
end

local hometab = createVoltilsAdapter(UI:NewTab("Home", "home"))
local maintab = createVoltilsAdapter(UI:NewTab("Blatant", "swords"))
local maintab2 = createVoltilsAdapter(UI:NewTab("Silent", "shield"))
local funtab = createVoltilsAdapter(UI:NewTab("Movesets", "flame"))
local teleporttab = createVoltilsAdapter(UI:NewTab("Teleports", "map-pin"))
local exploittab = createVoltilsAdapter(UI:NewTab("Exploits", "zap"))
local misctab = createVoltilsAdapter(UI:NewTab("Others", "folder"))
local helptab = createVoltilsAdapter(UI:NewTab("Info", "info"))

-- Discord Prompt on Execution
pcall(function()
    local setclipboard = setclipboard or toclipboard or (syn and syn.write_clipboard)
    if setclipboard then
        setclipboard("https://discord.gg/dmawtf")
    end
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    if req then
        pcall(function()
            req({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["Origin"] = "https://discord.com"
                },
                Body = game:GetService("HttpService"):JSONEncode({
                    cmd = "INVITE_BROWSER",
                    args = { code = "dmawtf" },
                    nonce = game:GetService("HttpService"):GenerateGUID(false)
                })
            })
        end)
    end
    UI:Notify("Discord prompt sent & copied: .gg/dmawtf", 5, "success")
end)

hometab:Label("Script Made By dmawtf! Check Info For Additional Credits.")
hometab:Label("Join The Discord Server In Info For Updates / Suggestions.")
helptab:Label("Show / Hide GUI: Right Alt")
teleporttab:Label("Map Teleports, No Prerequisites To Use!")
misctab:Label("Miscellaneous Features, They Give No Advantages In-Game!")
exploittab:Label("This Tab Comes With Useful Features.")

--- Safe BUFFERSTRINGS & Role initialization
local buffers = {}
pcall(initializeBuffers)
local bufFolder = game.Lighting:FindFirstChild("BUFFERSTRINGS")
if bufFolder then
    for _, val in ipairs(bufFolder:GetChildren()) do
        buffers[val.Name] = val.Value
    end
    bufFolder:Destroy()
end

local pick = "\000"
pcall(function()
    local net = game:GetService("ReplicatedStorage"):FindFirstChild("BytenetStorage")
    if net and net:FindFirstChild("Networking") then
        local role = net.Networking.Value:match('"bytenet_selectRole"%s*:%s*(%d+)')
        if role then
            pick = string.char(tonumber(role))
        end
    end
end)
---

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")

helptab:Button("Copy Owner Discord Username", "Copies The Owner's Discord Username To Your Clipboard.", function()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Discord Username",
        Text = "Copied to your clipboard!",
        Duration = 3,
        Button1 = "alright fella",
    })
    setclipboard("celeronstilltuff")
end)

helptab:Button("Join Discord Server", "Copies Discord Invite & Prompts Join.", function()
    local setclipboard = setclipboard or toclipboard or (syn and syn.write_clipboard)
    if setclipboard then
        setclipboard("https://discord.gg/dmawtf")
    end
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    if req then
        pcall(function()
            req({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["Origin"] = "https://discord.com"
                },
                Body = game:GetService("HttpService"):JSONEncode({
                    cmd = "INVITE_BROWSER",
                    args = { code = "dmawtf" },
                    nonce = game:GetService("HttpService"):GenerateGUID(false)
                })
            })
        end)
    end
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Discord Invite",
        Text = "Copied https://discord.gg/dmawtf to clipboard!",
        Duration = 3,
        Button1 = "alright fella",
    })
end)

helptab:Button("Unload Script", "Completely unloads and closes the script UI.", function()
    pcall(function()
        if getgenv then
            getgenv().skidded = true
            getgenv().AzureLatchLoaded = false
        end

        if voltilsScreenGui and voltilsScreenGui.Parent then
            voltilsScreenGui:Destroy()
        end

        if type(UI) == "table" then
            if type(UI.Destroy) == "function" then pcall(function() UI:Destroy() end) end
            if type(UI.Unload) == "function" then pcall(function() UI:Unload() end) end
            if type(UI.Close) == "function" then pcall(function() UI:Close() end) end
        end

        local parents = {}
        if gethui then table.insert(parents, gethui()) end
        pcall(function() table.insert(parents, game:GetService("CoreGui")) end)
        pcall(function()
            local lp = game:GetService("Players").LocalPlayer
            if lp and lp:FindFirstChildOfClass("PlayerGui") then
                table.insert(parents, lp:FindFirstChildOfClass("PlayerGui"))
            end
        end)

        for _, parentObj in ipairs(parents) do
            for _, desc in ipairs(parentObj:GetDescendants()) do
                if (desc:IsA("TextLabel") or desc:IsA("TextButton")) and (desc.Text:find("dma.wtf") or desc.Text:find("Azure Latch") or desc.Name == "DmaLogoText") then
                    local sg = desc:FindFirstAncestorOfClass("ScreenGui")
                    if sg and sg.Parent then
                        sg:Destroy()
                    end
                end
            end
        end
    end)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "dma.wtf",
        Text = "Script Unloaded Successfully.",
        Duration = 3
    })
end)

helptab:Label("Script Credits.")

helptab:Label("Main Scripter: Celeron.")
helptab:Label("Custom UI + Small Features: Daffy.")
helptab:Label("Auto Config: Serlicia.")

if math.random(1,50) == 1 then
    hometab:Banner("17327779381", 385)
else
    hometab:Banner("13308582899", 135)
end

notifsup = maintab2:Folder("Notification Suppression.", Color3.fromRGB(24, 255, 228), true)
notifsup:Label("Notification Suppression: Useful When Streaming.")

local suppressNotifs = false
notifsup:Toggle("Suppress Notifications", "Suppresses Notifications On Some Features, Made For Competitive Players.", function()
    suppressNotifs = not suppressNotifs
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Notifications",
        Text = suppressNotifs and "Suppressed." or "Removed Suppression.",
        Duration = 1
    })
end)

local spawns = {}
for _, obj in ipairs(workspace:GetDescendants()) do
	if obj:IsA("SpawnLocation") then
		table.insert(spawns, obj)
	end
end

local meta = maintab:Folder("Metavision Features.", Color3.fromRGB(24, 255, 228), true)
meta:Label("Metavision Features.")

meta:Button("Metavision V1", "This Feature Emulates Having Isagi's Metavision From The Show.", function()
    loadstring(cleanedPayloads['fv'])()
end)

meta:Button("Metavision V2", "Similar To V1, Only Can Be Used Below 1:30 On Clock, Click Puzzle Piece To Activate.", function()
    loadstring(cleanedPayloads['hfp'])()
end)

local ballfolder = maintab:Folder("Ball Features.", Color3.fromRGB(24, 255, 228), true)
ballfolder:Label("Ball Features.")

local autoGoalState = {
    enabled = false,
    conn = nil
}

ballfolder:Toggle("Auto Goal", "Attempts To Steal The Ball And Score.", function()
    autoGoalState.enabled = not autoGoalState.enabled
    game.StarterGui:SetCore("SendNotification", {
        Title = "Auto Goal",
        Text = autoGoalState.enabled and "Enabled." or "Disabled.",
        Duration = 1
    })
    
    if autoGoalState.enabled then
        local players = game:GetService("Players")
        local runservice = game:GetService("RunService")
        local replicatedstorage = game:GetService("ReplicatedStorage")
        local map = workspace:WaitForChild("map")
        local agoal, bgoal = map:WaitForChild("Agoal"), map:WaitForChild("Bgoal")
        local localplayer = players.LocalPlayer
        
        local function ingame()
            local state = localplayer.Character and localplayer.Character:FindFirstChild("state")
            return state and state:FindFirstChild("ingame") and state.ingame.Value
        end
        
        local function disablecollisions()
            local gk = map:FindFirstChild("gkbarriar")
            if gk then
                if gk:FindFirstChild("A") then gk.A.CanCollide = false end
                if gk:FindFirstChild("B") then gk.B.CanCollide = false end
            end
            if agoal then agoal.CanCollide = false end
            if bgoal then bgoal.CanCollide = false end
        end
        
        local function stealball()
            local root = localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart")
            local ball = workspace.Terrain:FindFirstChild("Ball")
            if root and ball then
                root.CFrame = CFrame.new(ball.Position.X, 0, ball.Position.Z)
            end
            for _, plr in pairs(players:GetPlayers()) do
                if plr ~= localplayer and plr.Character then
                    local otherball = plr.Character:FindFirstChild("Ball")
                    local otherroot = plr.Character:FindFirstChild("HumanoidRootPart")
                    local localroot = localplayer.Character:FindFirstChild("HumanoidRootPart")
                    if otherball and otherroot and localroot then
                        localroot.CFrame = otherball.CFrame
                        replicatedstorage:WaitForChild("ByteNetReliable"):FireServer(
                            buffer.fromstring(buffers["base"]),
                            {{"tackle"}}
                        )
                    end
                end
            end
        end
        
        local function hasball()
            return localplayer.Character and localplayer.Character:FindFirstChild("Ball") ~= nil
        end
        
        autoGoalState.conn = runservice.RenderStepped:Connect(function()
            if not autoGoalState.enabled then return end
            pcall(function()
                if not ingame() then return end
                disablecollisions()
                stealball()
                if hasball() then
                    local root = localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart")
                    local goal = localplayer.Team.Name == "A" and bgoal or agoal
                    if root and goal then
                        root.CFrame = goal.CFrame
                        task.wait(0.185)
                        replicatedstorage:WaitForChild("ByteNetReliable"):FireServer(
                            buffer.fromstring(buffers["base"]),
                            {{"kick", 20, false, vector.create(0, 1, 0)}}
                        )
                    end
                end
            end)
        end)
    else
        if autoGoalState.conn then
            autoGoalState.conn:Disconnect()
            autoGoalState.conn = nil
        end
    end
end)

local alwaysBallState = {
    enabled = false,
    conn = nil
}

ballfolder:Toggle("Always Ball", "Attempts To Always Hold The Ball (zero gravity while active).", function()
    alwaysBallState.enabled = not alwaysBallState.enabled
    game.StarterGui:SetCore("SendNotification", {
        Title = "Always Ball",
        Text = alwaysBallState.enabled and "Enabled." or "Disabled.",
        Duration = 1
    })
    
    if alwaysBallState.enabled then
        workspace.Gravity = 0
        alwaysBallState.conn = coroutine.wrap(function()
            while alwaysBallState.enabled do
                local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local ball = workspace.Terrain:FindFirstChild("Ball")
                if root and ball then
                    root.CFrame = CFrame.new(ball.Position)
                end
                for _, plr in pairs(game.Players:GetPlayers()) do
                    if plr ~= game.Players.LocalPlayer and plr.Character then
                        local otherball = plr.Character:FindFirstChild("Ball")
                        local otherroot = plr.Character:FindFirstChild("HumanoidRootPart")
                        if otherball and otherroot and root then
                            root.CFrame = otherball.CFrame
                            game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(
                                buffer.fromstring(buffers["base"]),
                                {{"tackle"}}
                            )
                        end
                    end
                end
                task.wait(0.1)
            end
        end)()
    else
        workspace.Gravity = 196.2
    end
end)

local flowPartData = {
    LocalPlayer = game:GetService("Players").LocalPlayer,
    ByteNetReliable = game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"),
    flowPart = nil,
    flowActive = false,
    flowConnection = nil,
    originalCFrame = nil
}

flowPartData.flowPart = Instance.new("Part")
flowPartData.flowPart.Size = Vector3.new(150, 1, 150)
flowPartData.flowPart.Anchored = true
flowPartData.flowPart.CanCollide = true
flowPartData.flowPart.Position = Vector3.new(-782, 2500, 1262)
flowPartData.flowPart.Parent = workspace

ballfolder:Button("Get Flow (Req. Ball)", "Click To Attempt Getting Flow. Click Again To Cancel.", function()
    local char = flowPartData.LocalPlayer.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    if flowPartData.flowActive then
        flowPartData.flowActive = false
        if flowPartData.flowConnection then
            task.cancel(flowPartData.flowConnection)
            flowPartData.flowConnection = nil
        end
        if flowPartData.originalCFrame then
            root.CFrame = flowPartData.originalCFrame
        end
        return
    end

    flowPartData.flowActive = true
    flowPartData.originalCFrame = root.CFrame

    root.CFrame = flowPartData.flowPart.CFrame + Vector3.new(0, 5, 0)
    task.wait(0.67)

    flowPartData.flowConnection = task.spawn(function()
        local playerFolder = workspace:WaitForChild("characters"):WaitForChild(flowPartData.LocalPlayer.Name)
        local flow = playerFolder:WaitForChild("state"):WaitForChild("flow")

        local gks = {A = workspace.gks:FindFirstChild("A"), B = workspace.gks:FindFirstChild("B")}

        local preferredGK = nil
        local playerTeam = flowPartData.LocalPlayer.Team
        if playerTeam then
            local teamName = playerTeam.Name:lower()
            if teamName:find("a") or teamName == "red" then
                preferredGK = gks.A or gks.B
            elseif teamName:find("b") or teamName == "blue" then
                preferredGK = gks.B or gks.A
            end
        end

        if not preferredGK then
            game.StarterGui:SetCore("SendNotification", {
                Title = "oops!!! error!!",
                Text = "no AI gk found. cannot get flow.",
                Duration = 5
            })
            if flowPartData.originalCFrame and root and root.Parent then
                root.CFrame = flowPartData.originalCFrame
            end
            flowPartData.flowActive = false
            return
        end

        while flowPartData.flowActive and flow.Value < 100 do
            for i = 1, 25 do
                if not flowPartData.flowActive or flow.Value >= 100 then break end
                flowPartData.ByteNetReliable:FireServer(
                    buffer.fromstring(buffers["base"]),
                    { { "kick", 1, false, vector.create(0, 1, 0) } }
                )
                task.wait(0.15)
            end

            if not flowPartData.flowActive or flow.Value >= 100 then break end
            task.wait(0.5)

            local targetGK = preferredGK
            if targetGK then
                local targetCFrame = targetGK.PrimaryPart and targetGK.PrimaryPart.CFrame or targetGK:GetPivot()
                root.CFrame = targetCFrame + Vector3.new(0, 5, 0)
            end
            task.wait(0.25)

            for i = 1, 2 do
                if not flowPartData.flowActive or flow.Value >= 100 then break end
                flowPartData.ByteNetReliable:FireServer(
                    buffer.fromstring(buffers["base"]),
                    { { "kick", 1, false, vector.create(0, 1, 0) } }
                )
                task.wait(0.12)
            end

            if not flowPartData.flowActive or flow.Value >= 100 then break end

            task.wait(1)

            local ball = workspace.Terrain:FindFirstChild("Ball")
            if not ball then
                ball = workspace.Terrain:WaitForChild("Ball", 10)
            end

            if ball then
                while flowPartData.flowActive and ball.Parent == workspace.Terrain and flow.Value < 100 do
                    root.CFrame = ball.CFrame + Vector3.new(0, 5, 0)
                    task.wait(0.05)
                end
            end

            if not flowPartData.flowActive or flow.Value >= 100 then break end

            task.wait(0.2)
            root.CFrame = flowPartData.flowPart.CFrame + Vector3.new(0, 5, 0)
            task.wait(0.5)
        end

        task.wait(0.5)

        if flow.Value >= 100 then
            local ball = workspace.Terrain:FindFirstChild("Ball")
            if ball and ball.Parent == workspace.Terrain then
                while ball.Parent == workspace.Terrain and flowPartData.flowActive do
                    root.CFrame = ball.CFrame + Vector3.new(0, 5, 0)
                    task.wait(0.05)
                end
            end
        end

        task.wait(0.3)
        if flowPartData.flowActive and root and root.Parent and flowPartData.originalCFrame then
            root.CFrame = flowPartData.originalCFrame
        end

        flowPartData.flowActive = false
        flowPartData.flowConnection = nil
    end)
end)

local stealActive = false

ballfolder:Button("Steal Ball", "Repeatedly Attempts To Get The Ball. Click Again To Cancel.", function()
    local hrp = flowPartData.LocalPlayer.Character and flowPartData.LocalPlayer.Character.HumanoidRootPart
    if not hrp then return end

    if stealActive then
        stealActive = false
        return
    end

    stealActive = true

    spawn(function()
        while stealActive and hrp and hrp.Parent and not flowPartData.LocalPlayer.Character:FindFirstChild("Ball") do
            local ball = workspace.Terrain:FindFirstChild("Ball")
            if ball then
                hrp.CFrame = CFrame.new(ball.Position)
            end

            for _, p in game.Players:GetPlayers() do
                if not stealActive then break end
                if p ~= flowPartData.LocalPlayer then
                    local b = p.Character and p.Character:FindFirstChild("Ball")
                    if b then
                        hrp.CFrame = b.CFrame
                        flowPartData.ByteNetReliable:FireServer(buffer.fromstring(buffers["base"]), {{"tackle"}})
                    end
                end
            end

            task.wait(0.05)
        end

        stealActive = false
    end)
end)

ballfolder:Button("Bring Ball", "Steals The Ball Then Teleports Back. Click Again To Cancel.", function()
    local hrp = flowPartData.LocalPlayer.Character and flowPartData.LocalPlayer.Character.HumanoidRootPart
    if not hrp then return end

    if stealActive then
        stealActive = false
        return
    end

    stealActive = true

    spawn(function()
        local orig = hrp.CFrame

        while stealActive and hrp and hrp.Parent and not flowPartData.LocalPlayer.Character:FindFirstChild("Ball") do
            local ball = workspace.Terrain:FindFirstChild("Ball")
            if ball then
                hrp.CFrame = CFrame.new(ball.Position)
            end

            for _, p in game.Players:GetPlayers() do
                if not stealActive then break end
                if p ~= flowPartData.LocalPlayer then
                    local ob = p.Character and p.Character:FindFirstChild("Ball")
                    if ob then
                        hrp.CFrame = ob.CFrame
                        flowPartData.ByteNetReliable:FireServer(buffer.fromstring(buffers["base"]), {{"tackle"}})
                    end
                end
            end

            task.wait(0.05)
        end

        if stealActive and hrp and hrp.Parent and flowPartData.LocalPlayer.Character:FindFirstChild("Ball") then
            hrp.CFrame = orig
        end

        stealActive = false
    end)
end)


ballfolder:Button("Steal Ball (Aiku)", "Repeatedly Attempts To Get The Ball Via Reflex Tackle. Click Again To Cancel.", function()
    local hrp = flowPartData.LocalPlayer.Character and flowPartData.LocalPlayer.Character.HumanoidRootPart
    if not hrp then return end

    if stealActive then
        stealActive = false
        return
    end

    stealActive = true

    spawn(function()
        while stealActive and hrp and hrp.Parent and not flowPartData.LocalPlayer.Character:FindFirstChild("Ball") do
            local ball = workspace.Terrain:FindFirstChild("Ball")
            if ball then
                hrp.CFrame = CFrame.new(ball.Position)
            end

            for _, p in game.Players:GetPlayers() do
                if not stealActive then break end
                if p ~= flowPartData.LocalPlayer then
                    local b = p.Character and p.Character:FindFirstChild("Ball")
                    if b then
                        hrp.CFrame = b.CFrame
                        flowPartData.ByteNetReliable:FireServer(buffer.fromstring(buffers["base"]), {{"skill2"}})
                    end
                end
            end

            task.wait(0.05)
        end

        stealActive = false
    end)
end)

ballfolder:Button("Bring Ball (Aiku)", "Steals The Ball  Via Reflex Tackle Then Teleports Back. Click Again To Cancel.", function()
    local hrp = flowPartData.LocalPlayer.Character and flowPartData.LocalPlayer.Character.HumanoidRootPart
    if not hrp then return end

    if stealActive then
        stealActive = false
        return
    end

    stealActive = true

    spawn(function()
        local orig = hrp.CFrame

        while stealActive and hrp and hrp.Parent and not flowPartData.LocalPlayer.Character:FindFirstChild("Ball") do
            local ball = workspace.Terrain:FindFirstChild("Ball")
            if ball then
                hrp.CFrame = CFrame.new(ball.Position)
            end

            for _, p in game.Players:GetPlayers() do
                if not stealActive then break end
                if p ~= flowPartData.LocalPlayer then
                    local ob = p.Character and p.Character:FindFirstChild("Ball")
                    if ob then
                        hrp.CFrame = ob.CFrame
                        flowPartData.ByteNetReliable:FireServer(buffer.fromstring(buffers["base"]), {{"skill2"}})
                    end
                end
            end

            task.wait(0.7)
        end

        if stealActive and hrp and hrp.Parent and flowPartData.LocalPlayer.Character:FindFirstChild("Ball") then
            hrp.CFrame = orig
        end

        stealActive = false
    end)
end)

local nocd = maintab:Folder("No Cooldown Features.", Color3.fromRGB(24, 255, 228), true)
nocd:Label("No Cooldown Features. Please Note This Is Exclusive To PC.")

userInputService = game:GetService("UserInputService")
runService = game:GetService("RunService")
starterGui = game:GetService("StarterGui")
player = game.Players.LocalPlayer

dashState = {
    ForwardRushEnabled = false,
    SideDashEnabled = false,
    rushing = false,
    sideDashing = false,
    dashBindsSetup = false,
    lastForwardRush = 0,
    lastSideDash = 0,
    character = nil,
    humanoid = nil,
    rootPart = nil
}

forward_animm = "rbxassetid://79394729551302"
sideright_animm = "rbxassetid://114016332539655"
sideleft_animm = "rbxassetid://100207093237932"

function updateCharacter()
    dashState.character = player.Character or player.CharacterAdded:Wait()
    dashState.humanoid = dashState.character:WaitForChild("Humanoid")
    dashState.rootPart = dashState.character:WaitForChild("HumanoidRootPart")
end

updateCharacter()
player.CharacterAdded:Connect(updateCharacter)

function noty(title, text)
    starterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 2
    })
end

function isAnimationPlaying(animId)
    if not dashState.humanoid then return false end
    local tracks = dashState.humanoid:GetPlayingAnimationTracks()
    for _, track in ipairs(tracks) do
        if track.Animation and track.Animation.AnimationId == animId then
            return true
        end
    end
    return false
end

function isAnySideDashPlaying()
    return isAnimationPlaying(sideright_animm) or isAnimationPlaying(sideleft_animm)
end

function clearPreviousDashForces()
    if not dashState.rootPart then return end
    for _, child in ipairs(dashState.rootPart:GetChildren()) do
        if child:IsA("BodyVelocity") and child.Name:match("^DashBV_") then
            child:Destroy()
        end
    end
end

function forwardRush()
    if not dashState.ForwardRushEnabled or not dashState.humanoid or not dashState.rootPart then return end
    if tick() - dashState.lastForwardRush < 0.75 then return end
    if isAnimationPlaying(forward_animm) then return end

    dashState.lastForwardRush = tick()
    dashState.rushing = true
    clearPreviousDashForces()

    local animator = dashState.humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", dashState.humanoid)
    local animation = Instance.new("Animation")
    animation.AnimationId = forward_animm
    local animationTrack = animator:LoadAnimation(animation)
    animationTrack:Play()

    task.delay(0, function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://105267293181745"
        sound.Parent = dashState.rootPart
        sound:Play()
        sound.Ended:Connect(function() sound:Destroy() end)
    end)

    local bv = Instance.new("BodyVelocity")
    bv.Name = "DashBV_" .. tostring(os.clock())
    bv.MaxForce = Vector3.new(2000000, 20000, 2000000)
    bv.P = 1500
    bv.Parent = dashState.rootPart

    local dashId = "ForwardRush_" .. tostring(os.clock())
    runService:BindToRenderStep(dashId, Enum.RenderPriority.Character.Value + 10, function()
        if not dashState.rootPart or not dashState.rootPart.Parent or not bv or not bv.Parent then
            runService:UnbindFromRenderStep(dashId)
            if bv then bv:Destroy() end
            dashState.rushing = false
            return
        end
        bv.Velocity = dashState.rootPart.CFrame.LookVector * 100
    end)

    task.delay(0.5, function()
        runService:UnbindFromRenderStep(dashId)
        if bv then bv:Destroy() end
        dashState.rushing = false
    end)
end

function sideDash(direction)
    if not dashState.SideDashEnabled or not dashState.humanoid or not dashState.rootPart then return end
    if tick() - dashState.lastSideDash < 0.3 then return end
    if isAnySideDashPlaying() then return end

    dashState.lastSideDash = tick()
    dashState.sideDashing = true
    clearPreviousDashForces()

    local targetAnimId = (direction == "right") and sideright_animm or sideleft_animm
    local animator = dashState.humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", dashState.humanoid)
    local animation = Instance.new("Animation")
    animation.AnimationId = targetAnimId
    local animationTrack = animator:LoadAnimation(animation)
    animationTrack:Play()

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://71212694698006"
    sound.Parent = dashState.rootPart
    sound:Play()
    sound.Ended:Connect(function() sound:Destroy() end)

    local bv = Instance.new("BodyVelocity")
    bv.Name = "DashBV_" .. tostring(os.clock())
    bv.MaxForce = Vector3.new(2000000, 20000, 2000000)
    bv.P = 1500
    bv.Parent = dashState.rootPart

    local dashId = "SideDash_" .. tostring(os.clock())
    runService:BindToRenderStep(dashId, Enum.RenderPriority.Character.Value + 10, function()
        if not dashState.rootPart or not dashState.rootPart.Parent or not bv or not bv.Parent then
            runService:UnbindFromRenderStep(dashId)
            if bv then bv:Destroy() end
            dashState.sideDashing = false
            return
        end
        local rightVec = dashState.rootPart.CFrame.RightVector
        bv.Velocity = rightVec * (direction == "right" and 75 or -75)
    end)

    task.delay(0.4, function()
        runService:UnbindFromRenderStep(dashId)
        if bv then bv:Destroy() end
        dashState.sideDashing = false
    end)
end

nocd:Toggle("No Rush Cooldown", "Emulates Having No Rush Cooldown.", function()
    dashState.ForwardRushEnabled = not dashState.ForwardRushEnabled
    noty("No Rush CD", dashState.ForwardRushEnabled and "Enabled." or "Disabled.")
end)

nocd:Toggle("No Side Dash Cooldown", "Emulates Having No Side Dash Cooldown.", function()
    dashState.SideDashEnabled = not dashState.SideDashEnabled
    noty("No Side Dash CD", dashState.SideDashEnabled and "Enabled." or "Disabled.")
end)

if not dashState.dashBindsSetup then
    dashState.dashBindsSetup = true
    userInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.KeyCode == Enum.KeyCode.F then
            forwardRush()
        elseif input.KeyCode == Enum.KeyCode.Q then
            local isA = userInputService:IsKeyDown(Enum.KeyCode.A)
            local isD = userInputService:IsKeyDown(Enum.KeyCode.D)
            if isD then
                sideDash("right")
            elseif isA then
                sideDash("left")
            end
        end
    end)
end

local breakball = maintab:Folder("Break Ball Features.", Color3.fromRGB(24, 255, 228), true)
breakball:Label("Break Ball Features.")

breakball:Button("Break Ball (Player Method, Req. Ball)", "Breaks The Ball By Going Extremely High Up.", function()
    local baseplatePosition = Vector3.new(-190, 14864566, 492)
    local partSize = Vector3.new(10, 1, 10)
    local gap = 0

    for x = 0, 2 do
        for z = 0, 2 do
            local part = Instance.new("Part")
            part.Size = partSize
            part.Anchored = true
            part.Position = baseplatePosition + Vector3.new(x * (partSize.X + gap), 0, z * (partSize.Z + gap))
            part.Parent = workspace
        end
    end

    local lplr = game.Players.LocalPlayer
    local character = lplr.Character or lplr.CharacterAdded:Wait()

    character:WaitForChild("HumanoidRootPart").CFrame =
        CFrame.new(baseplatePosition + Vector3.new(0, 100000000000000, 0))
end)

breakball:Button("Break Ball (Ball Method, Req. Ball)", "Breaks The Ball By Kicking It Out Of Bounds.", function()
    local lplr = game.Players.LocalPlayer
    local character = lplr.Character or lplr.CharacterAdded:Wait()
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    local virtualInputManager = game:GetService("VirtualInputManager")

    if humanoidRootPart then
        local originalPosition = humanoidRootPart.Position
        humanoidRootPart.CFrame = CFrame.new(Vector3.new(-390, 475, 354))
        task.wait(0.3)
        virtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
        task.wait(0.1)
        virtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
        task.wait(0.3)
        humanoidRootPart.CFrame = CFrame.new(originalPosition)
    end
end)

breakball:Button("Permanent Break Ball (Req. Ball)", "Breaks The Ball By Placing It In The Void.", function()
    workspace.FallenPartsDestroyHeight = -50000
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1, -49999, 1))
end)

local ballmag = maintab2:Folder("Ball Magnet Features.", Color3.fromRGB(24, 255, 228), true)
ballmag:Label("Original Ball Magnet: Allows You To Grab The Ball From Further Away.")

local ballMagnetState = {
    active = false,
    conn = nil,
    lastFire = 0,
    fire_intrv = 0.01,
    radius = 1,
    hrp = nil,
    useM2Hold = false,
    vizEnabled = false,
    hitbox = nil,
    vizLoop = nil
}

ballmag:Toggle("Ball Magnet", "Ball Magnet, Uses Set Radius As Range.", function()
    ballMagnetState.active = not ballMagnetState.active

    game.StarterGui:SetCore("SendNotification", {
        Title = "Ball Magnet",
        Text = ballMagnetState.active and "Enabled." or "Disabled.",
        Duration = 1
    })

    if ballMagnetState.active then
        if ballMagnetState.conn then
            ballMagnetState.conn:Disconnect()
        end

        ballMagnetState.conn = RunService.Heartbeat:Connect(function()
            local radius = ballMagnetState.radius or 1
            if radius < 2 then return end

            local ball = Workspace.Terrain:FindFirstChild("Ball")
            if not ball then return end

            if ballMagnetState.hrp then
                local dist = (ballMagnetState.hrp.Position - ball.Position).Magnitude
                
                if ballMagnetState.useM2Hold and not game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
                    return
                end
                
                if dist <= radius and (time() - ballMagnetState.lastFire) >= ballMagnetState.fire_intrv then
                    ballMagnetState.lastFire = time()
                    pcall(function()
                        game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(buffers["grabball"]))
                    end)
                end
            end
        end)
    else
        if ballMagnetState.conn then
            ballMagnetState.conn:Disconnect()
            ballMagnetState.conn = nil
        end
    end
end)

ballmag:Slider("Ball Magnet Radius", 7, 7, 25, 0.5, function(v)
    ballMagnetState.radius = v
end)

ballmag:Toggle("Magnet Uses M2 Hold", "If Enabled, Ball Magnet Only Grabs While Right Click Is Held Down.", function()
    ballMagnetState.useM2Hold = not ballMagnetState.useM2Hold

    game.StarterGui:SetCore("SendNotification", {
        Title = "Magnet Uses M2 Hold",
        Text = ballMagnetState.useM2Hold and "Enabled." or "Disabled.",
        Duration = 1
    })
end)

local function setupCharacter(char)
    ballMagnetState.hrp = char:WaitForChild("HumanoidRootPart", 10)
end

if Players.LocalPlayer.Character then
    setupCharacter(Players.LocalPlayer.Character)
end

Players.LocalPlayer.CharacterAdded:Connect(function(char)
    setupCharacter(char)
end)

ballmag:Toggle("Ball Magnet Radius Hitbox", "Shows The Magnet's Radius Hitbox.", function()
    ballMagnetState.vizEnabled = not ballMagnetState.vizEnabled

    game.StarterGui:SetCore("SendNotification", {
        Title = "Ball Magnet Radius Hitbox",
        Text = ballMagnetState.vizEnabled and "Enabled." or "Disabled.",
        Duration = 1
    })

    local function removeHitbox()
        if ballMagnetState.hitbox then
            ballMagnetState.hitbox:Destroy()
            ballMagnetState.hitbox = nil
        end
    end

    local function stopVizLoop()
        if ballMagnetState.vizLoop then
            ballMagnetState.vizLoop:Disconnect()
            ballMagnetState.vizLoop = nil
        end
    end

    if not ballMagnetState.vizEnabled then
        stopVizLoop()
        removeHitbox()
        return
    end

    stopVizLoop()

    ballMagnetState.vizLoop = RunService.Heartbeat:Connect(function()
        if not ballMagnetState.vizEnabled or not ballMagnetState.active then
            removeHitbox()
            return
        end

        local terrain = workspace:FindFirstChild("Terrain")
        local ball = terrain and terrain:FindFirstChild("Ball")
        if not ball or not ball:IsA("MeshPart") then
            removeHitbox()
            return
        end

        local radius = ballMagnetState.radius or 1
        if radius < 2 then
            removeHitbox()
            return
        end

        if not ballMagnetState.hitbox then
            local hitbox = Instance.new("Part")
            hitbox.Name = "BallMagnetRange"
            hitbox.Shape = Enum.PartType.Ball
            hitbox.Material = Enum.Material.Neon
            hitbox.Color = Color3.fromRGB(15, 155, 155)
            hitbox.Transparency = 0.9
            hitbox.CanCollide = false
            hitbox.CanTouch = false
            hitbox.CanQuery = false
            hitbox.Anchored = true
            hitbox.Massless = true
            hitbox.Parent = workspace
            ballMagnetState.hitbox = hitbox
        end

        local d = radius * 2
        local hitbox = ballMagnetState.hitbox
        hitbox.Size = Vector3.new(d, d, d)
        hitbox.CFrame = ball.CFrame
    end)
end)

local autodrib = maintab2:Folder("Auto Dribble / Counter Features.", Color3.fromRGB(24, 255, 228), true)
autodrib:Label("Set The Auto-Counter Number To Your Character's Counter Move.")

local tick = tick
local ipairs = ipairs
local pairs = pairs
local unpack = unpack

local autoSkillState = {
    suppressNotifs = false,
    autoSkills = {
        ["toggleDribble"] = "dribble",
        ["toggleCounter1"] = "skill1",
        ["toggleCounter2"] = "skill2",
        ["toggleCounter3"] = "skill3",
        ["toggleCounter4"] = "skill4",
        ["toggleCounter5"] = "skill5",
        ["toggleTSpecial"] = "Tspecialer"
    },
    toggleDribble = false,
    toggleCounter1 = false,
    toggleCounter2 = false,
    toggleCounter3 = false,
    toggleCounter4 = false,
    toggleCounter5 = false,
    toggleTSpecial = false,
    keybindsEnabled = false,
    keybindSetup = false,
    cooldowns = {},
    showActiveCounters = false,
    useClosestTeammate = false,
    mCD = 65,
    fireRate = 0.05,
    playerCooldown = 0.33,
}

local buffer = buffer or { fromstring = function(str) return str end }
player = player or Players.LocalPlayer
localplayer = localplayer or player

StarterGui = StarterGui or game:GetService("StarterGui")
UserInputService = UserInputService or game:GetService("UserInputService")
ReplicatedStorage = ReplicatedStorage or game:GetService("ReplicatedStorage")

local tackle_anim = {
    "rbxassetid://109744655458082",
    "rbxassetid://113088324958896"
}

local function notify2(title, text, duration)
    if not autoSkillState.suppressNotifs then
        StarterGui:SetCore("SendNotification", { Title = title, Text = text, Duration = duration or 2 })
    end
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AutoCounterStatus"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local statusFrame = Instance.new("Frame")
statusFrame.Size = UDim2.new(0, 320, 0, 360)
statusFrame.Position = UDim2.new(1, -340, 0.5, -180)
statusFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
statusFrame.BorderSizePixel = 0
statusFrame.BackgroundTransparency = 0.1
statusFrame.Visible = false
statusFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = statusFrame

local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 2
uiStroke.Color = Color3.fromRGB(0, 0, 0)
uiStroke.Parent = statusFrame

local uiList = Instance.new("UIListLayout")
uiList.SortOrder = Enum.SortOrder.LayoutOrder
uiList.Padding = UDim.new(0, 6)
uiList.Parent = statusFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Auto Counters"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Parent = statusFrame

local statusLabels = {}
local counters = {
    {name = "Auto Dribble", key = "toggleDribble", bind = "Z"},
    {name = "Auto Counter (Move One)", key = "toggleCounter1", bind = "X"},
    {name = "Auto Counter (Move Two)", key = "toggleCounter2", bind = "C"},
    {name = "Auto Counter (Move Three)", key = "toggleCounter3", bind = "V"},
    {name = "Auto Counter (Move Four)", key = "toggleCounter4", bind = "N"},
    {name = "Auto Counter (Move Five)", key = "toggleCounter5", bind = "M"},
    {name = "T Special", key = "toggleTSpecial", bind = "L"},
}

local function updcounterui()
    if not autoSkillState.showActiveCounters then return end
    for i = 1, #statusLabels do
        statusLabels[i]:Destroy()
    end
    statusLabels = {}
    for i = 1, #counters do
        local c = counters[i]
        local enabled = autoSkillState[c.key]
        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, 0, 0, 28)
        lbl.BackgroundTransparency = 1
        lbl.Text = c.name .. " [" .. c.bind .. "]"
        lbl.TextColor3 = enabled and Color3.fromRGB(0, 255, 100) or Color3.fromRGB(255, 80, 80)
        lbl.TextXAlignment = Enum.TextXAlignment.Center
        lbl.Font = Enum.Font.GothamSemibold
        lbl.TextScaled = true
        lbl.Parent = statusFrame
        statusLabels[#statusLabels + 1] = lbl
    end
end

local connections = {}
local byteNetReliable = ReplicatedStorage:WaitForChild("ByteNetReliable")

local function hasball()
    return localplayer.Character and localplayer.Character:FindFirstChild("Ball") ~= nil
end

local function getcteammate()
    local character = localplayer.Character
    local root = character and character:FindFirstChild("HumanoidRootPart")
    if not root then return nil end
    local closest, closestDistSq = nil, math.huge
    local pPos = root.Position
    local pTeam = localplayer.Team
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= localplayer and plr.Team == pTeam and plr.Character then
            local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                local distSq = (pPos - hrp.Position).Magnitude ^ 2
                if distSq < closestDistSq then
                    closestDistSq = distSq
                    closest = plr
                end
            end
        end
    end
    return closest
end

local function fireSkill(skillName, targetPlayer)
    if not hasball() then return end
    local args
    if autoSkillState.useClosestTeammate and targetPlayer then
        local targetChar = targetPlayer.Character
        args = { buffer.fromstring(buffers["base"]), {{ skillName, targetChar }} }
    else
        args = { buffer.fromstring(buffers["base"]), {{ skillName }} }
    end
    byteNetReliable:FireServer(unpack(args))
end

local toggleKeys = {"toggleCounter1", "toggleCounter2", "toggleCounter3", "toggleCounter4", "toggleCounter5"}

local function montackleanim(animator, targetPlayer)
    if connections[targetPlayer] and connections[targetPlayer].animLoop then
        connections[targetPlayer].animLoop:Disconnect()
    end

    local animConnection = animator.AnimationPlayed:Connect(function(animTrack)
        local isTackle = false
        for _, id in ipairs(tackle_anim) do
            if animTrack.Animation.AnimationId == id then
                isTackle = true
                break
            end
        end
        if not isTackle then return end

        if targetPlayer.Team == localplayer.Team then return end

        local lastFire = 0
        local loopConn
        loopConn = game:GetService("RunService").Heartbeat:Connect(function()
            if not animTrack.IsPlaying or not hasball() then
                if loopConn then loopConn:Disconnect() end
                return
            end

            local now = tick()
            if autoSkillState.cooldowns[targetPlayer] and now - autoSkillState.cooldowns[targetPlayer] < autoSkillState.playerCooldown then
                return
            end
            if now - lastFire < autoSkillState.fireRate then return end

            lastFire = now

            local myChar = localplayer.Character
            local root = myChar and myChar:FindFirstChild("HumanoidRootPart")
            local targetHRP = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")

            if root and targetHRP and (root.Position - targetHRP.Position).Magnitude > autoSkillState.mCD then
                return
            end

            local closestTeammate = autoSkillState.useClosestTeammate and getcteammate() or nil

            for _, key in ipairs(toggleKeys) do
                if autoSkillState[key] then
                    fireSkill(autoSkillState.autoSkills[key], closestTeammate)
                end
            end
            if autoSkillState.toggleTSpecial then
                fireSkill(autoSkillState.autoSkills["toggleTSpecial"], closestTeammate)
            end
            if autoSkillState.toggleDribble then
                fireSkill(autoSkillState.autoSkills["toggleDribble"], closestTeammate)
            end

            autoSkillState.cooldowns[targetPlayer] = now
        end)

        connections[targetPlayer] = connections[targetPlayer] or {}
        connections[targetPlayer].animLoop = loopConn
    end)

    connections[targetPlayer] = connections[targetPlayer] or {}
    connections[targetPlayer].animatorConn = animConnection
end

local function setupPlayer(plr)
    if plr == localplayer then return end

    local function onCharAdded(char)
        if connections[plr] then
            for _, conn in pairs(connections[plr]) do
                if typeof(conn) == "RBXScriptConnection" then conn:Disconnect() end
            end
        end

        local humanoid = char:WaitForChild("Humanoid", 6)
        if not humanoid then return end

        local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator", 4)
        if animator then
            montackleanim(animator, plr)
        end
    end

    if plr.Character then onCharAdded(plr.Character) end
    plr.CharacterAdded:Connect(onCharAdded)
end

for _, plr in ipairs(Players:GetPlayers()) do
    setupPlayer(plr)
end

Players.PlayerAdded:Connect(setupPlayer)
Players.PlayerRemoving:Connect(function(plr)
    if connections[plr] then
        for _, conn in pairs(connections[plr]) do
            if typeof(conn) == "RBXScriptConnection" then conn:Disconnect() end
        end
        connections[plr] = nil
    end
end)

local function createAutoCounter(label, toggleKey)
    autodrib:Toggle(label, function()
        if autoSkillState.keybindsEnabled then
            notify2("calm error", "hey! dont try using gui toggles if u got keybinds on!!! 😡", 3)
            return
        end
        autoSkillState[toggleKey] = not autoSkillState[toggleKey]
        notify2(label, autoSkillState[toggleKey] and "Enabled." or "Disabled.", 3)
        updcounterui()
    end)
end

autodrib:Toggle("Show Active Auto Counters", "Shows Your Currently Toggled Auto Counters.", function()
    autoSkillState.showActiveCounters = not autoSkillState.showActiveCounters
    statusFrame.Visible = autoSkillState.showActiveCounters
    notify2("Status GUI", autoSkillState.showActiveCounters and "Enabled." or "Disabled.", 3)
    updcounterui()
end)

autodrib:Toggle("Toggle Keybinds", "Allows You To Toggle The Counters Using Binds.", function()
    autoSkillState.keybindsEnabled = not autoSkillState.keybindsEnabled
    notify2("Keybinds", autoSkillState.keybindsEnabled and "Enabled." or "Disabled.", 3)
    updcounterui()
end)

autodrib:Toggle("Use Closest Teammate", "When Enabled, Skills Will Target Your Closest Teammate (Pass Based Counters Only).", function()
    autoSkillState.useClosestTeammate = not autoSkillState.useClosestTeammate
    notify2("Closest Teammate", autoSkillState.useClosestTeammate and "Enabled." or "Disabled.", 3)
end)

autodrib:Slider("Counter Radius", 65, 25, 75, 1, function(v)
    autoSkillState.mCD = v
end)

createAutoCounter("Auto Dribble", "toggleDribble")
createAutoCounter("Auto Counter (Move One)", "toggleCounter1")
createAutoCounter("Auto Counter (Move Two)", "toggleCounter2")
createAutoCounter("Auto Counter (Move Three)", "toggleCounter3")
createAutoCounter("Auto Counter (Move Four)", "toggleCounter4")
createAutoCounter("Auto Counter (Move Five)", "toggleCounter5")
createAutoCounter("T Special", "toggleTSpecial")

if not autoSkillState.keybindSetup then
    autoSkillState.keybindSetup = true
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed or not autoSkillState.keybindsEnabled then return end
        local keyMap = {
            [Enum.KeyCode.Z] = {"toggleDribble", "Auto Dribble"},
            [Enum.KeyCode.X] = {"toggleCounter1", "Auto Counter (Move One)"},
            [Enum.KeyCode.C] = {"toggleCounter2", "Auto Counter (Move Two)"},
            [Enum.KeyCode.V] = {"toggleCounter3", "Auto Counter (Move Three)"},
            [Enum.KeyCode.N] = {"toggleCounter4", "Auto Counter (Move Four)"},
            [Enum.KeyCode.M] = {"toggleCounter5", "Auto Counter (Move Five)"},
            [Enum.KeyCode.L] = {"toggleTSpecial", "T Special"}
        }
        local mapping = keyMap[input.KeyCode]
        if mapping then
            local toggleKey, label = unpack(mapping)
            autoSkillState[toggleKey] = not (autoSkillState[toggleKey] or false)
            notify2(label, autoSkillState[toggleKey] and "Enabled." or "Disabled.", 3)
            updcounterui()
        end
    end)
end

updcounterui()

local autogoal = maintab:Folder("Auto Goal Features.", Color3.fromRGB(24, 255, 228), true)
autogoal:Label("Auto Goal: Automatically Does Auto Goal Steps Instantly, Use In 5v5.")

autogoal:Button("Isagi U-20 Goal", "Attempts To Do Isagi's U-20 Auto Goal By Teleporting To The Designated Area.", function()
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = plr.Character.HumanoidRootPart
        
        if plr.Team == game.Teams:FindFirstChild("A") then
            hrp.CFrame = CFrame.new(-536, 3, 999)
        elseif plr.Team == game.Teams:FindFirstChild("B") then
            hrp.CFrame = CFrame.new(-537, 3, 1549)
        end
        task.wait(0.2)
        ReplicatedStorage:WaitForChild("ByteNetReliable"):FireServer(
            buffer.fromstring(buffers["base"]),
            { { "skill3"} }
        )
    end
end)

autogoal:Button("Nagi Dream Goal", "Attempts To Do Nagi's Control Move Auto Goal In Flow.", function()
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = plr.Character.HumanoidRootPart
        
        if plr.Team == game.Teams:FindFirstChild("A") then
            hrp.CFrame = CFrame.new(-459, 3, 862)
        elseif plr.Team == game.Teams:FindFirstChild("B") then
            hrp.CFrame = CFrame.new(-611, 3, 1682) * CFrame.Angles(0, math.rad(180), 0)
        end
        task.wait(0.2)
        if plr.Character and plr.Character:FindFirstChild("Humanoid") then
            plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
        task.wait(0.2)
        ReplicatedStorage:WaitForChild("ByteNetReliable"):FireServer(
            buffer.fromstring(buffers["base"]),
            { { "skill2", true } }
        )
    end
end)

autogoal:Button("Barou Devour Goal", "Attempts To Do Barou's Devour Auto Goal By Teleporting Behind Two Enemy Players.", function()
    local plr = game.Players.LocalPlayer

    local function countEnemyTeamMembers()
        local op = game.Teams:FindFirstChild("A")
        if plr.Team == game.Teams:FindFirstChild("A") then
            op = game.Teams:FindFirstChild("B")
        end
        local count = 0
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player.Team == op then
                count = count + 1
            end
        end
        return count
    end
    
    local function getTwoRandomEnemies()
        local enemies = {}
        local op = game.Teams:FindFirstChild("A")
        if plr.Team == game.Teams:FindFirstChild("A") then
            op = game.Teams:FindFirstChild("B")
        end
        
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= plr and player.Team == op then
                table.insert(enemies, player)
            end
        end
        
        for i = #enemies, 2, -1 do
            local j = math.random(1, i)
            enemies[i], enemies[j] = enemies[j], enemies[i]
        end

        return enemies[1], enemies[2]
    end
    
    if countEnemyTeamMembers() >= 2 then
        local p1, p2 = getTwoRandomEnemies()
        if not p1 or not p2 then return end

        local function tpToPlayer(targetPlayer)
            local char = plr.Character or plr.CharacterAdded:Wait()
            local root = char:WaitForChild("HumanoidRootPart")
            local targetRoot = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")

            if root and targetRoot then
                root.CFrame = targetRoot.CFrame
            end
        end

        tpToPlayer(p1)
        task.wait(0.3)
        tpToPlayer(p2)
        
        task.wait(0.3)
        
        if plr.Team == game.Teams:FindFirstChild("A") then
            plr.Character.HumanoidRootPart.Position = Vector3.new(-625, 3, 925)
        elseif plr.Team == game.Teams:FindFirstChild("B") then
            plr.Character.HumanoidRootPart.Position = Vector3.new(-588, 3, 1643)
        end
    end
end)

local add = maintab:Folder("Fun Features.", Color3.fromRGB(24, 255, 228), true)
add:Label("Fun Features: Pretty Fun Features I'd Say.")

local AnimationId = "rbxassetid://113098409724280"
local safety = Vector3.new(-540, 3, 1274)

local invisState = {
    active = false,
    character = nil,
    humanoid = nil,
    animationTrack = nil
}

local function startInvisibility()
    if not invisState.humanoid then return end
    invisState.active = true

    local anim = Instance.new("Animation")
    anim.AnimationId = AnimationId
    local track = invisState.humanoid:LoadAnimation(anim)
    track.Priority = Enum.AnimationPriority.Action4
    track.Looped = false
    track:Play(0)
    track:AdjustSpeed(0)
    invisState.animationTrack = track
end

local function stopInvisibility()
    invisState.active = false
    if invisState.animationTrack then
        invisState.animationTrack:Stop()
        invisState.animationTrack:Destroy()
        invisState.animationTrack = nil
    end
    if invisState.humanoid then
        invisState.humanoid.CameraOffset = Vector3.new(0, 0, 0)
    end
end

RunService.RenderStepped:Connect(function()
    if not invisState.active then return end
    if not invisState.humanoid or not invisState.character then return end

    invisState.humanoid.CameraOffset = Vector3.new(0, 0, 0)

    local rootPart = invisState.character:FindFirstChild("HumanoidRootPart")
    if rootPart then
        local rayOrigin = rootPart.Position
        local rayDirection = Vector3.new(0, -500, 0)
        local raycastResult = Workspace:Raycast(rayOrigin, rayDirection)

        if not raycastResult then
            rootPart.CFrame = CFrame.new(safety)
        end
    end
end)

player.CharacterAdded:Connect(function(char)
    invisState.character = char
    invisState.humanoid = char:WaitForChild("Humanoid")

    if invisState.active then
        startInvisibility()
    end
end)

if player.Character then
    invisState.character = player.Character
    invisState.humanoid = player.Character:FindFirstChildOfClass("Humanoid")
end

add:Toggle("Invisibility V1 (Method: Animation)", "Makes You Almost Fully Invisible To Other Players Using An Animation.", function(v)
    if v then
        startInvisibility()
    else
        stopInvisibility()
    end
end)

add:Button("Invisibility V2 (Method: Clone)", "Makes You Almost Fully Invisible To Other Players Using Cloning. Click Z To Disable." , function(v)
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")

    local player = Players.LocalPlayer
    local enabled = true

    local charactersfolder = workspace:WaitForChild("characters", 10)
    if not charactersfolder then return end

    local character = charactersfolder:WaitForChild(player.Name, 15)
    if not character then return end

    if not character:FindFirstChild("Humanoid") or not character:FindFirstChild("HumanoidRootPart") then return end

    character.Archivable = true
    local characterroot = character:WaitForChild("HumanoidRootPart")
    characterroot.Transparency = 1

    local clone = character:Clone()
    if not clone then return end

    clone.Name = player.Name .. "_Ghost"
    clone.Parent = workspace

    for _, obj in ipairs(clone:GetDescendants()) do
        if obj:IsA("BasePart") or obj:IsA("MeshPart") or obj:IsA("Part") then
            if obj.Name == "HumanoidRootPart" then
                obj.Transparency = 1
            else
                obj.Transparency = 0.4
            end
            obj.CanCollide = true
        elseif obj:IsA("Decal") or obj:IsA("Texture") or obj:IsA("ShirtGraphic") then
            obj.Transparency = 0
        end
    end

    local cloneroot = clone:WaitForChild("HumanoidRootPart", 5)
    if cloneroot then
        cloneroot.Transparency = 1
    end

    local clonehumanoid = clone:WaitForChild("Humanoid", 5)
    if not cloneroot or not clonehumanoid then
        clone:Destroy()
        return
    end

    cloneroot.CFrame = character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
    clonehumanoid.PlatformStand = false
    clonehumanoid.WalkSpeed = 75
    clonehumanoid.JumpPower = 50

    player.Character = clone
    workspace.CurrentCamera.CameraSubject = clonehumanoid

    local animations = {
        Run  = "rbxassetid://90801998022970",
        Jump = "rbxassetid://80330677678466"
    }

    local runanim = Instance.new("Animation")
    runanim.AnimationId = animations.Run
    local runtrack = clonehumanoid:LoadAnimation(runanim)
    runtrack.Looped = true
    runtrack.Priority = Enum.AnimationPriority.Movement

    local jumpanim = Instance.new("Animation")
    jumpanim.AnimationId = animations.Jump
    local jumptrack = clonehumanoid:LoadAnimation(jumpanim)
    jumptrack.Looped = false
    jumptrack.Priority = Enum.AnimationPriority.Action

    local isrunning = false

    local teleportconn
    local speedenforceconn

    UserInputService.InputBegan:Connect(function(input, gameprocessed)
        if gameprocessed then return end
        if input.KeyCode == Enum.KeyCode.Z and enabled then
            enabled = false
            
            if teleportconn then teleportconn:Disconnect() end
            if speedenforceconn then speedenforceconn:Disconnect() end
            teleportconn = nil
            speedenforceconn = nil
            
            player.Character = character
            workspace.CurrentCamera.CameraSubject = character:FindFirstChild("Humanoid")
            
            if clone then clone:Destroy() end
            clone = nil
            
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") or part:IsA("MeshPart") then
                    if part.Name == "HumanoidRootPart" then
                        part.Transparency = 1
                    else
                        part.Transparency = 0
                    end
                    part.CanCollide = true
                elseif part:IsA("Decal") or part:IsA("Texture") or part:IsA("ShirtGraphic") then
                    part.Transparency = 0
                end
            end
            
            runtrack:Stop(0.2)
            jumptrack:Stop(0.2)
            isrunning = false
        end
    end)

    teleportconn = RunService.Heartbeat:Connect(function()
        if not enabled then return end
        if not cloneroot or not cloneroot.Parent or not characterroot or not characterroot.Parent then return end
        local clonepos = cloneroot.Position
        local underpos = clonepos - Vector3.new(0, 15, 0)
        characterroot.CFrame = CFrame.new(underpos, clonepos)
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") or part:IsA("MeshPart") then
                part.Transparency = 1
                part.CanCollide = false
            end
        end
    end)

    speedenforceconn = RunService.RenderStepped:Connect(function()
        if not enabled then return end
        if not clonehumanoid or not clonehumanoid.Parent then return end
        clonehumanoid.WalkSpeed = 75
        clonehumanoid.JumpPower = 50
    end)

    RunService.Heartbeat:Connect(function()
        if not enabled or not clonehumanoid or not clonehumanoid.Parent then return end
        local moving = clonehumanoid.MoveDirection.Magnitude > 0.01
        local currentstate = clonehumanoid:GetState()
        if moving and currentstate ~= Enum.HumanoidStateType.Jumping then
            if not isrunning then
                runtrack:Play(0.1)
                isrunning = true
            end
        else
            if isrunning then
                runtrack:Stop(0.3)
                isrunning = false
            end
        end
        if currentstate == Enum.HumanoidStateType.Jumping or currentstate == Enum.HumanoidStateType.Freefall then
            if not jumptrack.IsPlaying then
                jumptrack:Play(0.15)
            end
        elseif jumptrack.IsPlaying then
            jumptrack:Stop(0.2)
        end
    end)

    player.CharacterRemoving:Connect(function()
        enabled = false
        if teleportconn then teleportconn:Disconnect() end
        if speedenforceconn then speedenforceconn:Disconnect() end
        runtrack:Stop(0)
        jumptrack:Stop(0)
        isrunning = false
        if clone then clone:Destroy() end
    end)
end)

local passingState = {
    InfiniteRangePassing = false,
    busy = false
}

local plr = Players.LocalPlayer
local mouse = plr:GetMouse()
local Camera = workspace.CurrentCamera
local passpass = ReplicatedStorage:WaitForChild("ByteNetReliable")

local keyToSkill = {
    [Enum.KeyCode.One]   = "skill1",
    [Enum.KeyCode.Two]   = "skill2",
    [Enum.KeyCode.Three] = "skill3",
    [Enum.KeyCode.Four]  = "skill4",
}

local function getClosestPlayerToCursor()
    local mousePos = UserInputService:GetMouseLocation()
    local closestChar, closestDist = nil, math.huge
    local char, hum, hrp, screenPos, onScreen, dist

    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= plr and p.Team == plr.Team then
            char = p.Character
            if char then
                hum = char:FindFirstChild("Humanoid")
                hrp = char:FindFirstChild("HumanoidRootPart")

                if hum and hrp and hum.Health > 0 then
                    screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
                    if onScreen then
                        dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                        if dist < closestDist then
                            closestDist = dist
                            closestChar = char
                        end
                    end
                end
            end
        end
    end

    return closestChar
end

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if not passingState.InfiniteRangePassing then return end
    if passingState.busy then return end
    if plr.Team == game.Teams.lobby then return end

    local skillName = keyToSkill[input.KeyCode]
    if not skillName then return end

    local targetChar = getClosestPlayerToCursor()
    if not targetChar then return end

    passingState.busy = true

    passpass:FireServer(
        buffer.fromstring(buffers["base"]),
        {
            {
                skillName,
                targetChar
            }
        }
    )

    task.delay(0.1, function()
        passingState.busy = false
    end)
end)

add:Toggle("Infinite Range Passing", "Pass To The Closest Teammate To Your Mouse From Anywhere.", function(v)
    passingState.InfiniteRangePassing = v
    StarterGui:SetCore("SendNotification", {
        Title = "Infinite Pass",
        Text = v and "Enabled." or "Disabled.",
        Duration = 5
    })
end)

add:Toggle("Auto Break Server (Demon's Contract)", "When Using Demon's Contract With Kunigami, It Will Automatically Reset.", function(v)
    local Players = game:GetService("Players")
    local StarterGui = game:GetService("StarterGui")

    getgenv().AutoBreakServerEnabled = v

    StarterGui:SetCore("SendNotification", {
        Title = "Auto Break Server",
        Text = v and "Enabled." or "Disabled.",
        Duration = 3
    })

    if getgenv().AutoBreakServerConnection then
        getgenv().AutoBreakServerConnection:Disconnect()
        getgenv().AutoBreakServerConnection = nil
    end

    getgenv().DemonContractActive = false

    if not v then return end

    local function hookCharacter(char)
        local humanoid = char:WaitForChild("Humanoid")
        local animator = humanoid:WaitForChild("Animator")

        if getgenv().AutoBreakServerConnection then
            getgenv().AutoBreakServerConnection:Disconnect()
        end

        getgenv().AutoBreakServerConnection = animator.AnimationPlayed:Connect(function(track)
            if not getgenv().AutoBreakServerEnabled or getgenv().DemonContractActive then
                return
            end

            if track.Animation and track.Animation.AnimationId == "rbxassetid://91509980165830" then
                getgenv().DemonContractActive = true

                task.delay(2, function()
                    getgenv().DemonContractActive = false

                    local charNow = Players.LocalPlayer.Character
                    if getgenv().AutoBreakServerEnabled and charNow then
                        local hum = charNow:FindFirstChildOfClass("Humanoid")
                        if hum then
                            hum.Health = 0
                        end
                    end
                end)
            end
        end)
    end

    if Players.LocalPlayer.Character then
        hookCharacter(Players.LocalPlayer.Character)
    end

    Players.LocalPlayer.CharacterAdded:Connect(hookCharacter)
end)

add:Button("Steal Screen Time (funny)", "Click Z To Disable, Steals Screen Time.", function()
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    local cam = workspace.CurrentCamera

    local stopped = false

    game.UserInputService.InputBegan:Connect(function(key, bg)
        if bg then return end

        if key.KeyCode == Enum.KeyCode.Z then
            stopped = true
        end
    end)

    local ogPos = plr.Character.HumanoidRootPart.Position
    local incut = false
    local anim = nil
    local bg = nil
    local bp = nil

    local function CleanupFloat()
        if bg then bg:Destroy() bg = nil end
        if bp then bp:Destroy() bp = nil end
    end

    local con
    con = game["Run Service"].RenderStepped:Connect(function()
        if stopped then
            CleanupFloat()
            con:Disconnect()
            return
        end

        if char ~= plr.Character then char = plr.Character end
        local hum = char:FindFirstChild("Humanoid")
        local root = char:FindFirstChild("HumanoidRootPart")

        if cam.CameraType == Enum.CameraType.Scriptable then
            if incut == false then
                anim = hum.Animator:LoadAnimation(game:GetService("ReplicatedStorage").emoteWiki.myanimefans.Animation)
                anim.Looped = true
                anim:Play()
                anim:AdjustSpeed(4)

                bg = Instance.new("BodyGyro")
                bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 10000
                bg.D = 500
                bg.Parent = root

                bp = Instance.new("BodyPosition")
                bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bp.P = 10000
                bp.D = 500
                bp.Parent = root
            end
            incut = true

            local targetCFrame = cam.CFrame * CFrame.new(0, -1.3, -2.3) * CFrame.Angles(0, math.rad(180), 0)
            bp.Position = targetCFrame.Position
            bg.CFrame = targetCFrame
        else
            if incut == true then
                incut = false
                if anim then
                    anim:Stop()
                end
                CleanupFloat()
                root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                root.CFrame = CFrame.new(ogPos)
                root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
            ogPos = root.Position
        end
    end)
end)

add:Button("Goalkeeper Anywhere (Rejoin To Disable.) (Credit: someone cool..)", "Allows You To Do GK Side Dashes Instead!", function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Goalkeeper Anywhere",
        Text = "If You Don't See GK Animations, Your Executor Doesn't Support The Required Functions.",
        Duration = 10,
        Button1 = "ok my executor is fine",
        Button2 = "aw man my executor sucks"
    })

    local module = game:GetService("ReplicatedStorage").util.actionUtil
    local env = require(module)

    local oldfunc
    oldfunc = hookfunction(env.checkGK, function (...)
        return true
    end)
end)

add:Button("Shachoko GK Catch (Req. GK Position.)", "Makes It Almost Impossible To Be Scored On As GK And Does Shachoko Kick.", function()
loadstring(cleanedPayloads['hr1'])()
end)

local oth = maintab:Folder("Other Blatant Features.", Color3.fromRGB(24, 255, 228), true)
oth:Label("Other Blatant Features: It's In The Name.")

local blatantState = {
    enabled = false,
    loopConnection = nil
}

local rs = game:GetService("RunService")
local sg = game:GetService("StarterGui")
local ws = game:GetService("Workspace")

local function setCollide(state)
    local a = ws.map.gkbarriar.Abarriar
    local b = ws.map.gkbarriar.Bbarriar
    local ag = ws.map.Agoal
    local bg = ws.map.Bgoal

    if a then a.CanCollide = state end
    if b then b.CanCollide = state end
    if ag then ag.CanCollide = state end
    if bg then bg.CanCollide = state end
end

oth:Toggle("Blatant Mode", "Removes Collisions With Goal Boxes.", function()
    blatantState.enabled = not blatantState.enabled
    if blatantState.enabled then
        blatantState.loopConnection = rs.Heartbeat:Connect(function() setCollide(false) end)
        sg:SetCore("SendNotification",{Title="Blatant Mode",Text="Enabled.",Duration=3})
    else
        if blatantState.loopConnection then blatantState.loopConnection:Disconnect() blatantState.loopConnection = nil end
        setCollide(true)
        sg:SetCore("SendNotification",{Title="Blatant Mode",Text="Disabled.",Duration=3})
    end
end)

local nostunState = {
    enabled = false
}

local nostunPlayer = game.Players.LocalPlayer

local function applyNoStun()
    if not nostunState.enabled then return end
    local c = nostunPlayer.Character
    if not c then return end
    local h = c:FindFirstChild("Humanoid")
    if h then
        h.WalkSpeed = 40
    end
end

local function setupCharacter(char)
    if nostunState.enabled then
        applyNoStun()
    end
end

nostunPlayer.CharacterAdded:Connect(setupCharacter)

if nostunPlayer.Character then
    setupCharacter(nostunPlayer.Character)
end

oth:Toggle("No Stun", "Overrides The Stunned State So You Can Move.", function(v)
    nostunState.enabled = v
    if v then
        game.StarterGui:SetCore("SendNotification", {Title="No Stun", Text="Enabled"})
        applyNoStun()
    else
        game.StarterGui:SetCore("SendNotification", {Title="No Stun", Text="Disabled"})
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if nostunState.enabled then
        applyNoStun()
    end
end)

local brickSpamState = {
    running = false
}

oth:Toggle("Spam Brick Sound (5v5 + GK Only.)", "This SHOULD Be Self Explanatory.", function(state)
    brickSpamState.running = state

    if brickSpamState.running then
        sg:SetCore("SendNotification", {
            Title = "Brick Spam";
            Text = "Enabled.";
            Duration = 3
        })

        task.spawn(function()
            local char = game.Players.LocalPlayer.Character
            local root = char:WaitForChild("HumanoidRootPart")

            local team = game.Players.LocalPlayer.Team and game.Players.LocalPlayer.Team.Name
            local targetPos

            if team == "A" then
                targetPos = Vector3.new(-510, 3, 1706)
            elseif team == "B" then
                targetPos = Vector3.new(-559, 3, 843)
            end

            if targetPos then
                while brickSpamState.running do
                    root.CFrame = CFrame.new(targetPos)
                    task.wait(0.1)

                    local args = {
                        buffer.fromstring(buffers["base"]),
                        {
                            {
                                "kick",
                                27,
                                false,
                                vector.create(0, 1, 0)
                            }
                        }
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(unpack(args))

                    task.wait(0.05)
                end
            end
        end)
    else
        sg:SetCore("SendNotification", {
            Title = "Brick Spam";
            Text = "Disabled.";
            Duration = 3
        })
    end
end)

if not workspace:FindFirstChild("ddddegrdgdhgrgtedrhgdrtg") then
    local p = Instance.new("Part")
    p.Name = "ddddegrdgdhgrgtedrhgdrtg"
    p.Size = Vector3.new(1000, 1, 1000)
    p.Transparency = 1
    p.Anchored = true
    p.CanCollide = true
    p.Position = Vector3.new(5000, 750, 5000)
    p.Parent = workspace
end

local murder = maintab:Folder("''This Isn't Soccer Anymore''! Features.", Color3.fromRGB(24, 255, 228), true)
murder:Label("Evil Features: You Are Killing People In A Soccer Match??")

attackmode = "KILL, KILL, KILL!"
youareamurderer = false
originalCFrame = nil

local connection

murder:Button("Evil Info", "This Comes With Instructions On How To Use The Feature Below.", function()
    StarterGui:SetCore("SendNotification", {
        Title = "Evil Info",
        Text = "KILL, KILL, KILL! will kill the victim.",
        Duration = 10
    }) 
    task.wait(0.5)
    StarterGui:SetCore("SendNotification", {
        Title = "Evil Info",
        Text = "New Commentator! will send the victim to the commentator box.",
        Duration = 10
    })
end)

local grabz = {
    "rbxassetid://123994829903056",
    "rbxassetid://73092083880817",
    "rbxassetid://114866946968143",
    "rbxassetid://88690614253524",
    "rbxassetid://107389719253201",
	"rbxassetid://133382731392749"
}

local function isgrabbing(animTrack)
    if not animTrack.Animation then return false end
    local animId = animTrack.Animation.AnimationId
    for _, id in ipairs(grabz) do
        if animId == id or animId:find(id) then
            return true
        end
    end
    return false
end

local function killthemNOW()
    if connection then
        connection:Disconnect()
        connection = nil
    end
    
    local character = game:GetService("Players").LocalPlayer.Character
    if not character then return end
    
    local humanoid = character:FindFirstChildOfClass("Humanoid") or character:WaitForChild("Humanoid", 5)
    if not humanoid then return end
    
    connection = humanoid.AnimationPlayed:Connect(function(animTrack)
        if not youareamurderer then return end
        if not isgrabbing(animTrack) then return end
        
        local root = character:FindFirstChild("HumanoidRootPart")
        if not root then return end
        
        local originalCFrame = root.CFrame
        task.wait(0.2)
        
        local targetPos
        if attackmode == "KILL, KILL, KILL!" then
            targetPos = Vector3.new(5000, 760, 5000)
        elseif attackmode == "New Commentator?" then
            targetPos = Vector3.new(-6, 2, 3237)
        elseif attackmode == "PrisonA" then
            targetPos = Vector3.new(-512, 3, 1731)
        elseif attackmode == "PrisonB" then
            targetPos = Vector3.new(-558, 3, 816)
        else
            return
        end
        
        local isAnimPlaying = true
        local teleportLoop = game:GetService("RunService").Heartbeat:Connect(function()
            if isAnimPlaying and root and root.Parent then
                root.CFrame = CFrame.new(targetPos)
            end
        end)
        
        local killConn
        killConn = animTrack.Stopped:Connect(function()
            if killConn then killConn:Disconnect() end
            isAnimPlaying = false
            if teleportLoop then teleportLoop:Disconnect() end
            if root and root.Parent then
                root.CFrame = originalCFrame
            end
        end)
        
        task.delay(10, function()
            if killConn then killConn:Disconnect() end
            if teleportLoop then teleportLoop:Disconnect() end
            isAnimPlaying = false
        end)
    end)
end

murder:Toggle("THIS ISN'T SOCCER ANYMORE!", "When Using Certain Grab Moves, This Will DEVOUR The Victim.", function(state)
    youareamurderer = state
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "evil ass soccer mode",
        Text = youareamurderer and "you're a dead man!! im sending you straight to hell!" or "you're a good man arthur morgan.",
        Duration = 4
    })

    if youareamurderer and game:GetService("Players").LocalPlayer.Character then
        killthemNOW()
    end
end)

murder:Dropdown("Attack Method", {"KILL, KILL, KILL!", "New Commentator?", "PrisonA", "PrisonB"}, function(v) 
    attackmode = v
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Attack Method",
        Text = "Attack Method: " .. attackmode,
        Duration = 3
    })
end)

game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
    if connection then
        connection:Disconnect()
        connection = nil
    end
    
    task.wait(1)
    
    if youareamurderer then
        killthemNOW()
    end
end)

if game:GetService("Players").LocalPlayer.Character then
    killthemNOW()
end

local th = maintab:Folder("Trap Helper.", Color3.fromRGB(24, 255, 228), true)
th:Label("Trap Helper: Automatically Moves Toward Ball During Trap Moves.")

local trapAnims = {
    "rbxassetid://73387016994281",
    "rbxassetid://101043441232233",
    "rbxassetid://96593185131882",
    "rbxassetid://116422938520670",
    "rbxassetid://90734196141468",
    "rbxassetid://85349589701503",
    "rbxassetid://120351399679118"
}

local trapState = {
    enabled = false,
    detected = false,
    armTime = 0,
    active = false,
    track = nil,
    ball = nil,
    conn = nil,
    alignOri = nil
}

local armWindow = 0.35
local trapMaxDist = 50
local trapSpeed = 50

local function findBall()
    local terrain = workspace.Terrain
    if terrain then
        local b = terrain:FindFirstChild("Ball")
        if b and b:IsA("BasePart") then return b end
    end
end

local function cleanupTrap()
    if trapState.conn then 
        trapState.conn:Disconnect() 
        trapState.conn = nil 
    end
    trapState.active = false
    trapState.track = nil
    trapState.ball = nil
    if trapState.alignOri then 
        trapState.alignOri:Destroy() 
        trapState.alignOri = nil 
    end
end

local function startLerpToBall(hrp, ball, track)
    if (ball.Position - hrp.Position).Magnitude > trapMaxDist then return end

    trapState.ball = ball
    trapState.track = track
    trapState.active = true

    if trapState.alignOri then trapState.alignOri:Destroy() end
    local ao = Instance.new("AlignOrientation")
    ao.Name = "TrapFaceAlign"
    ao.Mode = Enum.OrientationAlignmentMode.OneAttachment
    ao.Attachment0 = hrp:FindFirstChild("RootAttachment") or Instance.new("Attachment", hrp)
    ao.RigidityEnabled = false
    ao.MaxTorque = 20000
    ao.Responsiveness = 1000
    ao.Parent = hrp
    trapState.alignOri = ao

    if trapState.conn then trapState.conn:Disconnect() end

    trapState.conn = RunService.RenderStepped:Connect(function(dt)
        if not trapState.track or not trapState.track.IsPlaying then
            cleanupTrap()
            return
        end

        if not trapState.ball or not trapState.ball.Parent then
            cleanupTrap()
            return
        end

        local cur = hrp.Position
        local tgt = trapState.ball.Position - Vector3.new(0, 3, 0)
        local dir = tgt - cur
        local dist = dir.Magnitude

        if dist > trapMaxDist or dist < 0.5 then
            cleanupTrap()
            return
        end

        local move = dir.Unit * (trapSpeed * dt)
        hrp.CFrame = CFrame.new(cur + move) * hrp.CFrame.Rotation

        local ballFlat = Vector3.new(trapState.ball.Position.X, hrp.Position.Y, trapState.ball.Position.Z)
        if trapState.alignOri then
            trapState.alignOri.CFrame = CFrame.lookAt(hrp.Position, ballFlat)
        end
    end)

    track.Stopped:Connect(function()
        cleanupTrap()
    end)
end

local function hookTraps(char)
    local animator = char:WaitForChild("Humanoid"):WaitForChild("Animator")
    local hrp = char:WaitForChild("HumanoidRootPart")

    animator.AnimationPlayed:Connect(function(track)
        if not trapState.enabled then return end
        if not track.Animation then return end

        local id = track.Animation.AnimationId
        for _, animId in ipairs(trapAnims) do
            if id == animId and os.clock() >= trapState.armTime then
                trapState.detected = true

                task.delay(0.05, function()
                    if track.IsPlaying then
                        local ball = findBall()
                        if ball then
                            startLerpToBall(hrp, ball, track)
                        end
                    end
                end)

                break
            end
        end
    end)
end

local function setupCharacter(char)
    hookTraps(char)
end

if player.Character then
    setupCharacter(player.Character)
end
player.CharacterAdded:Connect(setupCharacter)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType ~= Enum.UserInputType.Keyboard then return end

    local code = input.KeyCode.Value
    if code < Enum.KeyCode.One.Value or code > Enum.KeyCode.Five.Value then return end

    if trapState.active then return end

    trapState.armTime = os.clock()
    trapState.detected = false

    task.delay(armWindow, function()
        if not trapState.detected then return end

        local char = player.Character
        if not char then return end

        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end

        local ball = findBall()
        if ball then
            local tracks = char.Humanoid.Animator:GetPlayingAnimationTracks()
            for _, track in ipairs(tracks) do
                if track.Animation and table.find(trapAnims, track.Animation.AnimationId) then
                    startLerpToBall(hrp, ball, track)
                    break
                end
            end
        end
    end)
end)

th:Toggle("Trap Helper", function(state)
    trapState.enabled = state
    StarterGui:SetCore("SendNotification", {
        Title = "Trap Helper",
        Text = state and "Enabled." or "Disabled.",
        Duration = 1
    })
end)

th:Slider("Trap Helper Max Distance", 50, 50, 200, 1, function(v)
    trapMaxDist = v
end)

th:Slider("Trap Helper Speed", 50, 50, 1000, 1, function(v)
    trapSpeed = v
end)

local d = maintab:Folder("Distance Move Buffs.", Color3.fromRGB(24, 255, 228), true)
d:Label("Distance Move Buffs: Buffs Movement Based Moves.")

local player = Players.LocalPlayer
local rs = RunService

local DashConfigs = {
    Tackle = {
        animId = "rbxassetid://109744655458082",
        sliderVar = "tackleDist",
        duration = 0.4,
        cooldown = 0.15,
        wait = 0
    },
    Rush = {
        animId = "rbxassetid://79394729551302",
        sliderVar = "rushDist",
        duration = 0.4,
        cooldown = 0.15,
        wait = 0.15
    },
    GKDash = {
        animId = "rbxassetid://90537955276413",
        sliderVar = "gkDist",
        duration = 0.55,
        cooldown = 0.15,
        wait = 0.05
    },
    Naruhaya = {
        animId = "rbxassetid://82240286756891",
        sliderVar = "naruhayaDist",
        duration = 0.45,
        cooldown = 0.15,
        wait = 0.33
    },
    Raumdeuter = {
        animIds = {["rbxassetid://81582265162782"] = true},
        sliderVar = "raumDist",
        duration = 0.55,
        cooldown = 0.15,
        wait = 0.1
    },
    DraconicRush = {
        animId = "rbxassetid://95359966795185",
        sliderVar = "dracDist",
        duration = 0.625,
        cooldown = 0.15,
        wait = 0.175
    },
    StepOvers = {
        animId = "rbxassetid://84063609284472",
        sliderVar = "stepDist",
        duration = 0.15,
        cooldown = 0.15,
        wait = 1.275
    },
    KaiserOffBall = {
        animId = "rbxassetid://110660551661470",
        sliderVar = "kaiserDist",
        duration = 0.55,
        cooldown = 0.15,
        wait = 0.15
    },
    OcclusionBreak = {
        animId = "rbxassetid://116181317759538",
        sliderVar = "occlusionDist",
        duration = 1.0,
        cooldown = 0.15,
        wait = 0.2
    },
    DivingHeader = {
        animId = "rbxassetid://91506202951715",
        sliderVar = "divingDist",
        duration = 0.35,
        cooldown = 0.15,
        wait = 0.05
    },
    ReflexTackle = {
        animId = "rbxassetid://113088324958896",
        sliderVar = "reflexDist",
        duration = 0.2,
        cooldown = 0.15,
        wait = 0
    },
    RazorBreak = {
        animIds = {
            ["rbxassetid://131681055843039"] = "Front",
            ["rbxassetid://114963791456755"] = "Left",
            ["rbxassetid://115966658644919"] = "Right",
            ["rbxassetid://122404546980503"] = "Back",
            ["rbxassetid://70754845580062"] = "RightBack",
            ["rbxassetid://128061536134952"] = "LeftBack",
            ["rbxassetid://71501932579824"] = "FrontRight",
            ["rbxassetid://96632954418440"] = "FrontLeft",
            ["rbxassetid://70397727954557"] = "Front",
            ["rbxassetid://131196726012273"] = "Front"
        },
        sliderVar = "razorDist",
        duration = 0.35,
        cooldown = 0.15,
        wait = 0.1,
        isDirectional = true
    },
    CutIn = {
        animIds = {
            ["rbxassetid://71217538180364"] = true,
            ["rbxassetid://87853371514282"] = true
        },
        sliderVar = "dragDist",
        duration = 1.0,
        cooldown = 0.15,
        wait = 0.2
    },
    HeroInstinct = {
        animId = "rbxassetid://82417661349987",
        sliderVar = "instinctDist",
        duration = 1.25,
        cooldown = 0.15,
        wait = 0.33
    },
    CloseQuarterDribble = {
        animId = "rbxassetid://94171465685487",
        sliderVar = "quarterDist",
        duration = 2.25,
        cooldown = 0.15,
        wait = 0.18
    },
    SpeedyTurn = {
        animId = "rbxassetid://109145068926350",
        sliderVar = "speedyDist",
        duration = 0.7,
        cooldown = 0.15,
        wait = 0.05
    },
    Fetch = {
        animId = "rbxassetid://110734304480469",
        sliderVar = "fetchDist",
        duration = 0.525,
        cooldown = 0.15,
        wait = 0.125
    },
    GoGo = {
        animId = "rbxassetid://111297568709238",
        sliderVar = "gogoDist",
        duration = 0.35,
        cooldown = 0.15,
        wait = 0.55
    },
    GuardDog = {
        animId = "rbxassetid://111439544531399",
        sliderVar = "guardDist",
        duration = 0.35,
        cooldown = 0.15,
        wait = 0.1
    },
    ZombieDribble = {
        animId = "rbxassetid://102294508090597",
        sliderVar = "zombDist",
        duration = 1.7,
        cooldown = 0.15,
        wait = 0.15
    },
    Creative = {
        animId = "rbxassetid://77926234700416",
        sliderVar = "creativeDist",
        duration = 0.2,
        cooldown = 0.15,
        wait = 0.85
    },
    GlacialCut = {
        animId = "rbxassetid://116769918041530",
        sliderVar = "glacialDist",
        duration = 0.5,
        cooldown = 0.15,
        wait = 0.425
    },
    Beautiful = {
        animIds = {
            ["rbxassetid://132788854309681"] = true,
            ["rbxassetid://138985718053619"] = true
        },
        sliderVar = "beautifulDist",
        duration = 0.3,
        cooldown = 0.15,
        wait = 0
    },
    ControlVar = {
        animId = "rbxassetid://77370115011368",
        sliderVar = "controlVarDist",
        duration = 0.3,
        cooldown = 0.15,
        wait = 0.1
    },
    Corvine = {
        animId = "rbxassetid://79459013513539",
        sliderVar = "corvineDist",
        duration = 0.4,
        cooldown = 0.15,
        wait = 1.1
    },
    Kusarigama = {
        animId = "rbxassetid://84772583028665",
        sliderVar = "kusarDist",
        duration = 0.55,
        cooldown = 0.15,
        wait = 0
    },
    ShadowStep = {
        animIds = {
            ["rbxassetid://133810381664491"] = true,
            ["rbxassetid://139230259021390"] = true
        },
        sliderVar = "shadowDist",
        duration = 0.3,
        cooldown = 0.15,
        wait = 0
    },
    SilentSteal = {
        animId = "rbxassetid://89782964116671",
        sliderVar = "silentDist",
        duration = 0.55,
        cooldown = 0.15,
        wait = 0.1
    },
    NutmegReflex = {
        animId = "rbxassetid://73266865968554",
        sliderVar = "reflexNutmegDist",
        duration = 0.25,
        cooldown = 0.15,
        wait = 0.05
    },
    TwinSteps = {
        animId = "rbxassetid://106299517516303",
        sliderVar = "twinStepsDist",
        duration = 0.15,
        cooldown = 0.15,
        wait = 1.75
    },
    KingsPath = {
        animId = "rbxassetid://73560885704292",
        sliderVar = "kingsDist",
        duration = 1.175,
        cooldown = 0.15,
        wait = 0.4
    },
    MachCutIn = {
        animIds = {
            ["rbxassetid://133945265328817"] = true,
            ["rbxassetid://88448030655006"] = true
        },
        sliderVar = "machDist",
        duration = 0.15,
        cooldown = 0.15,
        wait = 0.625
    },
    GoldenZone = {
        animId = "rbxassetid://132426354821688",
        sliderVar = "goldenDist",
        duration = 2.0,
        cooldown = 0.15,
        requiresBall = true,
        wait = 0.15
    },
    Devour = {
        animId = "rbxassetid://117921992582675",
        sliderVar = "devourMaxDist",
        speed = 150,
        cooldown = 0.15,
        isUnlimited = true,
        wait = 0.2
    }
}

local Distances = {}
for _, cfg in pairs(DashConfigs) do
    Distances[cfg.sliderVar] = 0
end

local ActiveDashes = {}
local cachedHRP = nil
local renderConn = nil

local ZERO = Vector3.new()
local DEFAULT_DIR = Vector3.new(0,0,1)

local DirectionOffsets = {
    Front = Vector3.new(0, 0, 1),
    Back = Vector3.new(0, 0, -1),
    Left = Vector3.new(-1, 0, 0),
    Right = Vector3.new(1, 0, 0),
    FrontLeft = Vector3.new(-1, 0, 1).Unit,
    FrontRight = Vector3.new(1, 0, 1).Unit,
    LeftBack = Vector3.new(-1, 0, -1).Unit,
    RightBack = Vector3.new(1, 0, -1).Unit,
}

local function updateDashes(dt)
    for i = #ActiveDashes, 1, -1 do
        local dash = ActiveDashes[i]
        local hrp = dash.hrp
        if not hrp or not hrp.Parent then
            table.remove(ActiveDashes, i)
        else
            local step = dash.cfg.isUnlimited and (dash.speed * dt) or math.min(dash.speed * dt, dash.remaining)
        local moveDir

        if dash.isDirectional then
            local baseLook = hrp.CFrame.LookVector
            local right = baseLook:Cross(Vector3.new(0,1,0))
            local offset = dash.offset
            moveDir = (right * -offset.X + baseLook * offset.Z).Unit
        else
            local look = hrp.CFrame.LookVector
            moveDir = Vector3.new(look.X, 0, look.Z).Unit
            if moveDir.Magnitude < 0.01 then
                moveDir = DEFAULT_DIR
            end
        end

        local newPos = hrp.Position + moveDir * step
        hrp.CFrame = CFrame.new(newPos.X, hrp.Position.Y, newPos.Z) * CFrame.new(ZERO, moveDir)

        dash.remaining = dash.remaining - step
        if dash.remaining <= 0 then
            table.remove(ActiveDashes, i)
        end
        end
    end
    
    if #ActiveDashes == 0 and renderConn then
        renderConn:Disconnect()
        renderConn = nil
    end
end

local function startUpdateIfNeeded()
    if not renderConn and #ActiveDashes > 0 then
        renderConn = game:GetService("RunService").RenderStepped:Connect(updateDashes)
    end
end

local function startDash(hrp, cfg, track, directionName)
    local dist = Distances[cfg.sliderVar]
    if dist <= 0 then return end
    
    task.delay(cfg.wait or 0, function()
        if not hrp or not hrp.Parent then return end
        
        local dash = {
            hrp = hrp,
            remaining = dist,
            cfg = cfg,
            isDirectional = cfg.isDirectional == true
        }
        
        if dash.isDirectional and directionName then
            dash.offset = DirectionOffsets[directionName] or Vector3.new(0,0,1)
        end

        if cfg.isUnlimited then
            dash.remaining = math.huge
            dash.speed = cfg.speed
            if track then
                local stoppedConn
                stoppedConn = track.Stopped:Connect(function()
                    dash.remaining = 0
                    if stoppedConn then stoppedConn:Disconnect() end
                end)
            end
        else
            dash.speed = dist / cfg.duration
        end
        
        table.insert(ActiveDashes, dash)
        startUpdateIfNeeded()
    end)
end

local function getCleanAnimId(animStr)
    if not animStr then return "" end
    return string.match(tostring(animStr), "%d+") or ""
end

local function onAnimationPlayed(track)
    if not track.Animation then return end
    local id = tostring(track.Animation.AnimationId or "")
    local cleanId = getCleanAnimId(id)
    
    for _, cfg in pairs(DashConfigs) do
        local match = false
        local directionName = nil
        
        if cfg.animId then
            local cleanTarget = getCleanAnimId(cfg.animId)
            if id == cfg.animId or (cleanId ~= "" and cleanId == cleanTarget) then
                match = true
            end
        elseif cfg.animIds then
            for targetAnim, dir in pairs(cfg.animIds) do
                local cleanTarget = getCleanAnimId(targetAnim)
                if id == targetAnim or (cleanId ~= "" and cleanId == cleanTarget) then
                    match = true
                    if cfg.isDirectional then
                        directionName = dir
                    end
                    break
                end
            end
        end
        
        if match then
            local currentHRP = cachedHRP
            if not currentHRP or not currentHRP.Parent then
                local ch = player.Character
                if ch then
                    currentHRP = ch:FindFirstChild("HumanoidRootPart")
                    cachedHRP = currentHRP
                end
            end
            if currentHRP and currentHRP.Parent then
                local canDash = true
                if cfg.requiresBall then
                    local ball = currentHRP.Parent:FindFirstChild("Ball")
                    if not ball or not ball:IsA("MeshPart") then
                        canDash = false
                    end
                end
                if canDash then
                    startDash(currentHRP, cfg, track, directionName)
                end
            end
        end
    end
end

local function setupCharacter(char)
    if not char then return end
    task.spawn(function()
        local hum = char:WaitForChild("Humanoid", 5) or char:FindFirstChildOfClass("Humanoid")
        if not hum then return end
        local animator = hum:WaitForChild("Animator", 5) or hum:FindFirstChildOfClass("Animator")
        if not animator then
            animator = Instance.new("Animator")
            animator.Parent = hum
        end
        cachedHRP = char:WaitForChild("HumanoidRootPart", 5) or char:FindFirstChild("HumanoidRootPart")
        if animator then
            animator.AnimationPlayed:Connect(onAnimationPlayed)
        end
    end)
end

if player.Character then
    setupCharacter(player.Character)
end
player.CharacterAdded:Connect(setupCharacter)

d:Label("Universal Movement Buffs.")
d:Slider("Tackle Distance", 0, 0, 75, 1, function(v)
    Distances.tackleDist = v
end)

d:Slider("Rush Distance", 0, 0, 75, 1, function(v)
    Distances.rushDist = v
end)

d:Slider("GK Front Dive Distance", 0, 0, 75, 1, function(v)
    Distances.gkDist = v
end)

d:Label("Isagi Movement Buffs.")
d:Slider("Naruhaya Footwork Distance", 0, 0, 200, 1, function(v)
    Distances.naruhayaDist = v
end)

d:Label("NEL Isagi Movement Buffs.")
d:Slider("Raumdeuter Distance", 0, 0, 200, 1, function(v)
    Distances.raumDist = v
end)

d:Label("Shidou Movement Buffs.")
d:Slider("Draconic Rush Distance", 0, 0, 200, 1, function(v)
    Distances.dracDist = v
end)

d:Label("Bachira Movement Buffs.")
d:Slider("Step Overs Distance", 0, 0, 200, 1, function(v)
    Distances.stepDist = v
end)

d:Label("Kaiser Movement Buffs.")
d:Slider("Off The Ball Distance", 0, 0, 200, 1, function(v)
    Distances.kaiserDist = v
end)

d:Label("Rin Movement Buffs.")
d:Slider("Occlusion Break Distance", 0, 0, 200, 1, function(v)
    Distances.occlusionDist = v
end)

d:Label("Gagamaru Movement Buffs.")
d:Slider("Diving Header Distance", 0, 0, 125, 1, function(v)
    Distances.divingDist = v
end)

d:Label("Aiku Movement Buffs.")
d:Slider("Reflex Tackle Distance", 0, 0, 125, 1, function(v)
    Distances.reflexDist = v
end)

d:Label("Yukimiya Movement Buffs.")
d:Slider("Razor Break Distance", 0, 0, 35, 1, function(v)
    Distances.razorDist = v
end)

d:Slider("Drag Scissors Distance", 0, 0, 100, 1, function(v)
    Distances.dragDist = v
end)

d:Label("Kunigami Movement Buffs.")
d:Slider("Hero's Instinct Distance", 0, 0, 300, 1, function(v)
    Distances.instinctDist = v
end)

d:Label("Don Lorenzo Movement Buffs.")
d:Slider("Zombie Dribble Distance", 0, 0, 250, 1, function(v)
    Distances.zombDist = v
end)

d:Label("Sae Movement Buffs.")

d:Slider("Beautiful Destruction Distance", 0, 0, 33, 1, function(v)
    Distances.beautifulDist = v
end)

d:Slider("Beautiful Destruction: Side Variant Distance", 0, 0, 25, 1, function(v)
    Distances.creativeDist = v
end)

d:Slider("Nutmeg: Reflex Distance", 0, 0, 50, 1, function(v)
    Distances.reflexNutmegDist = v
end)

d:Label("Barou Movement Buffs.")
d:Slider("King's Path Distance", 0, 0, 750, 1, function(v)
    Distances.kingsDist = v
end)

d:Slider("DEVOUR. Distance", 0, 0, 500, 1, function(v)
    Distances.devourMaxDist = v
end)

d:Label("Nagi Movement Buffs.")
d:Slider("Control Distance (Ground Variant)", 0, 0, 30, 1, function(v)
    Distances.controlVarDist = v
end)

d:Label("Chigiri Movement Buffs.")
d:Slider("Mach Cut-In Distance", 0, 0, 200, 1, function(v)
    Distances.machDist = v
end)

d:Slider("Golden Zone Distance (Req. Ball)", 0, 0, 400, 1, function(v)
    Distances.goldenDist = v
end)

d:Label("Reo Movement Buffs.")
d:Slider("Twin Steps Distance", 0, 0, 75, 1, function(v)
    Distances.twinStepsDist = v
end)

d:Label("Hiori Movement Buffs.")

d:Slider("Glacial Cut (Variant: Forward) Distance", 0, 0, 175, 1, function(v)
    Distances.glacialDist = v
end)

d:Label("Kurona Movement Buffs.")
d:Slider("Close Quarter Dribble Distance", 0, 0, 250, 1, function(v)
    Distances.quarterDist = v
end)

d:Slider("Go-Go! Distance", 0, 0, 100, 1, function(v)
    Distances.gogoDist = v
end)

d:Slider("Guard Dog Distance", 0, 0, 100, 1, function(v)
    Distances.guardDist = v
end)

d:Slider("Speedy Turn Distance", 0, 0, 250, 1, function(v)
    Distances.speedyDist = v
end)

d:Slider("Fetch Distance", 0, 0, 100, 1, function(v)
    Distances.fetchDist = v
end)

d:Label("Karasu Movement Buffs.")
d:Slider("Silent Steal Distance", 0, 0, 125, 1, function(v)
    Distances.silentDist = v
end)

d:Slider("Corvine Distance", 0, 0, 100, 1, function(v)
    Distances.corvineDist = v
end)

d:Label("Otoya Movement Buffs.")

d:Slider("Kusarigama Distance", 0, 0, 75, 1, function(v)
    Distances.kusarDist = v
end)

d:Slider("Shadow Step Distance", 0, 0, 50, 1, function(v)
    Distances.shadowDist = v
end)

local autoact = maintab2:Folder("Auto Activate Features.", Color3.fromRGB(24, 255, 228), true)
autoact:Label("Auto Activate: Activates The Move When Ball Within Range.")

local autoActivateState = { 
    distance = 10, 
    toggleState = false, 
    moveNumber = 1, 
    db = true, 
    mode = "Hold" 
} 

autoact:Toggle("Auto Activate", "Toggles The Feature On.", function(v) 
    autoActivateState.toggleState = v 
end) 

autoact:Textbox("Auto Activate Move Number", "Example: 1, 2, 3, 4, 5.", function(v) 
    nsdv = tonumber(v) 
    if nsdv and nsdv <= 5 and nsdv > 0 then 
        autoActivateState.moveNumber = nsdv 
    end 
end) 

autoact:Slider("Auto Activate Distance", 10, 3, 70, 0.5, function(v) 
    autoActivateState.distance = v 
end) 

autoact:Dropdown("Auto Activate Mode", {"Hold", "Toggle"}, function(v) 
    autoActivateState.mode = v 
    if autoActivateState.toggleState ~= nil then 
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Auto Activate Mode", 
            Text = "Current Mode: " .. autoActivateState.mode, 
            Duration = 3 
        }) 
    end 
end) 

game.UserInputService.InputBegan:Connect(function(input, bg) 
    if bg then return end 
    if input.UserInputType == Enum.UserInputType.MouseButton2 then 
        if autoActivateState.mode == "Hold" then 
            autoActivateState.db = false 
        else 
            autoActivateState.db = not autoActivateState.db 
        end 
    end 
end) 

game.UserInputService.InputEnded:Connect(function(input, bg) 
    if bg then return end 
    if input.UserInputType == Enum.UserInputType.MouseButton2 then 
        if autoActivateState.mode == "Hold" then 
            autoActivateState.db = true 
        end 
    end 
end) 

game:GetService("RunService").RenderStepped:Connect(function() 
    if not autoActivateState.toggleState or autoActivateState.db then 
        if game.CoreGui:FindFirstChild("AutoActGui") then 
            game.CoreGui.AutoActGui:Destroy() 
        end 
        return 
    end 
    
    if not game.CoreGui:FindFirstChild("AutoActGui") then 
        gui = Instance.new("ScreenGui") 
        gui.Name = "AutoActGui" 
        
        dot = Instance.new("Frame") 
        dot.Name = "IndicatorDot" 
        dot.Size = UDim2.new(0, 20, 0, 20) 
        dot.Position = UDim2.new(0, 20, 1, -40) 
        dot.BackgroundColor3 = Color3.fromRGB(0, 255, 0) 
        dot.BorderSizePixel = 0 
        dot.Parent = gui 
        
        corner = Instance.new("UICorner") 
        corner.CornerRadius = UDim.new(1, 0) 
        corner.Parent = dot 
        
        gui.Parent = game.CoreGui 
    end 
    
    char = game.Players.LocalPlayer.Character 
    hrp = char and char:FindFirstChild("HumanoidRootPart") 
    if not hrp then return end 
    
    ball = game.Workspace.Terrain:FindFirstChild("Ball") 
    if not ball then return end 
    
    distance = (hrp.Position - ball.Position).Magnitude 
    
    if distance <= autoActivateState.distance then 
        args = { 
            buffer.fromstring(buffers["base"]), 
            { 
                { "skill" .. autoActivateState.moveNumber } 
            } 
        } 
        game.ReplicatedStorage:WaitForChild("ByteNetReliable"):FireServer(unpack(args)) 
    end 
end)

local autoline = maintab2:Folder("Auto Line Up Features.", Color3.fromRGB(24, 255, 228), true)
autoline:Label("Auto Line Ups: Helps You Aim At Certain Areas.")

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local camera = Workspace.CurrentCamera
local character = player.Character
local hrp = character and character:FindFirstChild("HumanoidRootPart")
local humanoid = character and character:FindFirstChildOfClass("Humanoid")

local padCount = 0
local targetCount = 0
local holdingRMB = false
local camLockConnection = nil
local activeTarget = nil
local lineupLockActive = false
local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled

local currentLineupMode = "Freeze"

local function updateCharacterRefs(char)
    character = char
    hrp = character:WaitForChild("HumanoidRootPart")
    humanoid = character:WaitForChild("Humanoid")
end

if player.Character then 
    updateCharacterRefs(player.Character) 
end
player.CharacterAdded:Connect(updateCharacterRefs)

autoline:Dropdown("Lineup Mode", {"Freeze", "Slowness"}, function(v)
    currentLineupMode = v
    if lineupLockActive then
        lineupLockActive = false
        if humanoid then humanoid.WalkSpeed = 30 end
        if hrp then hrp.Anchored = false end
    end
end)

local function pad(pos, color)
    padCount = padCount + 1
    local p = Instance.new("Part")
    p.Name = "pad" .. padCount
    p.Size = Vector3.new(4, 4, 4)
    p.Position = pos
    p.Transparency = 0.65
    p.Anchored = true
    p.CanCollide = false
    p.Color = color
    p.Material = Enum.Material.SmoothPlastic
    p.Parent = Workspace
end

local function target(pos, color)
    targetCount = targetCount + 1
    local t = Instance.new("Part")
    t.Name = "target" .. targetCount
    t.Shape = Enum.PartType.Ball
    t.Size = Vector3.new(7, 7, 7)
    t.Position = pos
    t.Anchored = true
    t.CanCollide = false
    t.Color = color
    t.Material = Enum.Material.Neon
    t.Parent = Workspace
end

UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        holdingRMB = true
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        holdingRMB = false
        activeTarget = nil
        lineupLockActive = false
        
        if camLockConnection then
            camLockConnection:Disconnect()
            camLockConnection = nil
        end
        
        if humanoid then humanoid.WalkSpeed = 30 end
        if hrp then hrp.Anchored = false end
    end
end)

local function getPadUnderPlayer()
    if not hrp then return nil end
    local params = RaycastParams.new()
    params.FilterDescendantsInstances = {character}
    params.FilterType = Enum.RaycastFilterType.Blacklist
    local result = Workspace:Raycast(hrp.Position, Vector3.new(0, -6, 0), params)
    if result and result.Instance then
        return result.Instance.Name:match("^pad(%d+)$")
    end
    return nil
end

local function startCamLock(targetPart)
    activeTarget = targetPart
    if camLockConnection then camLockConnection:Disconnect() end
    camLockConnection = RunService.RenderStepped:Connect(function()
        if not activeTarget then
            if camLockConnection then
                camLockConnection:Disconnect()
                camLockConnection = nil
            end
            return
        end
        camera.CFrame = CFrame.new(camera.CFrame.Position, activeTarget.Position)
    end)
end

local function stopCamLock()
    activeTarget = nil
    if camLockConnection then
        camLockConnection:Disconnect()
        camLockConnection = nil
    end
end

local function resetLineupPhysics()
    if lineupLockActive then
        lineupLockActive = false
        if currentLineupMode == "Freeze" then
            if hrp then hrp.Anchored = false end
        elseif currentLineupMode == "Slowness" then
            if humanoid then humanoid.WalkSpeed = 30 end
        end
    end
end

local function applyLineupMode()
    lineupLockActive = true
    if currentLineupMode == "Freeze" then
        if hrp then hrp.Anchored = true end
    elseif currentLineupMode == "Slowness" then
        if humanoid then humanoid.WalkSpeed = 5 end
    end
end

if isMobile then
    RunService.RenderStepped:Connect(function()
        if not hrp then return end
        local padIndex = getPadUnderPlayer()
        if padIndex then
            local targetPart = Workspace:FindFirstChild("target" .. padIndex)
            if targetPart and activeTarget ~= targetPart then
                startCamLock(targetPart)
            end
        else
            if activeTarget then stopCamLock() end
        end
    end)
else
    RunService.RenderStepped:Connect(function()
        if not holdingRMB or not hrp or not humanoid then
            resetLineupPhysics()
            return
        end
        
        local padIndex = getPadUnderPlayer()
        if not padIndex then
            resetLineupPhysics()
            stopCamLock()
            return
        end
        
        local targetPart = Workspace:FindFirstChild("target" .. padIndex)
        if not targetPart then
            resetLineupPhysics()
            return
        end
        
        if activeTarget ~= targetPart then
            startCamLock(targetPart)
        end
        
        applyLineupMode()
    end)
end

autoline:Toggle("Sae Line Ups", "Sae's Drive Shot Line Ups.", function(s)
	if s then
		StarterGui:SetCore("SendNotification", {
			Title = "Sae Line Ups",
			Text = "Enabled.",
			Duration = 3
		})

		local colors = {
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(255, 0, 255),
			Color3.fromRGB(255, 182, 193),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(255, 0, 255),
			Color3.fromRGB(255, 182, 193),
		}

		local goalRelative = {
			{pad = Vector3.new(-58, -9, -127), target = Vector3.new(71, 35, -13)},
			{pad = Vector3.new(-38, -9, -171), target = Vector3.new(70, 18, -13)},
			{pad = Vector3.new(-16, -9, -176), target = Vector3.new(45, 45, -14)},
			{pad = Vector3.new(15, -9, -174),  target = Vector3.new(25, 25, -14)},
			{pad = Vector3.new(48, -9, -161),  target = Vector3.new(20, 32, -14)},
			{pad = Vector3.new(71, -9, -134),  target = Vector3.new(22, 5, -12)},
			{pad = Vector3.new(86, -9, -113),  target = Vector3.new(31, 19, -14)},
			{pad = Vector3.new(99, -9, -137),  target = Vector3.new(29, 34, -14)},
			{pad = Vector3.new(-47, -9, -145), target = Vector3.new(53, 28, -14)},
			{pad = Vector3.new(132, -9, -111), target = Vector3.new(30, 8, -13)},

			{pad = Vector3.new(58, -9, 127),   target = Vector3.new(-71, 35, 13)},
			{pad = Vector3.new(38, -9, 171),   target = Vector3.new(-70, 18, 13)},
			{pad = Vector3.new(16, -9, 176),   target = Vector3.new(-45, 45, 14)},
			{pad = Vector3.new(-15, -9, 174),  target = Vector3.new(-25, 25, 14)},
			{pad = Vector3.new(-48, -9, 161),  target = Vector3.new(-20, 32, 14)},
			{pad = Vector3.new(-71, -9, 134),  target = Vector3.new(-22, 5, 12)},
			{pad = Vector3.new(-86, -9, 113),  target = Vector3.new(-31, 19, 14)},
			{pad = Vector3.new(-99, -9, 137),  target = Vector3.new(-29, 34, 14)},
			{pad = Vector3.new(47, -9, 145),   target = Vector3.new(-53, 28, 14)},
			{pad = Vector3.new(-132, -9, 111), target = Vector3.new(-30, 8, 13)},
		}

		local map = Workspace:WaitForChild("map", 8)
		if not map then return end

		local agoal = map:FindFirstChild("Agoal")
		local bgoal = map:FindFirstChild("Bgoal")

		local agoalPos = agoal.Position
		local bgoalPos = bgoal.Position

		for i = 1, 20 do
			local entry = goalRelative[i]
			if entry then
			local basePos = (i <= 10) and agoalPos or bgoalPos
			local col = colors[(i - 1) % #colors + 1]

			pad(basePos + entry.pad, col)
			target(basePos + entry.target, col)
			end
		end

	else
		StarterGui:SetCore("SendNotification", {
			Title = "Sae Line Ups",
			Text = "Disabled.",
			Duration = 3
		})

		for i = 1, padCount do
			local p = Workspace:FindFirstChild("pad" .. i)
			if p then p:Destroy() end
		end

		for i = 1, targetCount do
			local t = Workspace:FindFirstChild("target" .. i)
			if t then t:Destroy() end
		end

		padCount = 0
		targetCount = 0
	end
end)

autoline:Toggle("Kaiser Line Ups", "Kaiser's Impact Magnus Line Ups.", function(k)
	if k then
		StarterGui:SetCore("SendNotification", {
			Title = "Kaiser Line Ups",
			Text = "Enabled.",
			Duration = 3
		})

		local colors = {
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(255, 0, 255),
			Color3.fromRGB(255, 182, 193),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(255, 0, 255),
			Color3.fromRGB(255, 182, 193),
		}

		local goalRelative = {
			{pad = Vector3.new(-76, -9, 140),  target = Vector3.new(108, 19, 14)},
			{pad = Vector3.new(-35, -9, 178),  target = Vector3.new(80, -5, 14)},
			{pad = Vector3.new(17, -9, 170),   target = Vector3.new(26, 18, 14)},
			{pad = Vector3.new(81, -9, 178),   target = Vector3.new(35, 34, 14)},
			{pad = Vector3.new(54, -9, 165),   target = Vector3.new(34, 2, 14)},
			{pad = Vector3.new(-55, -9, 171),  target = Vector3.new(87, -1, 14)},
			{pad = Vector3.new(-13, -9, 161),  target = Vector3.new(76, 15, 14)},
			{pad = Vector3.new(-42, -9, 122),  target = Vector3.new(73, 5, 14)},
			{pad = Vector3.new(61, -9, 114),   target = Vector3.new(35, 16, 14)},
			{pad = Vector3.new(130, -9, 110),  target = Vector3.new(50, 25, 14)},
			{pad = Vector3.new(110, -9, 151),  target = Vector3.new(34, 25, 14)},
			{pad = Vector3.new(39, -9, 194),   target = Vector3.new(32, 28, 14)},

			{pad = Vector3.new(76, -9, -140),  target = Vector3.new(-108, 19, -14)},
			{pad = Vector3.new(35, -9, -178),  target = Vector3.new(-80, -5, -14)},
			{pad = Vector3.new(-17, -9, -170), target = Vector3.new(-26, 18, -14)},
			{pad = Vector3.new(-81, -9, -178), target = Vector3.new(-35, 34, -14)},
			{pad = Vector3.new(-54, -9, -165), target = Vector3.new(-34, 2, -14)},
			{pad = Vector3.new(55, -9, -171),  target = Vector3.new(-87, -1, -14)},
			{pad = Vector3.new(13, -9, -161),  target = Vector3.new(-76, 15, -14)},
			{pad = Vector3.new(42, -9, -122),  target = Vector3.new(-73, 5, -14)},
			{pad = Vector3.new(-61, -9, -114), target = Vector3.new(-35, 16, -14)},
			{pad = Vector3.new(-130, -9, -110),target = Vector3.new(-50, 25, -14)},
			{pad = Vector3.new(-110, -9, -151),target = Vector3.new(-34, 25, -14)},
			{pad = Vector3.new(-39, -9, -194), target = Vector3.new(-32, 28, -14)},
		}

		local map = Workspace:WaitForChild("map", 8)
		if not map then return end

		local agoal = map:FindFirstChild("Agoal")
		local bgoal = map:FindFirstChild("Bgoal")

		local agoalPos = agoal.Position
		local bgoalPos = bgoal.Position

		for i = 1, 24 do
			local entry = goalRelative[i]
			if entry then
			local basePos = (i <= 12) and bgoalPos or agoalPos
			local col = colors[(i - 1) % #colors + 1]

			pad(basePos + entry.pad, col)
			target(basePos + entry.target, col)
			end
		end

	else
		StarterGui:SetCore("SendNotification", {
			Title = "Kaiser Line Ups",
			Text = "Disabled.",
			Duration = 3
		})

		for i = 1, padCount do
			local p = Workspace:FindFirstChild("pad" .. i)
			if p then p:Destroy() end
		end

		for i = 1, targetCount do
			local t = Workspace:FindFirstChild("target" .. i)
			if t then t:Destroy() end
		end

		padCount = 0
		targetCount = 0
	end
end)

autoline:Toggle("Yukimiya Line Ups", "Yukimiya's Gyro Shot Line Ups.", function(y)
	if y then
		StarterGui:SetCore("SendNotification", {
			Title = "Yukimiya Line Ups",
			Text = "Enabled.",
			Duration = 3
		})

		local colors = {
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(0, 255, 0),
		}

		local goalRelative = {
			{pad = Vector3.new(3, -9, -216),   target = Vector3.new(68, 144, -16)},
			{pad = Vector3.new(62, -9, -193),  target = Vector3.new(50, 91, -16)},
			{pad = Vector3.new(-39, -9, -128), target = Vector3.new(6, 0, -12)},
			{pad = Vector3.new(-32, -9, -134), target = Vector3.new(15, 8, -15)},
			{pad = Vector3.new(-142, -9, -97), target = Vector3.new(81, 65, -16)},
			{pad = Vector3.new(-69, -9, -212), target = Vector3.new(158, 223, -16)},
			{pad = Vector3.new(32, -9, -130),  target = Vector3.new(-10, 24, -14)},
			{pad = Vector3.new(-115, -9, -160),target = Vector3.new(33, 72, -14)},
			{pad = Vector3.new(-92, -9, -188), target = Vector3.new(99, 133, -13)},
			{pad = Vector3.new(-40, -9, -208), target = Vector3.new(50, 116, -14)},
			{pad = Vector3.new(57, -9, -122),  target = Vector3.new(-8, 23, -15)},

			{pad = Vector3.new(-3, -9, 216),   target = Vector3.new(-68, 144, 16)},
			{pad = Vector3.new(-62, -9, 193),  target = Vector3.new(-50, 91, 16)},
			{pad = Vector3.new(39, -9, 128),   target = Vector3.new(-6, 0, 12)},
			{pad = Vector3.new(32, -9, 134),   target = Vector3.new(-15, 8, 15)},
			{pad = Vector3.new(142, -9, 97),   target = Vector3.new(-81, 65, 16)},
			{pad = Vector3.new(69, -9, 212),   target = Vector3.new(-158, 223, 16)},
			{pad = Vector3.new(-32, -9, 130),  target = Vector3.new(10, 24, 14)},
			{pad = Vector3.new(115, -9, 160),  target = Vector3.new(-33, 72, 14)},
			{pad = Vector3.new(92, -9, 188),   target = Vector3.new(-99, 133, 13)},
			{pad = Vector3.new(40, -9, 208),   target = Vector3.new(-50, 116, 14)},
			{pad = Vector3.new(-57, -9, 122),  target = Vector3.new(8, 23, 15)},
		}

		local map = Workspace:WaitForChild("map", 8)
		if not map then return end

		local agoal = map:FindFirstChild("Agoal")
		local bgoal = map:FindFirstChild("Bgoal")

		local agoalPos = agoal.Position
		local bgoalPos = bgoal.Position

		for i = 1, 22 do
			local entry = goalRelative[i]
			if entry then
			local basePos = (i <= 11) and agoalPos or bgoalPos
			local col = colors[(i - 1) % #colors + 1]

			pad(basePos + entry.pad, col)
			target(basePos + entry.target, col)
			end
		end

	else
		StarterGui:SetCore("SendNotification", {
			Title = "Yukimiya Line Ups",
			Text = "Disabled.",
			Duration = 3
		})

		for i = 1, padCount do
			local p = Workspace:FindFirstChild("pad" .. i)
			if p then p:Destroy() end
		end

		for i = 1, targetCount do
			local t = Workspace:FindFirstChild("target" .. i)
			if t then t:Destroy() end
		end

		padCount = 0
		targetCount = 0
	end
end)

autoline:Toggle("Karasu Line Ups", "Karasu's Dive Bomb Line Ups.", function(kar)
	if kar then
		StarterGui:SetCore("SendNotification", {
			Title = "Karasu Line Ups",
			Text = "Enabled.",
			Duration = 3
		})

		local colors = {
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(255, 128, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(128, 0, 255),
			Color3.fromRGB(255, 0, 255),
			Color3.fromRGB(128, 255, 0),
			Color3.fromRGB(120, 72, 0),
			Color3.fromRGB(255, 255, 255),
			Color3.fromRGB(0, 0, 0),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(255, 128, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(128, 0, 255),
			Color3.fromRGB(255, 0, 255),
			Color3.fromRGB(128, 255, 0),
			Color3.fromRGB(120, 72, 0),
			Color3.fromRGB(255, 255, 255),
			Color3.fromRGB(0, 0, 0)
		}

		local goalRelative = {
			{pad = Vector3.new(66, -9, 135),   target = Vector3.new(-44, 39, 14)},
			{pad = Vector3.new(24, -9, 159),   target = Vector3.new(-70, 19, 13)},
			{pad = Vector3.new(43, -9, 147),   target = Vector3.new(-72, 34, 13)},
			{pad = Vector3.new(-12, -9, 160),  target = Vector3.new(-23, 25, 14)},
			{pad = Vector3.new(-46, -9, 184),  target = Vector3.new(5, 110, 14)},
			{pad = Vector3.new(-76, -9, 160),  target = Vector3.new(-6, 74, 14)},
			{pad = Vector3.new(-28, -9, 178),  target = Vector3.new(-11, 65, 14)},
			{pad = Vector3.new(-96, -9, 134),  target = Vector3.new(-25, 45, 14)},
			{pad = Vector3.new(-47, -9, 142),  target = Vector3.new(-19, 18, 14)},
			{pad = Vector3.new(47, -9, 124),   target = Vector3.new(-67, 20, 13)},

			{pad = Vector3.new(-66, -9, -135), target = Vector3.new(44, 39, -14)},
			{pad = Vector3.new(-24, -9, -159), target = Vector3.new(70, 19, -13)},
			{pad = Vector3.new(-43, -9, -147), target = Vector3.new(72, 34, -13)},
			{pad = Vector3.new(12, -9, -160),  target = Vector3.new(23, 25, -14)},
			{pad = Vector3.new(46, -9, -184),  target = Vector3.new(-5, 110, -14)},
			{pad = Vector3.new(76, -9, -160),  target = Vector3.new(6, 74, -14)},
			{pad = Vector3.new(28, -9, -178),  target = Vector3.new(11, 65, -14)},
			{pad = Vector3.new(96, -9, -134),  target = Vector3.new(25, 45, -14)},
			{pad = Vector3.new(47, -9, -142),  target = Vector3.new(19, 18, -14)},
			{pad = Vector3.new(-47, -9, -124), target = Vector3.new(67, 20, -13)},
		}

		local map = Workspace:WaitForChild("map", 8)
		if not map then return end

		local agoal = map:FindFirstChild("Agoal")
		local bgoal = map:FindFirstChild("Bgoal")

		local agoalPos = agoal.Position
		local bgoalPos = bgoal.Position

		for i = 1, 20 do
			local entry = goalRelative[i]
			if entry then
			local basePos = (i <= 10) and bgoalPos or agoalPos
			local col = colors[i]

			pad(basePos + entry.pad, col)
			target(basePos + entry.target, col)
			end
		end

	else
		StarterGui:SetCore("SendNotification", {
			Title = "Karasu Line Ups",
			Text = "Disabled.",
			Duration = 3
		})

		for i = 1, padCount do
			local p = Workspace:FindFirstChild("pad" .. i)
			if p then p:Destroy() end
		end

		for i = 1, targetCount do
			local t = Workspace:FindFirstChild("target" .. i)
			if t then t:Destroy() end
		end

		padCount = 0
		targetCount = 0
	end
end)

autoline:Toggle("Rin Line Ups", "Rin's Curve Shot Line Ups.", function(r)
	if r then
		StarterGui:SetCore("SendNotification", {
			Title = "Rin Line Ups",
			Text = "Enabled.",
			Duration = 3
		})

		local colors = {
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(0, 0, 255),
		}

		local goalRelative = {
			{pad = Vector3.new(62, -9, 121),   target = Vector3.new(-29, -9, 38)},
			{pad = Vector3.new(35, -9, 150),   target = Vector3.new(-26, -9, 50)},
			{pad = Vector3.new(0, -9, 161),    target = Vector3.new(-33, 39, 14)},
			{pad = Vector3.new(-28, -9, 154),  target = Vector3.new(-16, 28, 14)},
			{pad = Vector3.new(-56, -9, 135),  target = Vector3.new(-28, 10, 14)},
			{pad = Vector3.new(21, -9, 161),   target = Vector3.new(-40, -6, 13)},
			{pad = Vector3.new(-107, -9, 113), target = Vector3.new(-89, -9, 90)},
			{pad = Vector3.new(-133, -9, 102), target = Vector3.new(-27, 0, 15)},
			{pad = Vector3.new(-78, -9, 128),  target = Vector3.new(-27, 9, 17)},
			{pad = Vector3.new(50, -9, 135),   target = Vector3.new(-44, -3, 13)},

			{pad = Vector3.new(-62, -9, -121), target = Vector3.new(29, -9, -38)},
			{pad = Vector3.new(-35, -9, -150), target = Vector3.new(26, -9, -50)},
			{pad = Vector3.new(0, -9, -161),   target = Vector3.new(33, 39, -14)},
			{pad = Vector3.new(28, -9, -154),  target = Vector3.new(16, 28, -14)},
			{pad = Vector3.new(56, -9, -135),  target = Vector3.new(28, 10, -14)},
			{pad = Vector3.new(-21, -9, -161), target = Vector3.new(40, -6, -13)},
			{pad = Vector3.new(107, -9, -113), target = Vector3.new(89, -9, -90)},
			{pad = Vector3.new(133, -9, -102), target = Vector3.new(27, 0, -15)},
			{pad = Vector3.new(78, -9, -128),  target = Vector3.new(27, 9, -17)},
			{pad = Vector3.new(-50, -9, -135), target = Vector3.new(44, -3, -13)},
		}

		local map = Workspace:WaitForChild("map", 8)
		if not map then return end

		local agoal = map:FindFirstChild("Agoal")
		local bgoal = map:FindFirstChild("Bgoal")

		local agoalPos = agoal.Position
		local bgoalPos = bgoal.Position

		for i = 1, 20 do
			local entry = goalRelative[i]
			if entry then
			local basePos = (i <= 10) and bgoalPos or agoalPos
			local col = colors[(i - 1) % #colors + 1]

			pad(basePos + entry.pad, col)
			target(basePos + entry.target, col)
			end
		end

	else
		StarterGui:SetCore("SendNotification", {
			Title = "Rin Line Ups",
			Text = "Disabled.",
			Duration = 3
		})

		for i = 1, padCount do
			local p = Workspace:FindFirstChild("pad" .. i)
			if p then p:Destroy() end
		end

		for i = 1, targetCount do
			local t = Workspace:FindFirstChild("target" .. i)
			if t then t:Destroy() end
		end

		padCount = 0
		targetCount = 0
	end
end)

autoline:Toggle("Rin Flow Line Ups", "Rin's Kill Shot Line Ups.", function(k)
	if k then
		StarterGui:SetCore("SendNotification", {
			Title = "Rin Flow Line Ups",
			Text = "Enabled.",
			Duration = 3
		})

		local colors = {
			Color3.fromRGB(147, 112, 219),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(147, 112, 219),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(147, 112, 219),
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(147, 112, 219),
			Color3.fromRGB(255, 0, 0),
		}

		local goalRelative = {
			{pad = Vector3.new(-134, -9, 266), target = Vector3.new(-73, -9, 74)},
			{pad = Vector3.new(51, -9, 237),   target = Vector3.new(-87, 34, 13)},
			{pad = Vector3.new(-189, -9, 192), target = Vector3.new(-65, 24, 13)},
			{pad = Vector3.new(111, -9, 187),  target = Vector3.new(-116, 16, 13)},

			{pad = Vector3.new(134, -9, -266), target = Vector3.new(73, -9, -74)},
			{pad = Vector3.new(-51, -9, -237), target = Vector3.new(87, 34, -13)},
			{pad = Vector3.new(189, -9, -192), target = Vector3.new(65, 24, -13)},
			{pad = Vector3.new(-111, -9, -187),target = Vector3.new(116, 16, -13)},
		}

		local map = Workspace:WaitForChild("map", 8)
		if not map then return end

		local agoal = map:FindFirstChild("Agoal")
		local bgoal = map:FindFirstChild("Bgoal")

		local agoalPos = agoal.Position
		local bgoalPos = bgoal.Position

		for i = 1, 8 do
			local entry = goalRelative[i]
			if entry then
			local basePos = (i <= 4) and bgoalPos or agoalPos
			local col = colors[i]

			pad(basePos + entry.pad, col)
			target(basePos + entry.target, col)
			end
		end

	else
		StarterGui:SetCore("SendNotification", {
			Title = "Rin Flow Line Ups",
			Text = "Disabled.",
			Duration = 3
		})

		for i = 1, padCount do
			local p = Workspace:FindFirstChild("pad" .. i)
			if p then p:Destroy() end
		end

		for i = 1, targetCount do
			local t = Workspace:FindFirstChild("target" .. i)
			if t then t:Destroy() end
		end

		padCount = 0
		targetCount = 0
	end
end)

local linecreator = maintab2:Folder("Line Up Creator Features.", Color3.fromRGB(24, 255, 228), true)
linecreator:Label("Line Up Creator: Create Your Own Lineups!")

linecreator:Button("Copy Lineup Code", "Click To Log A Lineup At The Current Position & Target.", function()
    local Players = game:GetService("Players")
    local lp = Players.LocalPlayer
    local char = lp.Character

    if not char or not char:FindFirstChild("HumanoidRootPart") then
        return
    end

    local hrp = char.HumanoidRootPart

    local camera = workspace.CurrentCamera
    local viewport = camera.ViewportSize

    local ray = camera:ViewportPointToRay(
        viewport.X / 2,
        viewport.Y / 2
    )

    local params = RaycastParams.new()
    params.FilterDescendantsInstances = {
        char,
        workspace.map.gkbarriar.Abarriar,
        workspace.map.gkbarriar.Bbarriar
    }
    params.FilterType = Enum.RaycastFilterType.Blacklist

    local result = workspace:Raycast(ray.Origin, ray.Direction * 5000, params)
    if not result then
        return
    end

    local hitPos = result.Position

    local map = workspace:FindFirstChild("map")
    if not map then
        return
    end

    local aGoal = map:FindFirstChild("Agoal")
    local bGoal = map:FindFirstChild("Bgoal")

    if not aGoal or not bGoal then
        return
    end

    local aPos = aGoal.Position
    local bPos = bGoal.Position

    local distA = (hrp.Position - aPos).Magnitude
    local distB = (hrp.Position - bPos).Magnitude

    local useA = distA <= distB
    local goalPos = useA and aPos or bPos

    local targetOffset = hitPos - goalPos
    local playerOffset = hrp.Position - goalPos

    local function r(n)
        return math.round(n)
    end

    local code = string.format(
        "t(%d,%d,%d)p(%d,%d,%d)%s",
        r(targetOffset.X),
        r(targetOffset.Y),
        r(targetOffset.Z),
        r(playerOffset.X),
        r(playerOffset.Y),
        r(playerOffset.Z),
        useA and "a" or "b"
    )

    setclipboard(code)

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Custom Lineup Copied!",
        Text = code,
        Duration = 5
    })
end)

local lineupColorsss = {
    Color3.fromRGB(255, 0, 0),
    Color3.fromRGB(255, 128, 0),
    Color3.fromRGB(255, 255, 0),
    Color3.fromRGB(0, 255, 0),
    Color3.fromRGB(0, 0, 255),
    Color3.fromRGB(128, 0, 255),
    Color3.fromRGB(255, 0, 255),
    Color3.fromRGB(128, 255, 0),
    Color3.fromRGB(120, 72, 0),
    Color3.fromRGB(255, 255, 255),
    Color3.fromRGB(0, 0, 0)
}

linecreator:Textbox("Enter Lineup Code(s)", "Enter Lineup Codes (seperated by commas). Enter Nothing To Disable.", function(text)
    local player = game:GetService("Players").LocalPlayer
    local char = player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")

    if not hrp then
        return
    end

    local map = workspace:FindFirstChild("map")
    if not map then
        return
    end

    local agoal = map:FindFirstChild("Agoal")
    local bgoal = map:FindFirstChild("Bgoal")

    if not agoal or not bgoal then
        return
    end

    for i = 1, padCount do
        local p = workspace:FindFirstChild("pad" .. i)
        if p then
            p:Destroy()
        end
    end

    for i = 1, targetCount do
        local t = workspace:FindFirstChild("target" .. i)
        if t then
            t:Destroy()
        end
    end

    padCount = 0
    targetCount = 0

    local colorIndex = 1

    for tx, ty, tz, px, py, pz, goalLetter in text:gmatch(
        "t%((%-?[%d%.]+),(%-?[%d%.]+),(%-?[%d%.]+)%)p%((%-?[%d%.]+),(%-?[%d%.]+),(%-?[%d%.]+)%)([ab])"
    ) do
        local playerOffset = Vector3.new(
            tonumber(px),
            tonumber(py) - 3,
            tonumber(pz)
        )

        local targetOffset = Vector3.new(
            tonumber(tx),
            tonumber(ty),
            tonumber(tz)
        )

        local goalPos = goalLetter == "a"
            and agoal.Position
            or bgoal.Position

        local col = lineupColorsss[((colorIndex - 1) % #lineupColorsss) + 1]

        pad(goalPos + playerOffset, col)
        target(goalPos + targetOffset, col)

        colorIndex = colorIndex + 1
    end

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Lineups Loaded",
        Text = string.format("%d lineup(s) created.", colorIndex - 1),
        Duration = 5
    })
end)

local autopos = maintab2:Folder("Auto Position Features.", Color3.fromRGB(24, 255, 228), true)
autopos:Label("Auto Position: Automatically Sets Certain Positions.")

local autoPositionState = {
    CF = false,
    GK = false,
    CFConn = nil,
    GKConn = nil
}

buffer = buffer or {
    fromstring = function(str)
        return str
    end
}

local function firePacketsIfNear()
    local char = game:GetService("Players").LocalPlayer.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    if (root.Position - Vector3.new(-371, 13, -1599)).Magnitude <= 15 or
       (root.Position - Vector3.new(-196, 13, -1599)).Magnitude <= 15 then
        game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(pick .. "\001\001\000A"))
        game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(pick .. "\001\001\000B"))
    end
end

local function fireGKPackets()
    local char = game:GetService("Players").LocalPlayer.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(pick .. "\005\001\000B"))
    game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(pick .. "\005\001\000A"))
end

autopos:Toggle("Auto Pick CF", "Automatically Picks Center Field Position On Respawn Or Enable.", function()
    autoPositionState.CF = not autoPositionState.CF

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Auto Pick CF",
        Text = autoPositionState.CF and "Enabled." or "Disabled.",
        Duration = 1
    })

    if autoPositionState.CF then
        autoPositionState.CFConn = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.3)
            firePacketsIfNear()
        end)

        task.spawn(function()
            repeat task.wait() until game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            firePacketsIfNear()
        end)
    else
        if autoPositionState.CFConn then
            autoPositionState.CFConn:Disconnect()
            autoPositionState.CFConn = nil
        end
    end
end)

autopos:Toggle("Auto Pick GK", "Automatically Picks Goalkeeper Position On Respawn Or Enable.", function()
    autoPositionState.GK = not autoPositionState.GK

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Auto Pick GK",
        Text = autoPositionState.GK and "Enabled." or "Disabled.",
        Duration = 1
    })

    if autoPositionState.GK then
        autoPositionState.GKConn = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.3)
            fireGKPackets()
        end)

        task.spawn(function()
            repeat task.wait() until game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            fireGKPackets()
        end)
    else
        if autoPositionState.GKConn then
            autoPositionState.GKConn:Disconnect()
            autoPositionState.GKConn = nil
        end
    end
end)

local autogk = maintab2:Folder("Auto Goalkeeper Features.", Color3.fromRGB(24, 255, 228), true)
autogk:Label("Auto Goalkeeper: Automatically Plays As GK For You.")

autogk:Button("Celeron's Auto GK Enhanced", "Click V To Toggle, Reset To Disable.", function()
task.spawn(function()
    local plr = Players.LocalPlayer
    local char = plr.Character or plr.CharacterAdded:Wait()
    local hum = char:WaitForChild("Humanoid")
    local hrp = char:WaitForChild("HumanoidRootPart")

    local gui = Instance.new("ScreenGui")
    gui.ResetOnSpawn = false
    gui.Parent = plr.PlayerGui

    local dot = Instance.new("Frame")
    dot.Size = UDim2.new(0.012, 0, 0.025, 0)
    dot.Position = UDim2.new(0.988, 0, 0.975, 0)
    dot.BorderSizePixel = 0
    dot.Parent = gui

    local gkState = {
        enabled = true,
        pause = false,
        look = nil,
        ballHolder = ReplicatedStorage.workspace.ballHolder,
        lastHolder = nil,
        remote = ReplicatedStorage:WaitForChild("ByteNetReliable"),
        map = Workspace:WaitForChild("map"),
        GRAVITY = Vector3.new(0, -Workspace.Gravity, 0),
        velSmooth = Vector3.zero,
        lastVel = Vector3.zero,
        tackleArgs = {buffer.fromstring(buffers.base), {{"tackle"}}},
        emptyBuffer = buffer.fromstring(buffers["grabball"]),
        magnetBurstActive = false,
        tackle_radius = 35,
        terrain = Workspace.Terrain,
        cachedBall = nil,
        renderConn = nil,
        inputConn = nil,
        holderConn = nil,
        ballAdded = nil,
        ballRemoved = nil,
        diedConn = nil,
        charAddedConn = nil
    }

    gkState.look = Instance.new("AlignOrientation")
    gkState.look.Name = "AutoGKLook"
    gkState.look.Mode = Enum.OrientationAlignmentMode.OneAttachment
    gkState.look.Attachment0 = hrp:WaitForChild("RootAttachment")
    gkState.look.Responsiveness = 1200
    gkState.look.MaxTorque = math.huge
    gkState.look.Enabled = false
    gkState.look.Parent = hrp

    gkState.lastHolder = gkState.ballHolder.Value

    local function updateindicator()
        dot.BackgroundColor3 = gkState.enabled and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,0,0)
    end

    local function cleanup()
        gkState.enabled = false
        if gkState.renderConn then gkState.renderConn:Disconnect() end
        if gkState.inputConn then gkState.inputConn:Disconnect() end
        if gkState.holderConn then gkState.holderConn:Disconnect() end
        if gkState.ballAdded then gkState.ballAdded:Disconnect() end
        if gkState.ballRemoved then gkState.ballRemoved:Disconnect() end
        if gkState.diedConn then gkState.diedConn:Disconnect() end
        if gkState.charAddedConn then gkState.charAddedConn:Disconnect() end
        if gkState.look then gkState.look:Destroy() end
        if gui then gui:Destroy() end
    end

    gkState.holderConn = gkState.ballHolder.Changed:Connect(function(cur)
        if gkState.lastHolder == char and cur == nil then
            gkState.pause = true
            task.delay(2.6, function() gkState.pause = false end)
        end
        gkState.lastHolder = cur
    end)

    gkState.ballAdded = gkState.terrain.ChildAdded:Connect(function(child)
        if child.Name == "Ball" then gkState.cachedBall = child end
    end)

    gkState.ballRemoved = gkState.terrain.ChildRemoved:Connect(function(child)
        if child == gkState.cachedBall then gkState.cachedBall = nil end
    end)

    local function predictgoalimpact(pos, vel, accel, goal)
        if not goal then return nil end
        local cf = goal.CFrame
        local normal = cf.LookVector
        local goalPos = cf.Position
        local rel = pos - goalPos
        local a = 0.5 * accel:Dot(normal)
        local b = vel:Dot(normal)
        local c = rel:Dot(normal)
        if math.abs(a) < 1e-6 then
            if math.abs(b) < 1e-6 then return nil end
            local t = -c / b
            return t > 0 and t
        end
        local disc = b*b - 4*a*c
        if disc < 0 then return nil end
        local sd = math.sqrt(disc)
        local t1 = (-b - sd) / (2*a)
        local t2 = (-b + sd) / (2*a)
        return (t1 > 0 and t1) or (t2 > 0 and t2)
    end

    gkState.renderConn = RunService.RenderStepped:Connect(function(dt)
        if not gkState.enabled then return end

        local ball = gkState.cachedBall
        if not ball or plr.Team == game.Teams.lobby or gkState.pause then
            gkState.look.Enabled = false
            return
        end

        local currentHolder = gkState.ballHolder.Value

        if currentHolder and currentHolder ~= char and currentHolder:FindFirstChild("HumanoidRootPart") then
            local holderRoot = currentHolder.HumanoidRootPart
            gkState.look.Enabled = true
            gkState.look.CFrame = CFrame.lookAt(hrp.Position, Vector3.new(holderRoot.Position.X, hrp.Position.Y, holderRoot.Position.Z))
        else
            local rawVel = ball.AssemblyLinearVelocity
            gkState.velSmooth = gkState.velSmooth:Lerp(rawVel, math.clamp(dt*15, 0, 1))
            local accel = (gkState.velSmooth - gkState.lastVel) / math.max(dt, 1/240)
            gkState.lastVel = gkState.velSmooth

            local goal = (plr.Team == game.Teams.B and gkState.map.Bgoal) or (plr.Team == game.Teams.A and gkState.map.Agoal)

            local tImpact = predictgoalimpact(ball.Position, gkState.velSmooth, accel, goal)

            local predicted
            if tImpact then
                predicted = ball.Position + gkState.velSmooth * tImpact + 0.5 * accel * tImpact^2
            else
                predicted = ball.Position + gkState.velSmooth * 0.25 + 0.5 * gkState.GRAVITY * 0.0625
            end

            gkState.look.Enabled = true
            gkState.look.CFrame = CFrame.lookAt(hrp.Position, Vector3.new(predicted.X, hrp.Position.Y, predicted.Z))
        end

        local dist = (hrp.Position - ball.Position).Magnitude

        if dist > gkState.tackle_radius and dist <= 37 and ball.Position.Y > hrp.Position.Y + 4 then
            hum.Jump = true
        end

        if dist <= gkState.tackle_radius then
            gkState.remote:FireServer(unpack(gkState.tackleArgs))
            if not gkState.magnetBurstActive then
                gkState.magnetBurstActive = true
                task.spawn(function()
                    local start = os.clock()
                    while os.clock() - start < 0.897 and gkState.enabled do
                        gkState.remote:FireServer(gkState.emptyBuffer)
                        task.wait(0.125)
                    end
                    gkState.magnetBurstActive = false
                end)
            end
        end
    end)

    gkState.inputConn = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.KeyCode == Enum.KeyCode.V then
            gkState.enabled = not gkState.enabled
            updateindicator()
            if not gkState.enabled then gkState.look.Enabled = false end
        end
    end)

    gkState.diedConn = hum.Died:Connect(cleanup)
    gkState.charAddedConn = plr.CharacterAdded:Connect(cleanup)

    updateindicator()
end)
end)

autogk:Button("Daffy's Auto GK", "Reset Or Click F4 To Disable.", function()
    local gkPlayerState = {
        plr = Players.LocalPlayer,
        char = nil,
        cam = workspace.CurrentCamera,
        hum = nil,
        hrp = nil,
        originalCamType = nil,
        originalCamCFrame = nil,
        guii = nil,
        cambu = nil,
        gerg = nil,
        dot = nil,
        kind = "",
        align = nil,
        onn = true,
        pause = false,
        ballHolder = nil,
        lastHolder = nil,
        remote = nil,
        con = nil,
        kill = nil
    }

    gkPlayerState.char = gkPlayerState.plr.Character or gkPlayerState.plr.CharacterAdded:Wait()
    gkPlayerState.hum = gkPlayerState.char:WaitForChild("Humanoid")
    gkPlayerState.hrp = gkPlayerState.char:WaitForChild("HumanoidRootPart")

    gkPlayerState.originalCamType = gkPlayerState.cam.CameraType
    gkPlayerState.originalCamCFrame = gkPlayerState.cam.CFrame

    gkPlayerState.guii = Instance.new("ScreenGui")
    gkPlayerState.guii.Parent = gkPlayerState.plr.PlayerGui

    gkPlayerState.cambu = Instance.new("TextButton")
    gkPlayerState.cambu.Text = "Camera Mode"
    gkPlayerState.cambu.Size = UDim2.new(0.159,0,0.109,0)
    gkPlayerState.cambu.Position = UDim2.new(0.317,0,0.444,0)
    gkPlayerState.cambu.TextScaled = true
    gkPlayerState.cambu.Parent = gkPlayerState.guii

    gkPlayerState.gerg = Instance.new("TextButton")
    gkPlayerState.gerg.Text = "Body Mode"
    gkPlayerState.gerg.Size = UDim2.new(0.159,0,0.109,0)
    gkPlayerState.gerg.Position = UDim2.new(0.524,0,0.444,0)
    gkPlayerState.gerg.TextScaled = true
    gkPlayerState.gerg.Parent = gkPlayerState.guii

    gkPlayerState.dot = Instance.new("Frame")
    gkPlayerState.dot.Size = UDim2.new(0.012,0,0.025,0)
    gkPlayerState.dot.Position = UDim2.new(0.988,0,0.975,0)
    gkPlayerState.dot.BackgroundColor3 = Color3.fromRGB(0,255,0)
    gkPlayerState.dot.BorderSizePixel = 0
    gkPlayerState.dot.Parent = gkPlayerState.guii

    gkPlayerState.cambu.MouseButton1Up:Connect(function()
        gkPlayerState.kind = "cam"
    end)
    gkPlayerState.gerg.MouseButton1Up:Connect(function()
        gkPlayerState.kind = "body"
    end)

    repeat task.wait() until gkPlayerState.kind ~= ""
    gkPlayerState.cambu:Destroy()
    gkPlayerState.gerg:Destroy()

    local function getBall()
        return workspace.Terrain:FindFirstChild("Ball")
    end

    if gkPlayerState.kind == "body" then
        gkPlayerState.hum.AutoRotate = false
        gkPlayerState.align = Instance.new("AlignOrientation")
        gkPlayerState.align.Mode = Enum.OrientationAlignmentMode.OneAttachment
        gkPlayerState.align.Attachment0 = gkPlayerState.hrp:WaitForChild("RootAttachment")
        gkPlayerState.align.Responsiveness = 300
        gkPlayerState.align.MaxTorque = math.huge
        gkPlayerState.align.Enabled = false
        gkPlayerState.align.Parent = gkPlayerState.hrp
    end

    gkPlayerState.ballHolder = ReplicatedStorage.workspace.ballHolder
    gkPlayerState.lastHolder = gkPlayerState.ballHolder.Value

    gkPlayerState.ballHolder.Changed:Connect(function()
        local cur = gkPlayerState.ballHolder.Value
        if gkPlayerState.lastHolder == gkPlayerState.char and cur == nil then
            gkPlayerState.pause = true
            task.delay(0.7, function()
                gkPlayerState.pause = false
            end)
        end
        gkPlayerState.lastHolder = cur
    end)

    gkPlayerState.remote = ReplicatedStorage:WaitForChild("ByteNetReliable")

    local function cleanup()
        gkPlayerState.onn = false

        if gkPlayerState.align then
            gkPlayerState.align:Destroy()
        end

        gkPlayerState.cam.CameraType = gkPlayerState.originalCamType
        gkPlayerState.cam.CFrame = gkPlayerState.originalCamCFrame

        if gkPlayerState.guii then
            gkPlayerState.guii:Destroy()
        end
    end

    gkPlayerState.con = RunService.RenderStepped:Connect(function()
        if not gkPlayerState.onn then
            gkPlayerState.con:Disconnect()
            return
        end

        local ball = getBall()
        if not ball or gkPlayerState.plr.Team == game.Teams.lobby or gkPlayerState.pause then
            if gkPlayerState.align then gkPlayerState.align.Enabled = false end
            return
        end

        if gkPlayerState.kind == "cam" then
            gkPlayerState.cam.CameraType = Enum.CameraType.Scriptable
            gkPlayerState.cam.CFrame = CFrame.lookAt(gkPlayerState.cam.CFrame.Position, ball.Position)

        elseif gkPlayerState.kind == "body" then
            gkPlayerState.align.Enabled = true
            local dir = ball.Position - gkPlayerState.hrp.Position
            dir = Vector3.new(dir.X, 0, dir.Z)
            if dir.Magnitude > 0.01 then
                gkPlayerState.align.CFrame = CFrame.lookAt(Vector3.zero, dir)
            end
        end

        local dist = (gkPlayerState.hrp.Position - ball.Position).Magnitude
        if dist <= 60 then
            if ball.Position.Y >= gkPlayerState.hrp.Position.Y + 6 then
                gkPlayerState.hum.Jump = true
            else
                gkPlayerState.hum.Jump = false
            end

            gkPlayerState.remote:FireServer(
                buffer.fromstring(buffers.base),
                {
                    { "tackle" }
                }
            )
        end
    end)

    gkPlayerState.kill = UserInputService.InputBegan:Connect(function(input, gp)
        if gp then return end
        if input.KeyCode == Enum.KeyCode.F4 then
            cleanup()
            gkPlayerState.kill:Disconnect()
            gkPlayerState.con:Disconnect()
        end
    end)

    repeat task.wait() until gkPlayerState.hum.Health <= 0 or gkPlayerState.plr.Team == game.Teams.lobby
    cleanup()
    gkPlayerState.kill:Disconnect()
    gkPlayerState.con:Disconnect()
end)

local airdr = maintab2:Folder("Air Dribble Features.", Color3.fromRGB(24, 255, 228), true)
airdr:Label("Air Dribble: Dribbles The Ball Through The Air.")

local bindKey = Enum.KeyCode.LeftAlt

local airDribbleState = {
    enabled = false,
    isHolding = false,
    lastKick = 0
}

local cooldown = 0.255

local function notiy(text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Air Dribble",
        Text = text,
        Duration = 2
    })
end

airdr:Toggle("Air Dribble", "Kicks The Ball Forward Infront Of You And Up.", function()
    airDribbleState.enabled = not airDribbleState.enabled
    notiy(airDribbleState.enabled and "Enabled." or "Disabled.")
end)

airdr:Textbox("Air Dribble Bind", "Enter Key (Example: E, Q, LeftAlt.)", function(text)
    if typeof(text) ~= "string" then
        bindKey = Enum.KeyCode.LeftAlt
        notiy("Invalid Key. Bind Is Now LeftAlt.")
        return
    end

    local formatted = text:gsub("%s+", "")
    local success, key = pcall(function()
        return Enum.KeyCode[formatted]
    end)

    if success and key then
        bindKey = key
        notiy("Bind Set To: " .. key.Name)
    else
        bindKey = Enum.KeyCode.LeftAlt
        notiy("Invalid Key. Bind Is Now LeftAlt.")
    end
end)

local player = Players.LocalPlayer
local holdingConnection = nil

local function performAirDribble()
    local now = tick()
    if now - airDribbleState.lastKick < cooldown then
        return
    end

    local char = player.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not (hum and root) then return end

    airDribbleState.lastKick = now

    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://76587445975710"
    local track = hum:LoadAnimation(anim)
    track:Play()

    local dir = root.CFrame.LookVector
    local kickVec = Vector3.new(dir.X * 0.75, 0.65, dir.Z * 0.75)

    ReplicatedStorage:WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(buffers["base"]), {
        { "kick", 28, false, kickVec }
    })
end

UserInputService.InputBegan:Connect(function(input, gp)
    if gp or input.KeyCode ~= bindKey then return end
    if not airDribbleState.enabled then return end

    airDribbleState.isHolding = true

    performAirDribble()

    if holdingConnection then holdingConnection:Disconnect() end
    holdingConnection = RunService.Heartbeat:Connect(function()
        if airDribbleState.isHolding and airDribbleState.enabled then
            performAirDribble()
        else
            holdingConnection:Disconnect()
            holdingConnection = nil
        end
    end)
end)

UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == bindKey then
        airDribbleState.isHolding = false
        if holdingConnection then
            holdingConnection:Disconnect()
            holdingConnection = nil
        end
    end
end)

do
local othersil = maintab2:Folder("Other Features.", Color3.fromRGB(24, 255, 228), true)
othersil:Label("Other Features: Self Explanatory, Other Silent Features.")

local qteState = {
    enabled = false
}

othersil:Toggle("Auto QuickTimeEvent", "Automatically Does QuickTimeEvents, How Else Can I Explain It?", function()
qteState.enabled = not qteState.enabled

local function sendNotification(status)
    if not autoSkillState.suppressNotifs then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "QuickTimeEvent",
            Text = status,
            Duration = 1
        })
    end
end

local function convertNumberToKeyText(text)
    local numberMap = {
        ["1"] = "One", ["2"] = "Two", ["3"] = "Three", ["4"] = "Four", ["5"] = "Five",
        ["6"] = "Six", ["7"] = "Seven", ["8"] = "Eight", ["9"] = "Nine", ["0"] = "Zero"
    }
    return numberMap[text] or text
end

local function isShadeOfGreen(color)
    return color.G > color.R and color.G > color.B
end

local function checkQTE()
    local player = game:GetService("Players").LocalPlayer
    if qteState.enabled and player and player:FindFirstChild("PlayerGui") then
        local qteGui = player.PlayerGui:FindFirstChild("Qte")
        if qteGui and qteGui:FindFirstChild("QTE") then
            for _, descendant in ipairs(qteGui.QTE:GetDescendants()) do
                if descendant:IsA("Frame") or descendant:IsA("TextLabel") then
                    if isShadeOfGreen(descendant.BackgroundColor3) then
                        local textLabel = qteGui.QTE:FindFirstChild("TextLabel")
                        if textLabel then
                            local keyText = convertNumberToKeyText(textLabel.Text)
                            local keyCode = Enum.KeyCode[keyText]
                            if keyCode then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, keyCode, false, game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, keyCode, false, game)
                            end
                        end
                        break
                    end
                end
            end
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(checkQTE)

sendNotification(qteState.enabled and "Enabled." or "Disabled.")
end)

getgenv().AutoStealState = getgenv().AutoStealState or { enabled = false, connections = {} } 
state = getgenv().AutoStealState 

othersil:Toggle("Auto Steal Ball", "Automatically Attempts To Steal When Opponent Normal Kicks The Ball.", function(v) 
    Players = game:GetService("Players") 
    RunService = game:GetService("RunService") 
    lp = Players.LocalPlayer 
    state.enabled = v 
    animId = "rbxassetid://76587445975710" 
    
    function getHRP(char) 
        return char and char:FindFirstChild("HumanoidRootPart") 
    end 
    
    function stareAt(targetHRP, opponentPlayer) 
        char = lp.Character 
        hrp = getHRP(char) 
        if not hrp or not targetHRP then return end 
        
        if (hrp.Position - targetHRP.Position).Magnitude > 20 then return end
        
        start = tick() 
        conn = RunService.RenderStepped:Connect(function() 
            if not state.enabled or tick() - start > 0.5 then 
                conn:Disconnect() 
                return 
            end 
            pos = hrp.Position 
            tpos = targetHRP.Position 
            hrp.CFrame = CFrame.lookAt(pos, Vector3.new(tpos.X, pos.Y, tpos.Z)) 

			local args = {
    			buffer.fromstring(buffers["base"]),{{"tackle"}}}
			game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(unpack(args)) 

        end) 
    end 
    
    function hookCharacter(plr, char) 
        hum = char:WaitForChild("Humanoid") 
        animator = hum:WaitForChild("Animator") 
        conn = animator.AnimationPlayed:Connect(function(track) 
            if not state.enabled then return end 
            if track.Animation and track.Animation.AnimationId == animId then 
                stareAt(getHRP(char), plr) 
            end 
        end) 
        table.insert(state.connections, conn) 
    end 
    
    function hookPlayer(plr) 
        if plr == lp then return end 
        if plr.Character then 
            hookCharacter(plr, plr.Character) 
        end 
        table.insert(state.connections, plr.CharacterAdded:Connect(function(char) 
            hookCharacter(plr, char) 
        end)) 
    end 
    
    if not v then 
        for _, c in ipairs(state.connections) do 
            c:Disconnect() 
        end 
        table.clear(state.connections) 
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Auto Steal",
            Text = "Disabled.",
            Duration = 2
        })
        return 
    end 
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Auto Steal",
        Text = "Enabled.",
        Duration = 2
    })
    
    for _, p in ipairs(Players:GetPlayers()) do 
        hookPlayer(p) 
    end 
    table.insert(state.connections, Players.PlayerAdded:Connect(hookPlayer)) 
end)

local formlessState = {
    enabled = false
}

othersil:Toggle("Auto Formless (Bind: Y)", "Shidou Only Formless Macro.", function()
    formlessState.enabled = not (formlessState.enabled or false)

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Auto Formless",
        Text = formlessState.enabled and "Enabled." or "Disabled.",
        Duration = 2
    })

    if formlessState.inputConnection then
        formlessState.inputConnection:Disconnect()
        formlessState.inputConnection = nil
    end

    if formlessState.enabled then
        formlessState.inputConnection = game:GetService("UserInputService").InputBegan:Connect(function(input, gp)
            if gp or input.KeyCode ~= Enum.KeyCode.Y then return end
            if game:GetService("UserInputService").MouseBehavior ~= Enum.MouseBehavior.LockCenter then return end

            local LP = game:GetService("Players").LocalPlayer
            local char = LP.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            if not hrp or not hum then return end

            hum.AutoRotate = false

            local Camera = workspace.CurrentCamera
            local camType = Camera.CameraType
            local camSubject = Camera.CameraSubject
            local camCF = Camera.CFrame
            local flipped = camCF * CFrame.Angles(0, math.rad(180), 0)

            Camera.CameraType = Enum.CameraType.Scriptable
            Camera.CFrame = flipped

            task.delay(0.1, function()
                if LP.Character and LP.Character:FindFirstChildOfClass("Humanoid") then
                    Camera.CameraSubject = LP.Character:FindFirstChildOfClass("Humanoid")
                    Camera.CameraType = Enum.CameraType.Custom
                else
                    Camera.CameraSubject = camSubject
                    Camera.CameraType = camType
                end
                hum.AutoRotate = true
            end)

            task.wait(0.15)

            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://76587445975710"
            local track = hum:LoadAnimation(anim)
            track:Play()

            local dir = hrp.CFrame.LookVector
            local kickVec = vector.create(dir.X * 0.5, 1, dir.Z * 0.5)

            local remote = game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable")
            remote:FireServer(buffer.fromstring(buffers["base"]), { { "kick", 25, false, kickVec } })
            game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(
                buffer.fromstring(buffers["base"]), { { "skill1" } }
            )
        end)
    end
end)

local cutsceneState = {
    nocutscene = false
}

othersil:Toggle("No Cutscene", "Shitty Feature For Right Now That Disables Cutscenes.", function()
    cutsceneState.nocutscene = not cutsceneState.nocutscene
    local StarterGui = game:GetService("StarterGui")
    local SoundService = game:GetService("SoundService")
    local tempFolder = SoundService:FindFirstChild("celerontemp") or Instance.new("Folder", SoundService)
    tempFolder.Name = "celerontemp"
    local crowdSound = SoundService:FindFirstChild("football-crowd-3-69245") or tempFolder:FindFirstChild("football-crowd-3-69245")

    StarterGui:SetCore("SendNotification", {
        Title = "No Cutscene",
        Text = cutsceneState.nocutscene and "Enabled." or "Disabled.",
        Duration = 1
    })

    if cutsceneState.nocutscene then
        if crowdSound and crowdSound:IsDescendantOf(SoundService) then
            local clone = crowdSound:Clone()
            clone.Parent = tempFolder
            crowdSound:Stop()
            crowdSound:Destroy()
        end
    else
        local stored = tempFolder:FindFirstChild("football-crowd-3-69245")
        if stored then
            stored.Parent = SoundService
            stored:Play()
        end
    end
end)

local iframeState = {
    enabled = false,
    activeDots = {},
    dotSize = UDim2.new(0, 6, 0, 6),
    offset = Vector3.new(0, 3, 0),
    updateInterval = 0.2
}

othersil:Toggle("IFrame Indicator", "Shows The I-Frame Status Of All Players. (Green = Off, Red = On.)", function()
    iframeState.enabled = not iframeState.enabled

    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "IFrame Indicator",
        Text = iframeState.enabled and "Enabled." or "Disabled.",
        Duration = 3
    })

    local charactersFolder = workspace:FindFirstChild("characters")
    if not charactersFolder then return end

    local function createDot(char)
        if iframeState.activeDots[char] then return end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local gui = Instance.new("BillboardGui")
        gui.Name = "IframeDot"
        gui.Size = UDim2.new(0, 12, 0, 12)
        gui.StudsOffset = iframeState.offset
        gui.AlwaysOnTop = true
        gui.Adornee = hrp
        gui.Parent = hrp
        local dot = Instance.new("Frame")
        dot.Size = iframeState.dotSize
        dot.Position = UDim2.new(0.5, -3, 0.5, -3)
        dot.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
        dot.BorderSizePixel = 0
        dot.BackgroundTransparency = 0
        dot.Parent = gui
        iframeState.activeDots[char] = dot
    end

    local function updateDot(char, dot)
        local state = char:FindFirstChild("state")
        local iframe = state and state:FindFirstChild("iframe")
        if iframe and iframe:IsA("BoolValue") then
            dot.BackgroundColor3 = iframe.Value and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(0, 255, 0)
        else
            dot.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
        end
    end

    local function clearDots()
        for char, dot in pairs(iframeState.activeDots) do
            if dot and dot.Parent then
                dot.Parent:Destroy()
            end
        end
        iframeState.activeDots = {}
    end

    if iframeState.enabled then
        for _, char in ipairs(charactersFolder:GetChildren()) do
            createDot(char)
        end
        charactersFolder.ChildAdded:Connect(function(char)
            task.wait(0.5)
            if iframeState.enabled then
                createDot(char)
            end
        end)
        task.spawn(function()
            while iframeState.enabled do
                for char, dot in pairs(iframeState.activeDots) do
                    if char and dot then
                        updateDot(char, dot)
                    end
                end
                for _, char in ipairs(charactersFolder:GetChildren()) do
                    if not iframeState.activeDots[char] then
                        createDot(char)
                    end
                end
                task.wait(iframeState.updateInterval)
            end
        end)
    else
        clearDots()
    end
end)

othersil:Button("Fix Duplicate Ball", "I Don't Know If This Is Still An Issue But Removes Duplicate Balls If Existent.", function()
    for _, obj in ipairs(workspace.Terrain:GetDescendants()) do
        if obj:IsA("MeshPart") and obj.Name == "Ball" then
            obj:Destroy()
        end
    end
end)
end

do
local mobile = maintab2:Folder("Mobile Silent Features.", Color3.fromRGB(24, 255, 228), true)
mobile:Label("Mobile Silent Features: Silent Features Ported To Mobile.")

local mobform = {
    gui = nil,
    active = false
}

local function trigger()
    if game:GetService("UserInputService").MouseBehavior ~= Enum.MouseBehavior.LockCenter then return end
    local lp = game:GetService("Players").LocalPlayer
    local char = lp.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum then return end

    hum.AutoRotate = false
    local cam = workspace.CurrentCamera
    local camType = cam.CameraType
    local camSubject = cam.CameraSubject
    local camCF = cam.CFrame
    local flipped = camCF * CFrame.Angles(0, math.rad(180), 0)

    cam.CameraType = Enum.CameraType.Scriptable
    cam.CFrame = flipped

    task.delay(0.1, function()
        if lp.Character and lp.Character:FindFirstChildOfClass("Humanoid") then
            cam.CameraSubject = lp.Character:FindFirstChildOfClass("Humanoid")
            cam.CameraType = Enum.CameraType.Custom
        else
            cam.CameraSubject = camSubject
            cam.CameraType = camType
        end
        if hum and hum.Parent then
            hum.AutoRotate = true
        end
    end)

    task.wait(0.15)

    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://76587445975710"
    local track = hum:LoadAnimation(anim)
    track:Play()

    local dir = hrp.CFrame.LookVector
    local kickVec = Vector3.new(dir.X * 0.5, 1, dir.Z * 0.5)

    game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(buffers["base"]), { { "kick", 25, false, kickVec } })
    game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(buffers["base"]), { { "skill1" } })
end

local function makeDraggable(frame)
    local dragging, dragInput, dragStart, startPos
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
end

local function show()
    if mobform.gui then return end
    local pg = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    local sg = Instance.new("ScreenGui")
    sg.Name = "FormlessMobile"
    sg.ResetOnSpawn = false
    sg.Parent = pg
    mobform.gui = sg

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 60, 0, 60)
    btn.Position = UDim2.new(0.5, -50, 0.5, -50)
    btn.AnchorPoint = Vector2.new(0.5, 0.5)
    btn.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    btn.BorderSizePixel = 0
    btn.Text = "Formless"
    btn.TextColor3 = Color3.fromRGB(220, 220, 220)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 20
    btn.AutoButtonColor = true
    btn.Parent = sg

    local cr = Instance.new("UICorner")
    cr.CornerRadius = UDim.new(0, 8)
    cr.Parent = btn

    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    end)

    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    end)

    btn.Activated:Connect(trigger)

    makeDraggable(btn)
end

local function hide()
    if mobform.gui then
        mobform.gui:Destroy()
        mobform.gui = nil
    end
end

mobile:Button("Auto Formless (Mobile Button.)", "Click Again To Remove Button.", function()
    mobform.active = not mobform.active
    if mobform.active then
        show()
    else
        hide()
    end
end)

local airDribble = {
    gui = nil,
    active = false,
    enabled = true
}

local function trigger()
    if not airDribble.enabled then return end
    local char = game:GetService("Players").LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum then return end

    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://76587445975710"
    hum:LoadAnimation(anim):Play()

    local dir = hrp.CFrame.LookVector
    local kickVec = Vector3.new(dir.X * 0.75, 0.65, dir.Z * 0.75)

    game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(
        buffer.fromstring(buffers["base"]),
        { { "kick", 28, false, kickVec } }
    )
end

local function makeDraggable(frame)
    local dragging, dragInput, dragStart, startPos
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
end

local function show()
    if airDribble.gui then return end
    local sg = Instance.new("ScreenGui")
    sg.Name = "AirDribbleMobile"
    sg.ResetOnSpawn = false
    sg.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    airDribble.gui = sg

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 60, 0, 60)
    btn.Position = UDim2.new(0.5, -50, 0.5, -50)
    btn.AnchorPoint = Vector2.new(0.5, 0.5)
    btn.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    btn.BorderSizePixel = 0
    btn.Text = "Air Dribble"
    btn.TextColor3 = Color3.fromRGB(220, 220, 220)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 20
    btn.AutoButtonColor = true
    btn.Parent = sg

    local cr = Instance.new("UICorner")
    cr.CornerRadius = UDim.new(0, 8)
    cr.Parent = btn

    btn.MouseEnter:Connect(function() btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35) end)
    btn.MouseLeave:Connect(function() btn.BackgroundColor3 = Color3.fromRGB(15, 15, 15) end)
    btn.Activated:Connect(trigger)
    makeDraggable(btn)
end

local function hide()
    if airDribble.gui then
        airDribble.gui:Destroy()
        airDribble.gui = nil
    end
end

mobile:Button("Air Dribble (Mobile Button)", "Click Again To Remove Button.", function()
    airDribble.active = not airDribble.active
    if airDribble.active then show() else hide() end
end)

mobilessss = maintab2:Folder("Mobile Simulation Features.", Color3.fromRGB(24, 255, 228), true)

getgenv().MobileKeySystem = getgenv().MobileKeySystem or {
    key = "",
    buttons = {}
}

local function normalizeKey(key)
    if not key then return nil end

    key = tostring(key):gsub("%s+", ""):lower()

    local map = {
        leftalt = "LeftAlt",
        rightalt = "RightAlt",
        leftshift = "LeftShift",
        rightshift = "RightShift",
        leftctrl = "LeftControl",
        rightctrl = "RightControl",

        enter = "Return",
        returnkey = "Return",
        space = "Space",
        backspace = "Backspace",
        delete = "Delete",
        tab = "Tab",
        escape = "Escape",
    }

    if map[key] then
        return map[key]
    end

    if key:find("mouse") then
        return nil
    end

    if #key == 1 and key:match("%a") then
        return key:upper()
    end

    if key:match("^%d$") then
        return key
    end

    return key:sub(1,1):upper() .. key:sub(2)
end

local function makeDraggable(frame)
    local dragging, dragInput, dragStart, startPos

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

            dragging = true
            dragStart = input.Position
            startPos = frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
end

mobilessss:Textbox("Key To Simulate", "Enter Key To Simulate (Example: C, Z, LeftAlt.)", function(v)
    getgenv().MobileKeySystem.key = normalizeKey(v)
end)

mobilessss:Button("Create Mobile PC Key", "Creates A Mobile PC Key.", function()
    local key = getgenv().MobileKeySystem.key
    if not key then return end

    local sg = Instance.new("ScreenGui")
    sg.Name = "MobileKey_" .. key
    sg.ResetOnSpawn = false
    sg.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 60, 0, 60)
    btn.Position = UDim2.new(0.5, math.random(-150, 150), 0.5, math.random(-150, 150))
    btn.AnchorPoint = Vector2.new(0.5, 0.5)

    btn.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    btn.BorderSizePixel = 0
    btn.Text = key
	btn.Transparency = 0.4
    btn.TextColor3 = Color3.fromRGB(220, 220, 220)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 20
    btn.Parent = sg

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = btn

    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    end)

    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    end)

    btn.Activated:Connect(function()
        local vim = game:GetService("VirtualInputManager")
        vim:SendKeyEvent(true, key, false, game)
        task.wait()
        vim:SendKeyEvent(false, key, false, game)
    end)

    makeDraggable(btn)

    table.insert(getgenv().MobileKeySystem.buttons, sg)
end)

mobilessss:Button("Remove Mobile PC Keys", "Removes All Mobile PC Keys.", function()
    for _, v in ipairs(getgenv().MobileKeySystem.buttons) do
        if v then v:Destroy() end
    end
    table.clear(getgenv().MobileKeySystem.buttons)
end)

funtab:Label("Celeron's Movesets, Recommend Using In Normal Servers.")

funtab:Button("Goku Moveset (Req. Isagi)", "Click F4 To Disable.", function()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Credits",
        Text = "brought to you by celeron!",
        Duration = 5,
        Button1 = "OK",
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ghostofcelleron/Celeron/refs/heads/main/goku%20moveset%20(azl)",true))()
end)

funtab:Button("Aizen Moveset (Req. Isagi)", "Click F4 To Disable.", function()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Credits",
        Text = "brought to you by celeron!",
        Duration = 5,
        Button1 = "OK",
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ghostofcelleron/Celeron/refs/heads/main/aizen%20moveset",true))()
end)

funtab:Button("Loki Moveset (V2) (Req. Isagi.)", "Click F4 To Disable, Rejoin To Fix Isagi Music.", function()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Credits",
        Text = "brought to you by celeron!",
        Duration = 5,
        Button1 = "OK",
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ghostofcelleron/Celeron/refs/heads/main/loki%20v2"))()
end)

funtab:Button("Ronaldo Moveset (V3) (Req. Shidou)", "Click F4 To Disable.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ghostofcelleron/Celeron/refs/heads/main/ronaldov3"))()
end)

funtab:Label("Daffy's Movesets.")

funtab:Button("Gojo Moveset (Req. Isagi.)", "Click F4 To Disable.", function()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Credits",
        Text = "brought to you by daffy!",
        Duration = 5,
        Button1 = "OK",
    })
    loadstring(cleanedPayloads['th8'])()
end)

funtab:Button("Hugo Moveset (Early Access.) (Req. Kunigami)", "Click F4 To Disable, Rejoin To Fix Kunigami Music.", function()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Credits",
        Text = "brought to you by daffy!",
        Duration = 5,
        Button1 = "OK",
    })
loadstring(cleanedPayloads['nd6'])()
end)

funtab:Button("Naoya Moveset (Req. Sae)", "Click F4 To Disable.", function()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Credits",
        Text = "brought to you by daffy!",
        Duration = 5,
        Button1 = "OK",
    })
    loadstring(cleanedPayloads['pdw'])()
end)

misctab:Button("Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

teleporttab:Button("Middle Field", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-540, 3, 1274)
end)

teleporttab:Button("Commentator Area", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6, 2, 3237)
end)

teleporttab:Button("Goal Box (A)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-537, 3, 1575)
end)

teleporttab:Button("Goal Box (B)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-534, 3, 974)
end)

misctab:Toggle("Enable All Dubs / Voicelines", "Enables Dub Voicelines For All Styles.", function(sts)
    local lp = game:GetService("Players").LocalPlayer
    local setting = lp.setting

    local dubs = {
        setting.dub_yukimiya,
        setting.dubVoicelines,
        setting.britishaikuevil,
        setting.dub_barou,
        setting.dub_chigiri,
        setting.dub_donlorenzo,
        setting.dub_gagamaru,
        setting.dub_isagi,
        setting.dub_kaiser,
        setting.dub_karasu,
        setting.dub_kunigami,
        setting.dub_masterylorenzo,
        setting.dub_nagi,
        setting.dub_otoya,
        setting.dub_rin,
        setting.dub_sae,
        setting.dub_what,
    }

    for _, dub in ipairs(dubs) do
        if dub then
            dub.Value = sts
        end
    end

    game.StarterGui:SetCore("SendNotification", {
        Title = "Dub Voicelines",
        Text = sts and "Enabled." or "Disabled.",
        Duration = 1
    })
end)

misctab:Label("Emotes.")

local emoteStates = {
    toosie = false,
    sae = false,
    assumptions = false
}

misctab:Toggle("Toosie Slide", function()
    emoteStates.toosie = not emoteStates.toosie

    local animationId = "rbxassetid://95959941666543"
    local soundId = "rbxassetid://1845341094"

    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local animator = humanoid:FindFirstChildOfClass("Animator")

    local animation = Instance.new("Animation")
    animation.AnimationId = animationId

    local animationTrack = animator:LoadAnimation(animation)

    local sound

    if emoteStates.toosie then
        animationTrack:Play()
        sound = Instance.new("Sound")
        sound.Name = "Toosie Slide"
        sound.SoundId = soundId
        sound.Looped = true
        sound.Parent = game.SoundService
        sound:Play()
    else
        for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
            track:Stop()
        end

        local existingSound = game.SoundService:FindFirstChild("Toosie Slide")
        if existingSound then
            existingSound:Stop()
            existingSound:Destroy()
        end
    end
end)

misctab:Toggle("Sae Pose", function()
    emoteStates.sae = not emoteStates.sae

    local animationId = "rbxassetid://136812327261825"
    local soundId = "rbxassetid://1843404009"

    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local animator = humanoid:FindFirstChildOfClass("Animator")

    local animation = Instance.new("Animation")
    animation.AnimationId = animationId

    local animationTrack = animator:LoadAnimation(animation)

    local sound

    if emoteStates.sae then
        animationTrack:Play()
        sound = Instance.new("Sound")
        sound.Name = "Sae Pose"
        sound.SoundId = soundId
        sound.Volume = 1
        sound.Looped = true
        sound.Parent = game.SoundService
        sound:Play()
    else
        for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
            track:Stop()
        end

        local existingSound = game.SoundService:FindFirstChild("Sae Pose")
        if existingSound then
            existingSound:Stop()
            existingSound:Destroy()
        end
    end
end)

misctab:Toggle("Assumptions", function()
    emoteStates.assumptions = not emoteStates.assumptions

    local animationId = "rbxassetid://108778663919542"
    local soundId = "rbxassetid://137023124734348"

    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local animator = humanoid:FindFirstChildOfClass("Animator")

    local animation = Instance.new("Animation")
    animation.AnimationId = animationId

    local animationTrack = animator:LoadAnimation(animation)

    local sound

    if emoteStates.assumptions then
        animationTrack:Play()
        sound = Instance.new("Sound")
        sound.Name = "Assumptions"
        sound.SoundId = soundId
        sound.PlaybackSpeed = 0.17
        sound.Volume = 0.6
        sound.Looped = true
        sound.Parent = game.SoundService

        local eq = Instance.new("EqualizerSoundEffect")
        eq.LowGain = 10
        eq.MidGain = 0
        eq.HighGain = 4
        eq.Parent = sound

        sound:Play()
    else
        for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
            track:Stop()
        end

        local existingSound = game.SoundService:FindFirstChild("Assumptions")
        if existingSound then
            existingSound:Stop()
            existingSound:Destroy()
        end
    end
end)

misctab:Button("Akuma Taunt", function()
    local animationId = "rbxassetid://111005363990501"
    local soundId = "rbxassetid://133370927301258"

    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local animator = humanoid:FindFirstChildOfClass("Animator")

    local animation = Instance.new("Animation")
    animation.AnimationId = animationId

    local animationTrack = animator:LoadAnimation(animation)

    local sound = Instance.new("Sound")
    sound.Name = "Akuma Taunt"
    sound.SoundId = soundId
    sound.Volume = 10
    sound.Parent = game.SoundService

    animationTrack:Play()
    sound:Play()

    sound.Ended:Connect(function()
        sound:Destroy()
    end)

    animationTrack.Stopped:Connect(function()
        animationTrack:Stop()
    end)
end)

misctab:Button("Cartoon Fall", function()
    local animationId = "rbxassetid://98064370044269"
    local soundIds = { "rbxassetid://8663054927", "rbxassetid://4979513906" }

    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local animator = humanoid:FindFirstChildOfClass("Animator")

    local animation = Instance.new("Animation")
    animation.AnimationId = animationId

    local animationTrack = animator:LoadAnimation(animation)

    local sound = Instance.new("Sound")
    sound.Name = "Ragdoll"
    sound.Volume = 10
    sound.Parent = game.SoundService

    local currentIndex = 1

    local function playNextSound()
        if currentIndex <= #soundIds then
            sound.SoundId = soundIds[currentIndex]
            sound:Play()

            sound.Ended:Connect(function()
                currentIndex = currentIndex + 1
                playNextSound()
            end)
        else
            sound:Destroy()
        end
    end
    animationTrack:Play()
    playNextSound()
end)

misctab:Button("Spit", function()
    local animationId = "rbxassetid://97257010665720"
    local soundId = "rbxassetid://18111052648"

    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local animator = humanoid:FindFirstChildOfClass("Animator")

    local animation = Instance.new("Animation")
    animation.AnimationId = animationId

    local animationTrack = animator:LoadAnimation(animation)

    local sound = Instance.new("Sound")
    sound.Name = "Spit"
    sound.SoundId = soundId
    sound.Volume = 2
    sound.Parent = game.SoundService

    animationTrack:Play()
    sound:Play()

    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end)

exploittab:Label("Semi-Private Server: People MAY Still Join Depending On Updates.")

exploittab:Button("Semi-Private Server Info", "This Comes With Instructions On How To Use The Feature Below.", function()
    local StarterGui = game:GetService("StarterGui")

    StarterGui:SetCore("SendNotification", {
        Title = "Semi-Private Server Info",
        Text = "If you end up in a server with another player, block someone.",
        Duration = 10
    }) task.wait(0.5)
    StarterGui:SetCore("SendNotification", {
        Title = "Semi-Private Server Info",
        Text = "After blocking a player in that server, run the feature to create a server again!",
        Duration = 10
    })
end)

exploittab:Button("Semi-Private Server (Method: 11v11)", "This Feature Creates A Server Where You Can Farm Goals / Quests!", function()
    game:GetService("TeleportService"):Teleport(85946466968831, game.Players.LocalPlayer)
end)

exploittab:Label("Instant Disconnect: Automatically Disconnects If Other Players Join.")

local disconnectState = {
    limit = nil,
    enabled = false
}

exploittab:Textbox("Instant Disconnect", "If More Than The Entered Number Of Players Join, You Disconnect.", function(v)
    local n = tonumber(v)
    if n then
        disconnectState.limit = n
    else
        disconnectState.limit = nil
    end
end)

exploittab:Toggle("Enable Instant Disconnect", "Toggles The Above Feature.", function(v)
    disconnectState.enabled = v
    if v then
        game.StarterGui:SetCore("SendNotification", {Title="Instant Disconnect", Text="Enabled."})
    else
        game.StarterGui:SetCore("SendNotification", {Title="Instant Disconnect", Text="Disabled."})
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if disconnectState.enabled and disconnectState.limit and #game.Players:GetPlayers() > disconnectState.limit then
        game.Players.LocalPlayer:Kick("Instant Disconnect Has Been Triggered.")
    end
end)
end

do
exploittab:Label("Goal Farming: Use At Your Own Risk, I Am Not Responsible For Bans.")

local goalFarmState = {
    Enabled = false,
    CFConn = nil,
    RenderConn = nil,
    StopAt = nil,
    goal = 0,
    desc = "not-started"
}

buffer = buffer or {
    fromstring = function(str)
        return str
    end
}

local GoalPlayers = game:GetService("Players")
local GoalRunService = game:GetService("RunService")
local GoalReplicatedStorage = game:GetService("ReplicatedStorage")

local GoalMapFolder = workspace:WaitForChild("map")
local GoalAGoal = GoalMapFolder:WaitForChild("Agoal")
local GoalBGoal = GoalMapFolder:WaitForChild("Bgoal")
local GoalLocalPlayer = GoalPlayers.LocalPlayer

local function firePacketsIfNearGoal()
    local char = GoalLocalPlayer.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    if (root.Position - Vector3.new(-371, 13, -1599)).Magnitude <= 15 or
       (root.Position - Vector3.new(-196, 13, -1599)).Magnitude <= 15 then
        game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(pick .. "\001\001\000A"))
        game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(buffer.fromstring(pick .. "\001\001\000B"))
    end
end

local function IsInGame()
    local LocalCharacter = GoalLocalPlayer.Character
    if not LocalCharacter then return false end
    local StateFolder = LocalCharacter:FindFirstChild("state")
    if not StateFolder then return false end
    local InGameValue = StateFolder:FindFirstChild("ingame")
    if not InGameValue then return false end
    return InGameValue.Value
end

local function DisableCollisionBoxes()
    local MapFolder = workspace:FindFirstChild("map")
    if not MapFolder then return end
    local GkBarriar = MapFolder:FindFirstChild("gkbarriar")
    local AGoal = MapFolder:FindFirstChild("Agoal")
    local BGoal = MapFolder:FindFirstChild("Bgoal")
    if GkBarriar then
        local ABarriar = GkBarriar:FindFirstChild("A")
        local BBarriar = GkBarriar:FindFirstChild("B")
        if ABarriar then ABarriar.CanCollide = false end
        if BBarriar then BBarriar.CanCollide = false end
    end
    if AGoal then AGoal.CanCollide = false end
    if BGoal then BGoal.CanCollide = false end
end

local function StealBall()
    local LocalCharacter = GoalLocalPlayer.Character
    local LocalHumanoidRootPart = LocalCharacter and LocalCharacter:FindFirstChild("HumanoidRootPart")
    local Football = workspace.Terrain:FindFirstChild("Ball")
    if LocalHumanoidRootPart and Football then
        task.wait(0.5)
        LocalHumanoidRootPart.CFrame = CFrame.new(Football.Position.X, 0, Football.Position.Z)
    end
    for _, OtherPlayer in pairs(GoalPlayers:GetPlayers()) do
        if OtherPlayer ~= GoalLocalPlayer then
            local OtherCharacter = OtherPlayer.Character
            local OtherFootball = OtherCharacter and OtherCharacter:FindFirstChild("Ball")
            local OtherHumanoidRootPart = OtherCharacter and OtherCharacter:FindFirstChild("HumanoidRootPart")
            if OtherFootball and OtherHumanoidRootPart and LocalHumanoidRootPart then
                task.wait(0.5)
                LocalHumanoidRootPart.CFrame = OtherFootball.CFrame
                local args = {
                    buffer.fromstring(buffers["base"]),
                    {
                        {
                            "tackle"
                        }
                    }
                }
                GoalReplicatedStorage:WaitForChild("ByteNetReliable"):FireServer(unpack(args))
            end
        end
    end
end

local function HasBall()
    local LocalCharacter = GoalLocalPlayer.Character
    local Football = LocalCharacter and LocalCharacter:FindFirstChild("Ball")
    return Football ~= nil
end

local function stopGoalFarm()
    if not goalFarmState.Enabled then return end
    goalFarmState.Enabled = false

    if goalFarmState.CFConn then
        goalFarmState.CFConn:Disconnect()
        goalFarmState.CFConn = nil
    end
    if goalFarmState.RenderConn then
        goalFarmState.RenderConn:Disconnect()
        goalFarmState.RenderConn = nil
    end

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Goal Farm",
        Text = "Target Reached! :3",
        Duration = 2
    })
end

local function trackGoalsLoop()
    task.spawn(function()
        local goals = GoalLocalPlayer:WaitForChild("leaderstats"):WaitForChild("goals")
        while goalFarmState.Enabled do
            task.wait(1)
            local count = goals.Value
            if goalFarmState.StopAt and count >= goalFarmState.StopAt then
                stopGoalFarm()
                return
            end
        end
    end)
end

exploittab:Toggle("Goal Farm", "Automatically Farms Goals For You.", function()
    goalFarmState.Enabled = not goalFarmState.Enabled
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Goal Farm",
        Text = goalFarmState.Enabled and "Enabled." or "Disabled.",
        Duration = 1
    })
    if goalFarmState.Enabled then
        goalFarmState.CFConn = GoalLocalPlayer.CharacterAdded:Connect(function()
            task.wait(1)
            if goalFarmState.Enabled then
                firePacketsIfNearGoal()
            end
        end)
        task.spawn(function()
            repeat task.wait() until GoalLocalPlayer.Character and GoalLocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if goalFarmState.Enabled then
                firePacketsIfNearGoal()
            end
        end)
        goalFarmState.RenderConn = GoalRunService.RenderStepped:Connect(function()
            if not goalFarmState.Enabled then return end
            pcall(function()
                if not IsInGame() then return end
                DisableCollisionBoxes()
                StealBall()
                if HasBall() then
                    local LocalCharacter = GoalLocalPlayer.Character
                    local LocalRootPart = LocalCharacter and LocalCharacter:FindFirstChild("HumanoidRootPart")
                    local Goal = GoalLocalPlayer.Team.Name == "A" and GoalBGoal or GoalAGoal
                    if LocalRootPart and Goal then
                        task.wait(0.5)
                        LocalRootPart.CFrame = Goal.CFrame
                        task.wait(0.185)
                        local args = {
                            buffer.fromstring(buffers["base"]),
                            {
                                {
                                    "kick",
                                    20,
                                    false,
                                    vector.create(0, 1, 0)
                                }
                            }
                        }
                        GoalReplicatedStorage:WaitForChild("ByteNetReliable"):FireServer(unpack(args))
                    end
                end
            end)
        end)
        trackGoalsLoop()
    else
        stopGoalFarm()
    end
end)

exploittab:Textbox("Goal Target", "Enter A Number Of Goals To Stop Farming At.", function(v)
    local num = tonumber(v)
    if num then
        goalFarmState.StopAt = num
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Goal Target",
            Text = "Goal Target: " .. num,
            Duration = 2
        })
    else
        goalFarmState.StopAt = math.huge
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Goal Target",
            Text = "Invalid Target, Farm Will Be Infinite.",
            Duration = 2
        })
    end
end)
end
