-- =====================================
-- 🔐 S1GT JB CHEATS - WEAKER JUMP BOOST + JUMP HEIGHT SLIDER
-- =====================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

local ACCESS_KEY = "S1GTX25"
local ERROR_CODE = "ERR_403_INVALID_KEY"

-- ============= KEY GUI =============
local keyGui = Instance.new("ScreenGui")
keyGui.ResetOnSpawn = false
keyGui.Parent = player:WaitForChild("PlayerGui")

local keyFrame = Instance.new("Frame", keyGui)
keyFrame.Size = UDim2.fromOffset(300,160)
keyFrame.Position = UDim2.fromScale(0.5,0.5)
keyFrame.AnchorPoint = Vector2.new(0.5,0.5)
keyFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
Instance.new("UICorner", keyFrame)

local keyTitle = Instance.new("TextLabel", keyFrame)
keyTitle.Size = UDim2.new(1,0,0,30)
keyTitle.BackgroundTransparency = 1
keyTitle.Text = "ENTER ACCESS KEY"
keyTitle.Font = Enum.Font.GothamBold
keyTitle.TextSize = 14
keyTitle.TextColor3 = Color3.new(1,1,1)

local keyBox = Instance.new("TextBox", keyFrame)
keyBox.Size = UDim2.fromOffset(240,30)
keyBox.Position = UDim2.fromOffset(30,50)
keyBox.PlaceholderText = "Key..."
keyBox.Text = ""
keyBox.Font = Enum.Font.Gotham
keyBox.TextSize = 13
keyBox.TextColor3 = Color3.new(1,1,1)
keyBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
Instance.new("UICorner", keyBox)

local keyBtn = Instance.new("TextButton", keyFrame)
keyBtn.Size = UDim2.fromOffset(140,30)
keyBtn.Position = UDim2.fromOffset(80,90)
keyBtn.Text = "UNLOCK"
keyBtn.Font = Enum.Font.GothamBold
keyBtn.TextSize = 13
keyBtn.TextColor3 = Color3.new(1,1,1)
keyBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)
Instance.new("UICorner", keyBtn)

local keyError = Instance.new("TextLabel", keyFrame)
keyError.Size = UDim2.new(1,0,0,20)
keyError.Position = UDim2.fromOffset(0,130)
keyError.BackgroundTransparency = 1
keyError.Text = ""
keyError.Font = Enum.Font.GothamBold
keyError.TextSize = 12
keyError.TextColor3 = Color3.fromRGB(255,60,60)

local unlocked = false

keyBtn.MouseButton1Click:Connect(function()
	if keyBox.Text == ACCESS_KEY then
		unlocked = true
		keyGui:Destroy()
	else
		keyError.Text = ERROR_CODE
	end
end)

repeat task.wait() until unlocked

-- ============= MAIN GUI =============
local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.fromOffset(320,460)  -- Increased height for new slider
mainFrame.Position = UDim2.fromScale(0.4,0.4)
mainFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
mainFrame.Parent = gui
Instance.new("UICorner", mainFrame)

-- Top Bar
local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1,0,0,30)
topBar.BackgroundTransparency = 1
topBar.Parent = mainFrame

local betaLabel = Instance.new("TextLabel", topBar)
betaLabel.Size = UDim2.fromOffset(40,20)
betaLabel.Position = UDim2.fromOffset(6,4)
betaLabel.BackgroundTransparency = 1
betaLabel.Text = "BETA"
betaLabel.Font = Enum.Font.GothamBold
betaLabel.TextSize = 12
betaLabel.TextColor3 = Color3.fromRGB(255,255,0)
betaLabel.TextXAlignment = Enum.TextXAlignment.Left

local titleLabel = Instance.new("TextLabel", topBar)
titleLabel.Size = UDim2.fromOffset(180,20)
titleLabel.Position = UDim2.new(0.5, 0, 0, 5)
titleLabel.AnchorPoint = Vector2.new(0.5, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "S1GT JB cheats"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 16
titleLabel.TextColor3 = Color3.new(1,1,1)

local minimizeLine = Instance.new("TextButton", topBar)
minimizeLine.Size = UDim2.fromOffset(18,4)
minimizeLine.Position = UDim2.new(1, -44, 0, 13)
minimizeLine.BackgroundColor3 = Color3.new(1,1,1)
minimizeLine.BorderSizePixel = 0
minimizeLine.Text = ""
Instance.new("UICorner", minimizeLine).CornerRadius = UDim.new(0, 2)

local dragDot = Instance.new("Frame", topBar)
dragDot.Size = UDim2.fromOffset(18,18)
dragDot.Position = UDim2.new(1,-22,0,6)
dragDot.BackgroundColor3 = Color3.fromRGB(0,170,255)
dragDot.Parent = topBar
Instance.new("UICorner", dragDot)

-- Content Frame
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1,0,1,-30)
contentFrame.Position = UDim2.fromOffset(0,30)
contentFrame.BackgroundTransparency = 1
contentFrame.ClipsDescendants = true
contentFrame.Parent = mainFrame

-- Tabs
local tabFrame = Instance.new("Frame", contentFrame)
tabFrame.Size = UDim2.new(1,0,0,30)
tabFrame.BackgroundTransparency = 1

local speedTab = Instance.new("TextButton", tabFrame)
speedTab.Size = UDim2.new(0.5,0,1,0)
speedTab.Text = "Speed"
speedTab.BackgroundColor3 = Color3.fromRGB(0,170,255)
speedTab.TextColor3 = Color3.new(1,1,1)
speedTab.Font = Enum.Font.GothamBold
speedTab.TextSize = 14

local turnTab = Instance.new("TextButton", tabFrame)
turnTab.Size = UDim2.new(0.5,0,1,0)
turnTab.Position = UDim2.new(0.5,0,0,0)
turnTab.Text = "Turning"
turnTab.BackgroundColor3 = Color3.fromRGB(50,50,50)
turnTab.TextColor3 = Color3.new(1,1,1)
turnTab.Font = Enum.Font.GothamBold
turnTab.TextSize = 14

local speedContent = Instance.new("Frame", contentFrame)
speedContent.Size = UDim2.new(1,-20,1,-60)
speedContent.Position = UDim2.fromOffset(10,40)
speedContent.BackgroundTransparency = 1

local turnContent = Instance.new("Frame", contentFrame)
turnContent.Size = UDim2.new(1,-20,1,-60)
turnContent.Position = UDim2.fromOffset(10,40)
turnContent.BackgroundTransparency = 1
turnContent.Visible = false

-- ============= MINIMIZE & DRAG =============
local minimized = false
local fullSize = UDim2.fromOffset(320,460)
local minSize = UDim2.fromOffset(320,30)
local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local function toggleMinimize()
	minimized = not minimized
	local targetSize = minimized and minSize or fullSize
	local tween = TweenService:Create(mainFrame, tweenInfo, {Size = targetSize})
	tween:Play()
end

minimizeLine.MouseButton1Click:Connect(toggleMinimize)

local draggingGUI = false
local lastMousePos = Vector2.new()

dragDot.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingGUI = true
		lastMousePos = input.Position
	end
end)

UIS.InputChanged:Connect(function(input)
	if draggingGUI and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - lastMousePos
		mainFrame.Position += UDim2.fromOffset(delta.X, delta.Y)
		lastMousePos = input.Position
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingGUI = false
	end
end)

-- ============= TAB SWITCHING =============
local function switchToSpeed()
	speedTab.BackgroundColor3 = Color3.fromRGB(0,170,255)
	turnTab.BackgroundColor3 = Color3.fromRGB(50,50,50)
	speedContent.Visible = true
	turnContent.Visible = false
end

local function switchToTurn()
	speedTab.BackgroundColor3 = Color3.fromRGB(50,50,50)
	turnTab.BackgroundColor3 = Color3.fromRGB(0,170,255)
	speedContent.Visible = false
	turnContent.Visible = true
end

speedTab.MouseButton1Click:Connect(switchToSpeed)
turnTab.MouseButton1Click:Connect(switchToTurn)

-- ============= SPEED + BOOST + JUMP BOOST =============
local ACCEL_RATE = 1000
local DECEL_RATE = 8000
local JB_MIN_SPEED = 100
local JB_MAX_SPEED = 1000
local FORCE_CAP = 1200000
local JB_SPEED_TO_STUDS = 1.343

local speedEnabled = false
local speedToggleKey = Enum.KeyCode.K
local JB_Speed = 100
local MAX_FORCE = (JB_Speed / JB_MAX_SPEED) * FORCE_CAP
local currentForce = 0
local dir = 0
local heldKeys = {[Enum.KeyCode.W]=false,[Enum.KeyCode.S]=false}

local boostKey = Enum.KeyCode.LeftShift
local boostMultiplier = 2.5
local boostDuration = 2.0
local isBoosting = false
local boostEndTime = 0

local jumpBoostKey = Enum.KeyCode.Space

-- NEW: Adjustable weaker jump height
local jumpHeightMultiplier = 1.0  -- 0.2x to 2.0x of normal car jump (default 1.0 = normal jump)

-- Speed UI
local speedToggle = Instance.new("TextButton", speedContent)
speedToggle.Size = UDim2.fromOffset(240,32)
speedToggle.Position = UDim2.fromOffset(10,10)
speedToggle.Text = "DISABLED"
speedToggle.BackgroundColor3 = Color3.fromRGB(170,50,50)
speedToggle.TextColor3 = Color3.new(1,1,1)
speedToggle.Font = Enum.Font.GothamBold
speedToggle.TextSize = 14
Instance.new("UICorner", speedToggle)

local speedSliderBack = Instance.new("Frame", speedContent)
speedSliderBack.Size = UDim2.fromOffset(240,6)
speedSliderBack.Position = UDim2.fromOffset(10,55)
speedSliderBack.BackgroundColor3 = Color3.fromRGB(60,60,60)
Instance.new("UICorner", speedSliderBack)

local speedSliderFill = Instance.new("Frame", speedSliderBack)
speedSliderFill.BackgroundColor3 = Color3.fromRGB(0,170,255)
Instance.new("UICorner", speedSliderFill)

local speedSliderDot = Instance.new("Frame", speedSliderBack)
speedSliderDot.Size = UDim2.fromOffset(14,14)
speedSliderDot.BackgroundColor3 = Color3.fromRGB(255,255,255)
speedSliderDot.ZIndex = 2
Instance.new("UICorner", speedSliderDot)

local speedLabel = Instance.new("TextLabel", speedContent)
speedLabel.Size = UDim2.fromOffset(160,24)
speedLabel.Position = UDim2.fromOffset(10,85)
speedLabel.BackgroundTransparency = 1
speedLabel.Text = "JB Speed:"
speedLabel.Font = Enum.Font.Gotham
speedLabel.TextSize = 12
speedLabel.TextColor3 = Color3.new(1,1,1)
speedLabel.TextXAlignment = Enum.TextXAlignment.Left

local speedBox = Instance.new("TextBox", speedContent)
speedBox.Size = UDim2.fromOffset(60,24)
speedBox.Position = UDim2.fromOffset(190,85)
speedBox.Text = tostring(JB_Speed)
speedBox.ClearTextOnFocus = false
speedBox.Font = Enum.Font.Gotham
speedBox.TextSize = 12
speedBox.TextColor3 = Color3.new(1,1,1)
speedBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
Instance.new("UICorner", speedBox)

local speedBindLabel = Instance.new("TextLabel", speedContent)
speedBindLabel.Size = UDim2.fromOffset(160,24)
speedBindLabel.Position = UDim2.fromOffset(10,120)
speedBindLabel.BackgroundTransparency = 1
speedBindLabel.Text = "Toggle Key:"
speedBindLabel.Font = Enum.Font.Gotham
speedBindLabel.TextSize = 12
speedBindLabel.TextColor3 = Color3.new(1,1,1)
speedBindLabel.TextXAlignment = Enum.TextXAlignment.Left

local speedBindBox = Instance.new("TextButton", speedContent)
speedBindBox.Size = UDim2.fromOffset(60,24)
speedBindBox.Position = UDim2.fromOffset(190,120)
speedBindBox.Text = speedToggleKey.Name
speedBindBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
speedBindBox.TextColor3 = Color3.new(1,1,1)
speedBindBox.Font = Enum.Font.Gotham
speedBindBox.TextSize = 12
Instance.new("UICorner", speedBindBox)

-- Boost Section
local boostBindLabel = Instance.new("TextLabel", speedContent)
boostBindLabel.Size = UDim2.fromOffset(160,24)
boostBindLabel.Position = UDim2.fromOffset(10,210)
boostBindLabel.BackgroundTransparency = 1
boostBindLabel.Text = "Boost Key:"
boostBindLabel.Font = Enum.Font.Gotham
boostBindLabel.TextSize = 12
boostBindLabel.TextColor3 = Color3.new(1,1,1)
boostBindLabel.TextXAlignment = Enum.TextXAlignment.Left

local boostBindBox = Instance.new("TextButton", speedContent)
boostBindBox.Size = UDim2.fromOffset(60,24)
boostBindBox.Position = UDim2.fromOffset(190,210)
boostBindBox.Text = boostKey.Name
boostBindBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
boostBindBox.TextColor3 = Color3.new(1,1,1)
boostBindBox.Font = Enum.Font.Gotham
boostBindBox.TextSize = 12
Instance.new("UICorner", boostBindBox)

local boostDurationLabel = Instance.new("TextLabel", speedContent)
boostDurationLabel.Size = UDim2.fromOffset(240,24)
boostDurationLabel.Position = UDim2.fromOffset(10,240)
boostDurationLabel.BackgroundTransparency = 1
boostDurationLabel.Text = "Boost Duration (s):"
boostDurationLabel.Font = Enum.Font.Gotham
boostDurationLabel.TextSize = 12
boostDurationLabel.TextColor3 = Color3.new(1,1,1)

local boostDurationBox = Instance.new("TextBox", speedContent)
boostDurationBox.Size = UDim2.fromOffset(60,24)
boostDurationBox.Position = UDim2.fromOffset(190,240)
boostDurationBox.Text = tostring(boostDuration)
boostDurationBox.ClearTextOnFocus = false
boostDurationBox.Font = Enum.Font.Gotham
boostDurationBox.TextSize = 12
boostDurationBox.TextColor3 = Color3.new(1,1,1)
boostDurationBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
Instance.new("UICorner", boostDurationBox)

local boostSliderBack = Instance.new("Frame", speedContent)
boostSliderBack.Size = UDim2.fromOffset(240,6)
boostSliderBack.Position = UDim2.fromOffset(10,270)
boostSliderBack.BackgroundColor3 = Color3.fromRGB(60,60,60)
Instance.new("UICorner", boostSliderBack)

local boostSliderFill = Instance.new("Frame", boostSliderBack)
boostSliderFill.BackgroundColor3 = Color3.fromRGB(0,170,255)
Instance.new("UICorner", boostSliderFill)

local boostSliderDot = Instance.new("Frame", boostSliderBack)
boostSliderDot.Size = UDim2.fromOffset(14,14)
boostSliderDot.BackgroundColor3 = Color3.fromRGB(255,255,255)
boostSliderDot.ZIndex = 2
Instance.new("UICorner", boostSliderDot)

-- Jump Boost Section
local jumpBoostLabel = Instance.new("TextLabel", speedContent)
jumpBoostLabel.Size = UDim2.fromOffset(160,24)
jumpBoostLabel.Position = UDim2.fromOffset(10,300)
jumpBoostLabel.BackgroundTransparency = 1
jumpBoostLabel.Text = "Jump Boost Key:"
jumpBoostLabel.Font = Enum.Font.Gotham
jumpBoostLabel.TextSize = 12
jumpBoostLabel.TextColor3 = Color3.new(1,1,1)
jumpBoostLabel.TextXAlignment = Enum.TextXAlignment.Left

local jumpBoostBindBox = Instance.new("TextButton", speedContent)
jumpBoostBindBox.Size = UDim2.fromOffset(60,24)
jumpBoostBindBox.Position = UDim2.fromOffset(190,300)
jumpBoostBindBox.Text = jumpBoostKey.Name
jumpBoostBindBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
jumpBoostBindBox.TextColor3 = Color3.new(1,1,1)
jumpBoostBindBox.Font = Enum.Font.Gotham
jumpBoostBindBox.TextSize = 12
Instance.new("UICorner", jumpBoostBindBox)

-- Jump Height Slider (NEW)
local jumpHeightLabel = Instance.new("TextLabel", speedContent)
jumpHeightLabel.Size = UDim2.fromOffset(240,24)
jumpHeightLabel.Position = UDim2.fromOffset(10,330)
jumpHeightLabel.BackgroundTransparency = 1
jumpHeightLabel.Text = "Jump Height Multiplier:"
jumpHeightLabel.Font = Enum.Font.Gotham
jumpHeightLabel.TextSize = 12
jumpHeightLabel.TextColor3 = Color3.new(1,1,1)

local jumpHeightSliderBack = Instance.new("Frame", speedContent)
jumpHeightSliderBack.Size = UDim2.fromOffset(240,6)
jumpHeightSliderBack.Position = UDim2.fromOffset(10,360)
jumpHeightSliderBack.BackgroundColor3 = Color3.fromRGB(60,60,60)
Instance.new("UICorner", jumpHeightSliderBack)

local jumpHeightSliderFill = Instance.new("Frame", jumpHeightSliderBack)
jumpHeightSliderFill.BackgroundColor3 = Color3.fromRGB(0,170,255)
Instance.new("UICorner", jumpHeightSliderFill)

local jumpHeightSliderDot = Instance.new("Frame", jumpHeightSliderBack)
jumpHeightSliderDot.Size = UDim2.fromOffset(14,14)
jumpHeightSliderDot.BackgroundColor3 = Color3.fromRGB(255,255,255)
jumpHeightSliderDot.ZIndex = 2
Instance.new("UICorner", jumpHeightSliderDot)

local jumpHeightValueLabel = Instance.new("TextLabel", speedContent)
jumpHeightValueLabel.Size = UDim2.fromOffset(60,24)
jumpHeightValueLabel.Position = UDim2.fromOffset(190,330)
jumpHeightValueLabel.BackgroundTransparency = 1
jumpHeightValueLabel.Text = "1.0x"
jumpHeightValueLabel.Font = Enum.Font.Gotham
jumpHeightValueLabel.TextSize = 12
jumpHeightValueLabel.TextColor3 = Color3.new(1,1,1)
jumpHeightValueLabel.TextXAlignment = Enum.TextXAlignment.Right

-- ============= TURNING =============
local TURN_MIN = 100
local TURN_MAX = 1000
local turnStrength = 100
local grip = 0.9
local turnEnabled = false
local turnToggleKey = Enum.KeyCode.J

local turnHeld = {A = false, D = false}

local turnToggle = Instance.new("TextButton", turnContent)
turnToggle.Size = UDim2.fromOffset(240,32)
turnToggle.Position = UDim2.fromOffset(10,10)
turnToggle.Text = "DISABLED"
turnToggle.BackgroundColor3 = Color3.fromRGB(170,50,50)
turnToggle.TextColor3 = Color3.new(1,1,1)
turnToggle.Font = Enum.Font.GothamBold
turnToggle.TextSize = 14
Instance.new("UICorner", turnToggle)

local turnSliderBack = Instance.new("Frame", turnContent)
turnSliderBack.Size = UDim2.fromOffset(240,6)
turnSliderBack.Position = UDim2.fromOffset(10,55)
turnSliderBack.BackgroundColor3 = Color3.fromRGB(60,60,60)
Instance.new("UICorner", turnSliderBack)

local turnSliderFill = Instance.new("Frame", turnSliderBack)
turnSliderFill.BackgroundColor3 = Color3.fromRGB(0,170,255)
Instance.new("UICorner", turnSliderFill)

local turnSliderDot = Instance.new("Frame", turnSliderBack)
turnSliderDot.Size = UDim2.fromOffset(14,14)
turnSliderDot.BackgroundColor3 = Color3.fromRGB(255,255,255)
turnSliderDot.ZIndex = 2
Instance.new("UICorner", turnSliderDot)

local turnLabel = Instance.new("TextLabel", turnContent)
turnLabel.Size = UDim2.fromOffset(160,24)
turnLabel.Position = UDim2.fromOffset(10,85)
turnLabel.BackgroundTransparency = 1
turnLabel.Text = "Turn Strength:"
turnLabel.Font = Enum.Font.Gotham
turnLabel.TextSize = 12
turnLabel.TextColor3 = Color3.new(1,1,1)
turnLabel.TextXAlignment = Enum.TextXAlignment.Left

local turnBox = Instance.new("TextBox", turnContent)
turnBox.Size = UDim2.fromOffset(60,24)
turnBox.Position = UDim2.fromOffset(190,85)
turnBox.Text = tostring(turnStrength)
turnBox.ClearTextOnFocus = false
turnBox.Font = Enum.Font.Gotham
turnBox.TextSize = 12
turnBox.TextColor3 = Color3.new(1,1,1)
turnBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
Instance.new("UICorner", turnBox)

local turnBindLabel = Instance.new("TextLabel", turnContent)
turnBindLabel.Size = UDim2.fromOffset(160,24)
turnBindLabel.Position = UDim2.fromOffset(10,120)
turnBindLabel.BackgroundTransparency = 1
turnBindLabel.Text = "Toggle Key:"
turnBindLabel.Font = Enum.Font.Gotham
turnBindLabel.TextSize = 12
turnBindLabel.TextColor3 = Color3.new(1,1,1)
turnBindLabel.TextXAlignment = Enum.TextXAlignment.Left

local turnBindBox = Instance.new("TextButton", turnContent)
turnBindBox.Size = UDim2.fromOffset(60,24)
turnBindBox.Position = UDim2.fromOffset(190,120)
turnBindBox.Text = turnToggleKey.Name
turnBindBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
turnBindBox.TextColor3 = Color3.new(1,1,1)
turnBindBox.Font = Enum.Font.Gotham
turnBindBox.TextSize = 12
Instance.new("UICorner", turnBindBox)

-- ============= LOGIC =============
local function updateSlider(fill, dot, minVal, maxVal, val)
	local ratio = (val - minVal) / (maxVal - minVal)
	fill.Size = UDim2.new(ratio,0,1,0)
	dot.Position = UDim2.new(ratio,-7,0.5,-7)
end

local function setSpeed(v)
	JB_Speed = math.clamp(math.round(v), JB_MIN_SPEED, JB_MAX_SPEED)
	MAX_FORCE = (JB_Speed / JB_MAX_SPEED) * FORCE_CAP
	speedBox.Text = tostring(JB_Speed)
	updateSlider(speedSliderFill, speedSliderDot, JB_MIN_SPEED, JB_MAX_SPEED, JB_Speed)
end

local function setBoostDuration(v)
	boostDuration = math.clamp(math.round(v*10)/10, 0.5, 5)
	boostDurationBox.Text = string.format("%.1f", boostDuration)
	updateSlider(boostSliderFill, boostSliderDot, 0.5, 5, boostDuration)
end

local function setTurn(v)
	turnStrength = math.clamp(math.round(v), TURN_MIN, TURN_MAX)
	turnBox.Text = tostring(turnStrength)
	updateSlider(turnSliderFill, turnSliderDot, TURN_MIN, TURN_MAX, turnStrength)
end

local function setJumpHeight(mult)
	jumpHeightMultiplier = math.clamp(mult, 0.2, 2.0)
	jumpHeightValueLabel.Text = string.format("%.1fx", jumpHeightMultiplier)
	updateSlider(jumpHeightSliderFill, jumpHeightSliderDot, 0.2, 2.0, jumpHeightMultiplier)
end

local function updateSpeedUI()
	speedToggle.Text = speedEnabled and "ENABLED" or "DISABLED"
	speedToggle.BackgroundColor3 = speedEnabled and Color3.fromRGB(50,170,70) or Color3.fromRGB(170,50,50)
end

local function updateTurnUI()
	turnToggle.Text = turnEnabled and "ENABLED" or "DISABLED"
	turnToggle.BackgroundColor3 = turnEnabled and Color3.fromRGB(50,170,70) or Color3.fromRGB(170,50,50)
end

-- Slider dragging
local draggingSpeed = false
local draggingBoost = false
local draggingTurn = false
local draggingJumpHeight = false

speedSliderBack.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then draggingSpeed = true end end)
boostSliderBack.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then draggingBoost = true end end)
turnSliderBack.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then draggingTurn = true end end)
jumpHeightSliderBack.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then draggingJumpHeight = true end end)

UIS.InputChanged:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseMovement then
		if draggingSpeed then
			local rel = math.clamp((i.Position.X - speedSliderBack.AbsolutePosition.X) / speedSliderBack.AbsoluteSize.X, 0, 1)
			setSpeed(JB_MIN_SPEED + rel * (JB_MAX_SPEED - JB_MIN_SPEED))
		end
		if draggingBoost then
			local rel = math.clamp((i.Position.X - boostSliderBack.AbsolutePosition.X) / boostSliderBack.AbsoluteSize.X, 0, 1)
			setBoostDuration(0.5 + rel * 4.5)
		end
		if draggingTurn then
			local rel = math.clamp((i.Position.X - turnSliderBack.AbsolutePosition.X) / turnSliderBack.AbsoluteSize.X, 0, 1)
			setTurn(TURN_MIN + rel * (TURN_MAX - TURN_MIN))
		end
		if draggingJumpHeight then
			local rel = math.clamp((i.Position.X - jumpHeightSliderBack.AbsolutePosition.X) / jumpHeightSliderBack.AbsoluteSize.X, 0, 1)
			setJumpHeight(0.2 + rel * 1.8)
		end
	end
end)

UIS.InputEnded:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingSpeed = false
		draggingBoost = false
		draggingTurn = false
		draggingJumpHeight = false
	end
end)

-- Textboxes
speedBox.FocusLost:Connect(function(e) if e then local n=tonumber(speedBox.Text) if n then setSpeed(n) end end end)
boostDurationBox.FocusLost:Connect(function(e) if e then local n=tonumber(boostDurationBox.Text) if n then setBoostDuration(n) end end end)
turnBox.FocusLost:Connect(function(e) if e then local n=tonumber(turnBox.Text) if n then setTurn(n) end end end)

-- Toggles
speedToggle.MouseButton1Click:Connect(function() speedEnabled = not speedEnabled updateSpeedUI() end)
turnToggle.MouseButton1Click:Connect(function()
	turnEnabled = not turnEnabled
	updateTurnUI()
	if not turnEnabled then
		if workspace:FindFirstChild("Vehicles") then
			for _, v in pairs(workspace.Vehicles:GetChildren()) do
				if v.PrimaryPart then
					local av = v.PrimaryPart:FindFirstChild("TurnAV")
					local vf = v.PrimaryPart:FindFirstChild("GripForce")
					if av then av:Destroy() end
					if vf then vf:Destroy() end
				end
			end
		end
	end
end)

-- Keybind waiting
local waitingSpeed = false
local waitingTurn = false
local waitingBoost = false
local waitingJump = false

speedBindBox.MouseButton1Click:Connect(function() waitingSpeed = true speedBindBox.Text = "..." end)
boostBindBox.MouseButton1Click:Connect(function() waitingBoost = true boostBindBox.Text = "..." end)
jumpBoostBindBox.MouseButton1Click:Connect(function() waitingJump = true jumpBoostBindBox.Text = "..." end)
turnBindBox.MouseButton1Click:Connect(function() waitingTurn = true turnBindBox.Text = "..." end)

-- Input handling
UIS.InputBegan:Connect(function(i, gpe)
	if gpe then return end

	if waitingSpeed then
		speedToggleKey = i.KeyCode
		speedBindBox.Text = i.KeyCode.Name
		waitingSpeed = false
		return
	end
	if waitingBoost then
		boostKey = i.KeyCode
		boostBindBox.Text = i.KeyCode.Name
		waitingBoost = false
		return
	end
	if waitingJump then
		jumpBoostKey = i.KeyCode
		jumpBoostBindBox.Text = i.KeyCode.Name
		waitingJump = false
		return
	end
	if waitingTurn then
		turnToggleKey = i.KeyCode
		turnBindBox.Text = i.KeyCode.Name
		waitingTurn = false
		return
	end

	if i.KeyCode == speedToggleKey then
		speedEnabled = not speedEnabled
		updateSpeedUI()
	end
	if i.KeyCode == turnToggleKey then
		turnEnabled = not turnEnabled
		updateTurnUI()
	end

	-- BOOST ONLY WHEN SPEED CHEAT IS DISABLED
	if i.KeyCode == boostKey and not speedEnabled and not isBoosting then
		isBoosting = true
		boostEndTime = tick() + boostDuration
	end

	-- WEAKER JUMP BOOST WITH SLIDER CONTROL
	if i.KeyCode == jumpBoostKey and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
		local hrp = player.Character.HumanoidRootPart
		local baseJumpVelocity = 195  -- Normal Roblox vehicle jump upward velocity
		hrp.Velocity = Vector3.new(hrp.Velocity.X, baseJumpVelocity * jumpHeightMultiplier, hrp.Velocity.Z)
	end

	if heldKeys[i.KeyCode] ~= nil then heldKeys[i.KeyCode] = true end
	if i.KeyCode == Enum.KeyCode.A then turnHeld.A = true end
	if i.KeyCode == Enum.KeyCode.D then turnHeld.D = true end
end)

UIS.InputEnded:Connect(function(i)
	if heldKeys[i.KeyCode] ~= nil then heldKeys[i.KeyCode] = false end
	if i.KeyCode == Enum.KeyCode.A then turnHeld.A = false end
	if i.KeyCode == Enum.KeyCode.D then turnHeld.D = false end
end)

-- ============= PHYSICS =============
RunService.RenderStepped:Connect(function(dt)
	if not workspace:FindFirstChild("Vehicles") then return end

	for _, v in pairs(workspace.Vehicles:GetChildren()) do
		if v:FindFirstChild("Engine") and v:FindFirstChild("Seat") and v.Seat:FindFirstChild("PlayerName")
		and v.Seat.PlayerName.Value == player.Name and v.PrimaryPart then

			local root = v.PrimaryPart
			local look = root.CFrame.LookVector
			local velocity = root.AssemblyLinearVelocity
			local forwardSpeed = velocity:Dot(look)

			-- Boost active only when speed cheat is OFF
			local usingBoost = isBoosting and not speedEnabled and tick() < boostEndTime

			local targetSpeed = usingBoost and (JB_Speed * boostMultiplier) or JB_Speed
			local targetForce = usingBoost and (MAX_FORCE * boostMultiplier) or MAX_FORCE

			if tick() >= boostEndTime then
				isBoosting = false
			end

			local maxStudSpeed = targetSpeed * JB_SPEED_TO_STUDS

			-- Input direction only when speed enabled OR boosting (speed disabled)
			if speedEnabled or usingBoost then
				if heldKeys[Enum.KeyCode.W] then dir = 1
				elseif heldKeys[Enum.KeyCode.S] then dir = -1
				else dir = 0 end
			else
				dir = 0
			end

			-- Acceleration / Deceleration
			if dir ~= 0 and math.abs(forwardSpeed) < maxStudSpeed then
				currentForce = math.min(currentForce + targetForce * ACCEL_RATE * dt, targetForce)
			else
				currentForce = math.max(currentForce - targetForce * DECEL_RATE * dt, 0)
			end

			-- Apply force
			local engine = v.Engine
			local bf = engine:FindFirstChild("NewForce") or Instance.new("BodyForce", engine)
			bf.Name = "NewForce"

			if currentForce > 0 and dir ~= 0 then
				bf.Force = Vector3.new(look.X * currentForce * dir, 0, look.Z * currentForce * dir)
			else
				bf.Force = Vector3.zero
			end

			-- Turning
			if turnEnabled then
				local right = root.CFrame.RightVector
				local steer = 0
				if turnHeld.A then steer = 1 elseif turnHeld.D then steer = -1 end

				local av = root:FindFirstChild("TurnAV") or (function()
					local att = Instance.new("Attachment", root)
					local nav = Instance.new("AngularVelocity", root)
					nav.Name = "TurnAV"
					nav.Attachment0 = att
					nav.MaxTorque = 1e9
					nav.RelativeTo = Enum.ActuatorRelativeTo.Attachment0
					return nav
				end)()

				local speed = root.AssemblyLinearVelocity.Magnitude
				local speedFactor = math.clamp(speed / 90, 0.5, 1.2)
				local targetTurn = steer * (turnStrength / 100) * 4 * speedFactor
				av.AngularVelocity = av.AngularVelocity:Lerp(Vector3.new(0, targetTurn, 0), 0.25)

				local vf = root:FindFirstChild("GripForce") or (function()
					local att = Instance.new("Attachment", root)
					local nvf = Instance.new("VectorForce", root)
					nvf.Name = "GripForce"
					nvf.Attachment0 = att
					nvf.RelativeTo = Enum.ActuatorRelativeTo.World
					nvf.ApplyAtCenterOfMass = true
					return nvf
				end)()

				local sideways = root.AssemblyLinearVelocity:Dot(right)
				vf.Force = -right * sideways * grip * root.AssemblyMass * 7
			end
		end
	end
end)

-- ============= INITIALIZE =============
setSpeed(100)
setTurn(100)
setBoostDuration(2.0)
setJumpHeight(1.0)  -- Starts at normal jump height
updateSlider(speedSliderFill, speedSliderDot, JB_MIN_SPEED, JB_MAX_SPEED, JB_Speed)
updateSlider(boostSliderFill, boostSliderDot, 0.5, 5, boostDuration)
updateSlider(turnSliderFill, turnSliderDot, TURN_MIN, TURN_MAX, turnStrength)
updateSlider(jumpHeightSliderFill, jumpHeightSliderDot, 0.2, 2.0, jumpHeightMultiplier)
updateSpeedUI()
updateTurnUI()
