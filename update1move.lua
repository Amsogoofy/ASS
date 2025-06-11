-- expired V1.0.1 DO NOT USE


local Parcel = require(9428572121)

if Parcel:Whitelist("6804e132e4e58f9740ec2c2f", "6eerjf360x9wn0v5yyg9ada57g62") then
	local surfaceui = script.Parent
	
	local UpdateFrame = Instance.new("Frame")
	UpdateFrame.Name = "Update"
	UpdateFrame.Parent = surfaceui
	UpdateFrame.Size = UDim2.new(1, 0, 1, 0)
	UpdateFrame.ZIndex = "999"
	UpdateFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	
	local Update1Frame = Instance.new("Frame")
	Update1Frame.Parent = UpdateFrame
	UpdateFrame.Name = "Update1"
	Update1Frame.Size = UDim2.new(1, 0, 1, 0)
	Update1Frame.ZIndex = "999"
	Update1Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	
	local logo = Instance.new("ImageLabel")
	logo.Name = "Logo"
	logo.Parent = Update1Frame
	logo.Size = UDim2.new(0.15, 0, 0.15, 0)
	logo.Position = UDim2.new(0.5, 0, 0.5, 0)
	logo.AnchorPoint = Vector2.new(0.5, 0.5)
	logo.BackgroundTransparency = 1
	logo.Image = "rbxassetid://115768890692379"
	logo.ZIndex = "999"
	logo.ScaleType = Enum.ScaleType.Fit
	
	local UpdateText = Instance.new("TextLabel")
	UpdateText.Name = "Hello, our V1.02 is out please download and import it via studio."
	UpdateText.Parent = Update1Frame
	UpdateText.BackgroundTransparency = 1
	UpdateText.Position = UDim2.new(0, 0, 0.6, 20)
	UpdateText.Size = UDim2.new(0, 190, 0, 50)
	UpdateText.Text = "Update now!"
	UpdateText.TextColor = Color3.fromRGB(186, 98, 98)
	UpdateText.TextSize = 20
	UpdateText.TextDirection = Enum.TextDirection.InOut
	UpdateText.ZIndex = "999"
	UpdateText.TextScaled = true
	UpdateText.TextWrapped = true
	UpdateText.TextStrokeTransparency = 0
	UpdateText.TextXAlignment = Enum.TextXAlignment.Center
	UpdateText.TextYAlignment = Enum.TextYAlignment.Center
	UpdateText.TextTransparency = 0
	UpdateText.TextWrapped = true
	UpdateText.TextStrokeTransparency = 0
	UpdateText.TextXAlignment = Enum.TextXAlignment.Center
	UpdateText.TextYAlignment = Enum.TextYAlignment.Center
	UpdateText.TextTransparency = 0
	UpdateText.TextWrapped = true
	UpdateText.TextStrokeTransparency = 0
	UpdateText.TextXAlignment = Enum.TextXAlignment
	
	
	
else
	workspace["CSG Square"]:Destroy()
end
