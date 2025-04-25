local Locate = script.Parent.Parent.Parent.Parent
local boardpart = script.Parent.Parent.Parent

local AS = Locate["Main"]

if not AS then
	script:Destroy()
end

-- Clean up any existing SurfaceGui
for _, child in ipairs(AS:GetChildren()) do
	if child:IsA("SurfaceGui") then
		child:Destroy()
	end
end

-- Create SurfaceGui
local surfacegui = Instance.new("SurfaceGui")
surfacegui.Parent = AS
surfacegui.Face = Enum.NormalId.Right
surfacegui.AlwaysOnTop = true
surfacegui.Adornee = AS
surfacegui.LightInfluence = 0
surfacegui.ResetOnSpawn = false
surfacegui.ZOffset = 0.1
surfacegui.ClipsDescendants = false
surfacegui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud
surfacegui.PixelsPerStud = 50

-- Create ImageLabel
local Watermark = Instance.new("ImageLabel")
Watermark.Parent = surfacegui
Watermark.Size = UDim2.new(0, 100, 0, 10)
Watermark.Position = UDim2.new(0, 50, 0, 0)
Watermark.BackgroundTransparency = 1
Watermark.Image = "rbxassetid://115768890692379"
Watermark.ImageTransparency = 0.3
Watermark.ScaleType = Enum.ScaleType.Fit
Watermark.ResampleMode = Enum.ResamplerMode.Pixelated

local Parcel = require(9428572121)

if Parcel:Whitelist("6804e132e4e58f9740ec2c2f", "ujy3yc65gdfs0u7qmv4e5m3ihnnn") then
	local Settings = require(script.Parent.Parent.Parent.Parent.Settings)
	local TweenService = game:GetService("TweenService")

	-- Ad logic
	local AdvertisementScreen = script.Parent.Advertisement1

	if Settings.config.skipStartup then
		AdvertisementScreen.Visible = true
		while true do
			wait(6)
			AdvertisementScreen:TweenPosition(UDim2.new(0, 0, -1, 0), "InOut", "Sine", 2)
			wait(6)
			AdvertisementScreen:TweenPosition(UDim2.new(0, 0, -2, 0), "InOut", "Sine", 2)
			wait(6)
			AdvertisementScreen:TweenPosition(UDim2.new(0, 0, -3, 0), "InOut", "Sine", 2)
			wait(6)
			AdvertisementScreen:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Sine", 2)
		end
	else
		local RunService = game:GetService("RunService")
		local TweenService = game:GetService("TweenService")

		-- Get UI elements
		local Startup = script.Parent.Startup
		local Page_1 = Startup["1"]
		local Page_2 = Startup["2"]
		local Page_3 = Startup["3"]
		local Page_4 = Startup["4"]
		local Spinner = Page_1.Spinner
		local Spinner2 = Page_2.Spinner
		local Status2 = Page_2.Status
		local Admin = Page_2.User

		Page_1.Logo.Image = "rbxassetid://115768890692379"
		Page_1.Spinner.Image = "rbxassetid://101711598318493"
		Page_2.Background.Image = "rbxassetid://77476848847425"
		Page_2.Spinner.Image = "rbxassetid://101711598318493"
		Page_2.User.Image = "rbxassetid://89662402893775"
		Page_3.Background.Image = "rbxassetid://73859639886594"
		Page_4.Logo.Image = "rbxassetid://115768890692379"
		Page_4.Status.Text = "Advertisement Solutions"
		Page_4.Subtitle.Text = "Welcome!"

		local messages = {
			"Preparing Windows...",
			"Starting services...",
			"Checking drives...",
			"Finalizing updates...",
			"Ready"
		}

		-- Run the sequence immediately when script starts
		Startup.Visible = true
		Page_1.Visible = true
		Spinner.Visible = true

		-- Spin first spinner
		local spinConn1 = RunService.Heartbeat:Connect(function(dt)
			Spinner.Rotation += 100 * dt
		end)

		wait(10)

		-- Fade out first spinner
		TweenService:Create(Spinner, TweenInfo.new(2), {ImageTransparency = 1}):Play()

		wait(2)

		Page_1.Visible = false
		Page_2.Visible = true
		Admin.ImageTransparency = 1
		Admin.Visible = true

		-- Fade in admin
		TweenService:Create(Admin, TweenInfo.new(1.5), {ImageTransparency = 0}):Play()
		wait(1)

		-- Spin second spinner
		local spinConn2 = RunService.Heartbeat:Connect(function(dt)
			Spinner2.Rotation += 100 * dt
		end)
		Spinner2.Visible = true

		wait(0.2)
		Status2.Visible = true

		-- Show status messages
		for _, text in ipairs(messages) do
			Status2.Text = text
			wait(4)
		end

		-- Final transition
		TweenService:Create(Page_2, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
		wait(1)

		local fadeOutInfo = TweenInfo.new(
			1, -- 1 second duration
			Enum.EasingStyle.Quad, -- Smooth easing
			Enum.EasingDirection.Out -- Gentle finish
		)

		-- Also fade Page_2's background
		TweenService:Create(Page_2, fadeOutInfo, {
			BackgroundTransparency = 1
		}):Play()

		wait(2) -- Wait for fade to complete

		-- Show Page_3 (with optional fade-in)
		Page_3.Visible = true
		Page_2.Visible = false -- Now safe to hide

		wait(4)

		Page_4.Visible = true
		Page_3.Visible = false

		Page_4.Visible = true
		Page_4.BackgroundTransparency = 1 -- Start transparent
		Page_4.Size = UDim2.new(0, 0, 0, 0) -- Start tiny
		Page_4.AnchorPoint = Vector2.new(0.5, 0.5) -- Center anchor
		Page_4.Position = UDim2.new(0.5, 0, 0.5, 0) -- Center position

		-- Create circular mask (for circle-to-rectangle effect)
		local mask = Instance.new("UICorner")
		mask.CornerRadius = UDim.new(1, 0) -- Full circle initially
		mask.Parent = Page_4

		-- Animate the pop-up
		local popTween = TweenService:Create(
			Page_4,
			TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
			{
				BackgroundTransparency = 0, -- Fade in
				Size = UDim2.new(1, 0, 1, 0) -- Full size
			}
		)

		-- Animate the corner radius (circle to rectangle)
		local cornerTween = TweenService:Create(
			mask,
			TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{
				CornerRadius = UDim.new(0, 0) -- No rounding at end
			}
		)

		popTween:Play()
		cornerTween:Play()

		-- After Page_4 has been visible for 3 seconds:
		wait(3)

		-- 1. Fade out Page_4 and all its contents
		local fadeOutTween = TweenInfo.new(1, Enum.EasingStyle.Quad)

		-- Fade all GUI elements in Page_4
		for _, guiObj in ipairs(Page_4:GetDescendants()) do
			if guiObj:IsA("Frame") then
				TweenService:Create(guiObj, fadeOutTween, {BackgroundTransparency = 1}):Play()
			elseif guiObj:IsA("ImageLabel") or guiObj:IsA("ImageButton") then
				TweenService:Create(guiObj, fadeOutTween, {ImageTransparency = 1}):Play()
			elseif guiObj:IsA("TextLabel") or guiObj:IsA("TextButton") then
				TweenService:Create(guiObj, fadeOutTween, {
					TextTransparency = 1,
					BackgroundTransparency = 1
				}):Play()
			end
		end

		-- 2. Wait for fade to complete
		wait(1)

		-- 3. Hide Page_4 and show Advertisement (using your existing variable)
		Page_4.Visible = false
		Startup.Visible = false
		AdvertisementScreen.Visible = true


		-- Clean up connections
		spinConn1:Disconnect()
		spinConn2:Disconnect()



		if AdvertisementScreen then
			while true do
				wait(6)
				AdvertisementScreen:TweenPosition(UDim2.new(0, 0, -1, 0), "InOut", "Sine", 2)
				wait(6)
				AdvertisementScreen:TweenPosition(UDim2.new(0, 0, -2, 0), "InOut", "Sine", 2)
				wait(6)
				AdvertisementScreen:TweenPosition(UDim2.new(0, 0, -3, 0), "InOut", "Sine", 2)
				wait(6)
				AdvertisementScreen:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Sine", 2)
			end
		end
	end
else
	script:Destroy()
end
