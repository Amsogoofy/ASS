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
surfacegui.AlwaysOnTop = false
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
Watermark.Size = UDim2.new(0, 100, 0, 7)
Watermark.Position = UDim2.new(0, 5, 0, 0)
Watermark.BackgroundTransparency = 1
Watermark.Image = "rbxassetid://115768890692379"
Watermark.ImageTransparency = 0.3
Watermark.ScaleType = Enum.ScaleType.Fit
Watermark.ResampleMode = Enum.ResamplerMode.Pixelated

local Parcel = require(9428572121)

if Parcel:Whitelist("6804e132e4e58f9740ec2c2f", "ujy3yc65gdfs0u7qmv4e5m3ihnnn") then
	local Settings = require(script.Parent.Parent.Parent.Parent.Parent.Settings)
	local TweenService = game:GetService("TweenService")

	-- Ad logic
	local AdvertisementScreen = script.Parent.Parent.Advertisement1

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
		local TweenService = game:GetService("TweenService")
		local Startup = script.Parent.Parent["Startup"]
		local Page_1 = Startup["1"]
		local Image1 = Page_1["Logo"]
		
		Image1.Image = "rbxassetid://115768890692379"
		Page_1.Visible = true
		Image1.Visible = true
		Startup.Visible = true
		wait(10)

		-- Fade out logo
		TweenService:Create(Image1, TweenInfo.new(2), {ImageTransparency = 1}):Play()
		
		wait(2)
		-- Page 2 Variables
		local Page_2 = Startup["2"]
		local Logo2 = Page_2["Logo 2"]
		local All_Rights_Reserved = Page_2["All Rights Reserved."]
		local Copyright = Page_2["Copyright 2025"]
		local Initializing_Storage_Controllers = Page_2["Initializing Storage Controllers"]
		local Complete = Page_2["Complete"]
		local PressF12 = Page_2["Press F12 for Boot Options"]
		local Dots = Page_2["Dots"]
		local PressDEL = Page_2["Press DEL to Enter Setup"]
		local CPU = Page_2["CPU: Intel(R) Xeon(R) Silver"]
		local Eclipse_Core = Page_2["Eclipse Core"]
		local Speed = Page_2["Speed: 3.20GHz | Cores: 10"]
		local Model = Page_2["Model: 4210R @ 2.40GHz"]
		local Numbers = Page_2["88-7241 000003 051199 F1500000 C7P E"]
		-- Anti Changing
		Logo2.Image = "rbxassetid://115768890692379"
		All_Rights_Reserved.Text = "All Rights Reserved."
		Copyright.Text = "Copyright 2025"
		Initializing_Storage_Controllers.Text = "Initializing Storage Controllers"
		Complete.Text = "Complete"
		PressF12.Text = "Press F12 for Boot Options"
		Dots.Text = "..."
		PressDEL.Text = "Press DEL to Enter Setup"
		CPU.Text = "CPU: Intel(R) Xeon(R) Silver"
		Eclipse_Core.Text = "Eclipse Core"
		Speed.Text = "Speed: 3.20GHz | Cores: 10"
		Model.Text = "Model: 4210R @ 2.40GHz"
		Numbers.Text = "88-7241 000003 051199 F1500000 C7P E"

		Page_2.Visible = true
		Page_1.Visible = false

		Logo2.Visible = true
		Eclipse_Core.Visible = true
		wait(1.5)
		CPU.Visible = true
		wait(1)
		Model.Visible = true
		wait(1)
		Speed.Visible = true
		wait(3)
		PressDEL.Visible = true
		wait(0.5)
		PressF12.Visible = true
		wait(3.5)
		Initializing_Storage_Controllers.Visible = true
		Dots.Visible = true
		local startTime = os.clock()
		local duration = 5 -- Stop after 5 seconds
		repeat
			wait(0.5)
			Dots.Text = "."
			wait(0.5)
			Dots.Text = ".."
			wait(0.5)
			Dots.Text = "..."
		until os.clock() - startTime >= duration
		Dots.Visible = false
		Complete.Visible = true

		wait(2)
		All_Rights_Reserved.Visible = true
		Numbers.Visible = true
		Copyright.Visible = true
		wait(5)

		-- Show Page_3 (with optional fade-in)
		local Page_3 = Startup["3"]
		local ASSAPP = Page_3["ASAPP"]
		local BIN = Page_3["BIN"]
		local Background = Page_3["Background"]
		local ASTEXT = Page_3["ASTEXT"]	
		
		ASSAPP.Image = "rbxassetid://115768890692379"
		BIN.Image = "rbxassetid://131659824675767"
		Background.Image = "rbxassetid://73859639886594"
		ASTEXT.Text = "Advertisement Solutions"
		
		Page_3.Visible = true
		Page_2.Visible = false

		wait(4)
		
		local Page_4 = Startup["Page4"]
		local Logo4 = Page_4["Logo4"]
		local THANKS = Page_4["Subtitle"]
		
		Logo4.Image = "rbxassetid://115768890692379"
		THANKS.Text = "Thank you for using us!"
		
		TweenService:Create(
			script.Parent.Parent.Startup.Page4,
			TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundTransparency = 0}
		):Play()

		-- Initial state setup (put this BEFORE the tween if needed)
		script.Parent.Parent.Startup.Page4.BackgroundTransparency = 1
		script.Parent.Parent.Startup.Page4.Visible = true
		
		wait(5)
		
		Page_4.Visible = false
		Startup.Visible = false
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
	end
else
	script:Destroy()
end



