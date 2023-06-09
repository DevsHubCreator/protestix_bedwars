local library = {};

local lp = game:GetService("Players").LocalPlayer;
local ts = game:GetService("TweenService");
local uis = game:GetService("UserInputService");
local mouse = lp:GetMouse();

function library:Init()
	local Protestix = Instance.new("ScreenGui")
	local Tabs = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local Background = Instance.new("Frame")
	local Modal = Instance.new("TextButton")
	
	Protestix.Name = "Protestix"
	
	--Protestix.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	Protestix.Parent = (game:GetService("CoreGui") or gethui());
	
	Protestix.ResetOnSpawn = false
	
	Tabs.Name = "Tabs"
	Tabs.Parent = Protestix
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.BorderSizePixel = 0
	Tabs.Position = UDim2.new(0.04, 0, 0.11, 0)
	Tabs.Size = UDim2.new(0, 1210, 0, 245)

	Background.Name = "Background"
	Background.Parent = Protestix
	Background.AnchorPoint = Vector2.new(0.5, 0.5)
	Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Background.BackgroundTransparency = 0.300
	Background.BorderSizePixel = 0
	Background.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background.Size = UDim2.new(0, 1514, 0, 761)
	Background.Visible = false

	Modal.Name = "Modal"
	Modal.Parent = Protestix
	Modal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Modal.BackgroundTransparency = 1.000
	Modal.BorderSizePixel = 0
	Modal.Position = UDim2.new(0.430303037, 0, 0.53174603, 0)
	Modal.Size = UDim2.new(0, 1, 0, 1)
	Modal.Modal = true
	Modal.Font = Enum.Font.SourceSans
	Modal.Text = ""
	Modal.TextColor3 = Color3.fromRGB(0, 0, 0)
	Modal.TextSize = 14.000
	
	UIListLayout_3.Parent = Tabs
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.Padding = UDim.new(0, 15)
	
	-- Notification
	
	local Notifications = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	
	Notifications.Name = "Notifications"
	Notifications.Parent = Protestix
	Notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Notifications.BackgroundTransparency = 1.000
	Notifications.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Notifications.BorderSizePixel = 0
	Notifications.Position = UDim2.new(0.755303025, 0, 0.68095237, 0)
	Notifications.Size = UDim2.new(0, 314, 0, 190)
	
	UIListLayout.Parent = Notifications
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout.Padding = UDim.new(0, 10)
	
	-- Watermark

	local Watermark = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local UIGradient = Instance.new("UIGradient")
	local UIGradient_2 = Instance.new("UIGradient")
	local ClientName = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIGradient_3 = Instance.new("UIGradient")
	local glow = Instance.new("ImageLabel")

	Watermark.Name = "Watermark"
	Watermark.Parent = Protestix
	Watermark.BackgroundColor3 = Color3.fromRGB(13, 14, 24)
	Watermark.BorderSizePixel = 0
	Watermark.Position = UDim2.new(0.0116383489, 0, 0.0122699738, 0)
	Watermark.Size = UDim2.new(0.109756097, 0, 0.0398772992, 0)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Watermark

	UIStroke.Color = Color3.fromRGB(29, 44, 247)
	UIStroke.Thickness = 2.000
	UIStroke.Parent = Watermark

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient.Parent = UIStroke

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient_2.Parent = Watermark

	ClientName.Name = "ClientName"
	ClientName.Parent = Watermark
	ClientName.AnchorPoint = Vector2.new(0.5, 0.5)
	ClientName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ClientName.BackgroundTransparency = 1.000
	ClientName.Position = UDim2.new(0.503927052, 0, 0.500768781, 0)
	ClientName.Size = UDim2.new(0.923611104, 0, 0.653846145, 0)
	ClientName.ZIndex = 2
	ClientName.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
	ClientName.Text = "protestix | fps: 60"
	ClientName.TextColor3 = Color3.fromRGB(99, 135, 255)
	ClientName.TextScaled = true
	ClientName.TextSize = 14.000
	ClientName.TextWrapped = true
	ClientName.TextXAlignment = Enum.TextXAlignment.Left

	UITextSizeConstraint.Parent = ClientName
	UITextSizeConstraint.MaxTextSize = 21

	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient_3.Parent = ClientName

	glow.Name = "glow"
	glow.Parent = Watermark
	glow.BackgroundColor3 = Color3.fromRGB(14, 10, 24)
	glow.BackgroundTransparency = 1.000
	glow.BorderSizePixel = 0
	glow.Position = UDim2.new(-0.143445328, 0, -0.777607858, 0)
	glow.Size = UDim2.new(1.29166651, 0, 2.5, 0)
	glow.ZIndex = 0
	glow.Image = "rbxassetid://13494443093"
	glow.ImageColor3 = Color3.fromRGB(30, 49, 255)
	
	-- 
	
	uis.InputBegan:Connect(function(input, gameProcessed)
		if (input.KeyCode == Enum.KeyCode.Insert) or (input.KeyCode == Enum.KeyCode.RightShift) then
			Tabs.Visible = not Tabs.Visible;
			Modal.Visible = not Modal.Visible;
		end
	end)
	
	local mainUtil = {};
	
	-- TargetHud
	
	local TargetHud = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local PlayerAvatar = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local PlayerName = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local HealthBar = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local hpText = Instance.new("TextLabel")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
	local UIGradient = Instance.new("UIGradient")
	local glow = Instance.new("ImageLabel")
	local UIStroke = Instance.new("UIStroke")
	local UIGradient_2 = Instance.new("UIGradient")

	TargetHud.Name = "TargetHud"
	TargetHud.Parent = Protestix
	TargetHud.BackgroundColor3 = Color3.fromRGB(13, 14, 24)
	TargetHud.BorderSizePixel = 0
	TargetHud.ClipsDescendants = true
	TargetHud.Position = UDim2.new(0.413871944, 0, 0.739263833, 0)
	TargetHud.Size = UDim2.new(0.175304875, 0, 0.119631901, 0)

	UICorner.Parent = TargetHud

	PlayerAvatar.Name = "PlayerAvatar"
	PlayerAvatar.Parent = TargetHud
	PlayerAvatar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PlayerAvatar.BackgroundTransparency = 1.000
	PlayerAvatar.BorderSizePixel = 0
	PlayerAvatar.Position = UDim2.new(0.0347826071, 0, 0.115384616, 0)
	PlayerAvatar.Size = UDim2.new(0.260869563, 0, 0.769230783, 0)
	PlayerAvatar.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

	UICorner_2.Parent = PlayerAvatar

	PlayerName.Name = "PlayerName"
	PlayerName.Parent = TargetHud
	PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PlayerName.BackgroundTransparency = 1.000
	PlayerName.BorderSizePixel = 0
	PlayerName.Position = UDim2.new(0.347826093, 0, 0.115384616, 0)
	PlayerName.Size = UDim2.new(0.608695626, 0, 0.192307696, 0)
	PlayerName.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.Medium)
	PlayerName.Text = "PlayerName"
	PlayerName.TextColor3 = Color3.fromRGB(233, 223, 224)
	PlayerName.TextScaled = true
	PlayerName.TextSize = 15.000
	PlayerName.TextWrapped = true
	PlayerName.TextXAlignment = Enum.TextXAlignment.Left

	UITextSizeConstraint.Parent = PlayerName
	UITextSizeConstraint.MaxTextSize = 15

	HealthBar.Name = "HealthBar"
	HealthBar.Parent = TargetHud
	HealthBar.BackgroundColor3 = Color3.fromRGB(29, 44, 247)
	HealthBar.BorderSizePixel = 0
	HealthBar.Position = UDim2.new(0.347826093, 0, 0.730769217, 0)
	HealthBar.Size = UDim2.new(0.621739149, 0, 0.15384616, 0)

	UICorner_3.CornerRadius = UDim.new(0, 3)
	UICorner_3.Parent = HealthBar

	hpText.Name = "hpText"
	hpText.Parent = TargetHud
	hpText.AnchorPoint = Vector2.new(0.5, 0.5)
	hpText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	hpText.BackgroundTransparency = 1.000
	hpText.LayoutOrder = 2
	hpText.Position = UDim2.new(0.649, 0, 0.816, 0)
	hpText.Size = UDim2.new(0.337, 0, 1.179, 0)
	hpText.ZIndex = 2
	hpText.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
	hpText.Text = "0"
	hpText.TextColor3 = Color3.fromRGB(233, 223, 224)
	hpText.TextScaled = true
	hpText.TextSize = 24.000
	hpText.TextWrapped = true

	UITextSizeConstraint_2.Parent = hpText
	UITextSizeConstraint_2.MaxTextSize = 15

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient.Parent = HealthBar

	glow.Name = "glow"
	glow.Parent = HealthBar
	glow.BackgroundColor3 = Color3.fromRGB(29, 44, 247)
	glow.BackgroundTransparency = 1.000
	glow.BorderSizePixel = 0
	glow.Position = UDim2.new(-0.0784630403, 0, -0.763509095, 0)
	glow.Size = UDim2.new(1.15209794, 0, 2.43205261, 0)
	glow.Image = "rbxassetid://13494443093"
	glow.ImageColor3 = Color3.fromRGB(30, 49, 255)

	UIStroke.Color = Color3.fromRGB(47, 75, 255)
	UIStroke.Thickness = 2.000
	UIStroke.Parent = TargetHud

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient_2.Parent = UIStroke
	
	function mainUtil:TargetHud(info)
		info.Player = info.Player or false;
		info.Health = info.Health or 100;
		info.MaxHealth = info.MaxHealth or 100;
		
		if info.Player ~= false then
			ts:Create(TargetHud, TweenInfo.new(0.3), {Size = UDim2.new(0, 230, 0, 78)}):Play();
			
			PlayerAvatar.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

			PlayerName.Text = info.Player.Name;
			hpText.Text = tostring(info.Health);
			
			ts:Create(HealthBar, TweenInfo.new(0.1), {Size = UDim2.new(info.Health / info.MaxHealth * 0.622, 0, 0.154, 0)}):Play();
		elseif info.Player == false then
			ts:Create(TargetHud, TweenInfo.new(0.3), {Size = UDim2.new(0, 0, 0, 0)}):Play();
		end
	end
	
	-- Notification
	
	function mainUtil:Notification(info)
		info.Name = info.Name or "notification";
		info.Description = info.Description or false;
		info.Seconds = info.Seconds or 1;
		
		local Notification = Instance.new("Frame")
		local mainName = Instance.new("TextLabel")
		local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
		local UIGradient = Instance.new("UIGradient")
		local status = Instance.new("TextLabel")
		local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
		local UIGradient_2 = Instance.new("UIGradient")
		local UICorner = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local UIGradient_3 = Instance.new("UIGradient")
		
		Notification.Name = "Notification"
		Notification.Parent = Notifications
		Notification.BackgroundColor3 = Color3.fromRGB(10, 11, 18)
		Notification.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Notification.BorderSizePixel = 0
		Notification.ClipsDescendants = true
		Notification.Position = UDim2.new(0.368785799, 0, 0.776234984, 0)
		Notification.Size = UDim2.new(0, 0, 0, 0) -- UDim2.new(0, 197, 0, 44)
		Notification.BackgroundTransparency = 1
		
		ts:Create(Notification, TweenInfo.new(0.3), {Size = UDim2.new(0, 197, 0, 44)}):Play()

		mainName.Name = "mainName"
		mainName.Parent = Notification
		mainName.AnchorPoint = Vector2.new(0.5, 0.5)
		mainName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		mainName.BackgroundTransparency = 1.000
		mainName.BorderSizePixel = 0
		mainName.Position = UDim2.new(0.294923872, 0, 0.354545474, 0)
		mainName.Size = UDim2.new(0, 95, 0, 19)
		mainName.ZIndex = 2
		mainName.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
		mainName.Text = info.Name
		mainName.TextColor3 = Color3.fromRGB(170, 170, 170)
		mainName.TextScaled = true
		mainName.TextSize = 14.000
		mainName.TextWrapped = true
		mainName.TextXAlignment = Enum.TextXAlignment.Left
		mainName.TextTransparency = 1

		UITextSizeConstraint.Parent = mainName
		UITextSizeConstraint.MaxTextSize = 24

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
		UIGradient.Rotation = 180
		UIGradient.Parent = mainName

		status.Name = "status"
		status.Parent = Notification
		status.AnchorPoint = Vector2.new(0.5, 0.5)
		status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		status.BackgroundTransparency = 1.000
		status.BorderSizePixel = 0
		status.Position = UDim2.new(0.23984772, 0, 0.769909143, 0)
		status.Size = UDim2.new(0, 74, 0, 19)
		status.ZIndex = 2
		status.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
		status.Text = "Disabled"
		status.TextColor3 = Color3.fromRGB(65, 93, 255)
		status.TextScaled = true
		status.TextSize = 14.000
		status.TextWrapped = true
		status.TextXAlignment = Enum.TextXAlignment.Left
		status.TextTransparency = 1

		UITextSizeConstraint_2.Parent = status
		UITextSizeConstraint_2.MaxTextSize = 15

		UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
		UIGradient_2.Rotation = 180
		UIGradient_2.Parent = status

		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Notification

		UIStroke.Color = Color3.fromRGB(29, 44, 247)
		UIStroke.Thickness = 2.000
		UIStroke.Parent = Notification
		UIStroke.Transparency = 1

		UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
		UIGradient_3.Parent = UIStroke
		
		ts:Create(Notification, TweenInfo.new(0.7), {BackgroundTransparency = 0}):Play()
		ts:Create(UIStroke, TweenInfo.new(0.7), {Transparency = 0}):Play()
		ts:Create(status, TweenInfo.new(0.7), {TextTransparency = 0}):Play()
		ts:Create(mainName, TweenInfo.new(0.7), {TextTransparency = 0}):Play()

		if info.Status == true then
			status.Text = "Enabled";
			status.TextColor3 = Color3.fromRGB(76, 222, 144);
		elseif info.Status == false then
			status.Text = "Disabled";
		else
			status.Text = info.Status;
			status.TextColor3 = Color3.fromRGB(167, 167, 167);
		end
		
		task.spawn(function()
			task.wait(info.Seconds);

			ts:Create(Notification, TweenInfo.new(0.3), {
				Size = UDim2.new(0, 0, 0, 0)
			}):Play();
			
			ts:Create(Notification, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
			ts:Create(UIStroke, TweenInfo.new(0.3), {Transparency = 1}):Play()
			ts:Create(status, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
			ts:Create(mainName, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
			
			game:GetService("Debris"):AddItem(Notification, 0.3);
		end)
	end
	
	-- AntiCheat check
	
	local antiCheatSettings = {
		ammout = 100,
		moving = false,
		blocked = false,
		high = 1
	}

	local AntiCheatInfo = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local UIGradient_2 = Instance.new("UIGradient")
	local ammout = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local Bar = Instance.new("Frame")
	local UIGradient_3 = Instance.new("UIGradient")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local UIGradient_4 = Instance.new("UIGradient")
	local glow = Instance.new("ImageLabel")

	AntiCheatInfo.Name = "AntiCheatInfo"
	AntiCheatInfo.Parent = Protestix
	AntiCheatInfo.BackgroundColor3 = Color3.fromRGB(13, 14, 24)
	AntiCheatInfo.BorderSizePixel = 0
	AntiCheatInfo.Position = UDim2.new(0.434, 0, 0.94, 0)
	AntiCheatInfo.Size = UDim2.new(0.132, 0, 0.031, 0)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient.Parent = AntiCheatInfo

	UICorner.CornerRadius = UDim.new(0, 3)
	UICorner.Parent = AntiCheatInfo

	UIStroke.Color = Color3.fromRGB(23, 25, 42)
	UIStroke.Thickness = 2.000
	UIStroke.Parent = AntiCheatInfo

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient_2.Parent = UIStroke

	ammout.Name = "ammout"
	ammout.Parent = AntiCheatInfo
	ammout.AnchorPoint = Vector2.new(0.5, 0.5)
	ammout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ammout.BackgroundTransparency = 1.000
	ammout.LayoutOrder = 2
	ammout.Position = UDim2.new(0.511413932, 0, 0.507955909, 0)
	ammout.Size = UDim2.new(0.287356347, 0, 0.850000024, 0)
	ammout.ZIndex = 2
	ammout.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
	ammout.Text = antiCheatSettings.ammout .. "%"
	ammout.TextColor3 = Color3.fromRGB(233, 223, 224)
	ammout.TextScaled = true
	ammout.TextSize = 24.000
	ammout.TextWrapped = true

	UITextSizeConstraint.Parent = ammout
	UITextSizeConstraint.MaxTextSize = 24

	Bar.Name = "Bar"
	Bar.Parent = AntiCheatInfo
	Bar.BackgroundColor3 = Color3.fromRGB(29, 44, 247)
	Bar.BorderSizePixel = 0
	Bar.Size = UDim2.new(1, 0, 1, 0)

	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient_3.Parent = Bar

	UICorner_2.CornerRadius = UDim.new(0, 3)
	UICorner_2.Parent = Bar

	UIStroke_2.Color = Color3.fromRGB(47, 75, 255)
	UIStroke_2.Thickness = 2.000
	UIStroke_2.Parent = Bar

	UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(144, 144, 144)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient_4.Parent = UIStroke_2

	glow.Name = "glow"
	glow.Parent = Bar
	glow.BackgroundColor3 = Color3.fromRGB(29, 44, 247)
	glow.BackgroundTransparency = 1.000
	glow.BorderSizePixel = 0
	glow.Position = UDim2.new(-0.106435083, 0, -0.846838355, 0)
	glow.Size = UDim2.new(1.25, 0, 2.76538515, 0)
	glow.ZIndex = 0
	glow.Image = "rbxassetid://13494443093"
	glow.ImageColor3 = Color3.fromRGB(30, 49, 255)
	
	spawn(function()
		while task.wait() do
			if antiCheatSettings.ammout < 100 and not antiCheatSettings.moving then
				antiCheatSettings.blocked = false
				repeat
					antiCheatSettings.ammout += 20
					if antiCheatSettings.ammout > 100 then
						antiCheatSettings.ammout = 100
					end
					ammout.Text = math.floor(antiCheatSettings.ammout) .. "%"
					ts:Create(Bar, TweenInfo.new(0.3), {Size = UDim2.new((antiCheatSettings.ammout / 100) * 1, 0, 1, 0)}):Play()
					task.wait(0.1)
				until antiCheatSettings.ammout > 99 or antiCheatSettings.moving
			else
				if 1 < antiCheatSettings.ammout then
					antiCheatSettings.blocked = false
					repeat
						antiCheatSettings.ammout -= antiCheatSettings.high
						if antiCheatSettings.ammout < 1 then
							antiCheatSettings.ammout = 0
						end
						ts:Create(Bar, TweenInfo.new(0.3), {Size = UDim2.new((antiCheatSettings.ammout / 100) * 1, 0, 1, 0)}):Play()
						ammout.Text = math.floor(antiCheatSettings.ammout) .. "%"
						task.wait()
					until not antiCheatSettings.moving or antiCheatSettings.ammout < 1
				else
					antiCheatSettings.blocked = true
				end
			end
		end
	end)
	
	function mainUtil:AnticheatState(info, callback)
		info.moving = info.moving or false;
		info.high = info.high or 1;
		callback = callback or function() end;
		
		antiCheatSettings.moving = info.moving;
		antiCheatSettings.high = info.high;
		callback(antiCheatSettings.blocked)
	end
	
	function mainUtil:CreateTab(info)
		local ButtonLayout = 0;
		
		info.Name = info.Name or "tab";
		local listAddY = 0;
		
		local Tab = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Frame = Instance.new("Frame")
		local List = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local TabName = Instance.new("TextLabel")
		local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
		local uiPadding = Instance.new("UIPadding")
		
		Tab.Name = "Tab"
		Tab.Parent = Tabs
		Tab.AnchorPoint = Vector2.new(0.5, 0.5)
		Tab.BackgroundColor3 = Color3.fromRGB(13, 14, 24)
		Tab.BorderSizePixel = 0
		Tab.Position = UDim2.new(0.49999997, 0, 0.268253982, 0)
		Tab.Size = UDim2.new(0, 217, 0, 36)
		Tab.ZIndex = 2
		Tab.Active = true
		Tab.Draggable = true

		UICorner.Parent = Tab

		Frame.Parent = Tab
		Frame.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame.BackgroundColor3 = Color3.fromRGB(13, 14, 24)
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0.5, 0, 0.698809743, 0)
		Frame.Size = UDim2.new(0, 217, 0, 21)
		Frame.ZIndex = 2

		List.Name = "List"
		List.Parent = Tab
		List.BackgroundColor3 = Color3.fromRGB(13, 14, 24)
		List.BorderSizePixel = 0
		List.Position = UDim2.new(0, 0, 0.833332896, 0)
		List.Size = UDim2.new(0, 217, 0, 6)
		
		UIListLayout.Parent = List
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		TabName.Name = info.Name
		TabName.Parent = Tab
		TabName.AnchorPoint = Vector2.new(0.5, 0.5)
		TabName.BackgroundColor3 = Color3.fromRGB(233, 223, 224)
		TabName.BackgroundTransparency = 1.000
		TabName.Position = UDim2.new(0.497695863, 0, 0.478571594, 0)
		TabName.Size = UDim2.new(0, 193, 0, 18)
		TabName.ZIndex = 2
		TabName.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
		TabName.Text = info.Name
		TabName.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabName.TextScaled = true
		TabName.TextSize = 14.000
		TabName.TextWrapped = true
		
		uiPadding.Parent = List
		uiPadding.PaddingTop = UDim.new(0, 6)
		
		UITextSizeConstraint.Parent = TabName
		UITextSizeConstraint.MaxTextSize = 18
		
		local custom = {};
		
		function custom:CreateButton(info, callback)
			ButtonLayout += 1;
			
			listAddY += 27;	
			ts:Create(List, TweenInfo.new(1), {
				Size = UDim2.new(0, 217, 0, listAddY)
			}):Play();
			
			info.Name = info.Name or "button";
			info.Dropdown = info.Dropdown or {};
			info.Enabled = info.Enabled or false;
			info.Open = info.Open or false;
			info.Flag = info.Flag or tostring(info.Name .. "Flag");
			callback = callback or function() end;
			
			local waitingToPress = false;
			local key = nil;
			
			local dropdownYsize = 0;
			
			callback(info.Enabled);
			
			local Button = Instance.new("TextButton")
			local ButtonName = Instance.new("TextLabel")
			local Dropdown = Instance.new("Frame")

			local UIListLayout = Instance.new("UIListLayout")
			local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
			
			Button.Name = "Button"
			Button.Parent = List
			Button.BackgroundColor3 = Color3.fromRGB(13, 14, 24)
			Button.BorderSizePixel = 0
			Button.Position = UDim2.new(0, 0, 0.143, 0)
			Button.Size = UDim2.new(0, 217, 0, 27)
			Button.ZIndex = 2
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000
			Button.AutoButtonColor = false
			Button.AnchorPoint = Vector2.new(0.5, 0.5)
			Button.LayoutOrder = ButtonLayout;

			ButtonName.Name = info.Name
			ButtonName.Parent = Button
			ButtonName.AnchorPoint = Vector2.new(0.5, 0.5)
			ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonName.BackgroundTransparency = 1.000
			ButtonName.Position = UDim2.new(0.5, 0, 0.484126896, 0)
			ButtonName.Size = UDim2.new(0, 199, 0, 19)
			ButtonName.ZIndex = 2
			ButtonName.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
			ButtonName.Text = info.Name
			ButtonName.TextColor3 = Color3.fromRGB(163, 163, 163)
			ButtonName.TextScaled = true
			ButtonName.TextSize = 24.000
			ButtonName.TextWrapped = true
			ButtonName.TextXAlignment = Enum.TextXAlignment.Left
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = List
			Dropdown.BackgroundColor3 = Color3.fromRGB(13, 14, 24)
			Dropdown.BorderSizePixel = 0
			Dropdown.ClipsDescendants = true
			Dropdown.Position = UDim2.new(0, 0, 1.116, 0)
			Dropdown.Size = UDim2.new(0, 217, 0, 0)
			Dropdown.ClipsDescendants = true
			Dropdown.LayoutOrder = ButtonLayout;

			UIListLayout.Parent = Dropdown
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			
			UITextSizeConstraint.Parent = ButtonName
			UITextSizeConstraint.MaxTextSize = 17
			
			local keybind = Instance.new("TextButton")
			local keybindName = Instance.new("TextLabel")
			local UITextSizeConstraint2 = Instance.new("UITextSizeConstraint")

			keybind.Name = "keybind"
			keybind.Parent = Button
			keybind.Active = false
			keybind.AnchorPoint = Vector2.new(0.5, 0.5)
			keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			keybind.BackgroundTransparency = 1.000
			keybind.Position = UDim2.new(0.899, 0, 0.484, 0)
			keybind.Selectable = false
			keybind.Size = UDim2.new(0, 20, 0, 20)
			keybind.ZIndex = 2
			keybind.Text = ""
			keybind.TextColor3 = Color3.fromRGB(163, 163, 163)
			keybind.TextScaled = true
			keybind.TextSize = 24.000
			keybind.TextWrapped = true

			keybindName.Name = "keybindName"
			keybindName.Parent = keybind
			keybindName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			keybindName.BackgroundTransparency = 1.000
			keybindName.Size = UDim2.new(0, 20, 0, 20)
			keybindName.ZIndex = 2
			keybindName.FontFace = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			keybindName.Text = " ... "
			keybindName.TextColor3 = Color3.fromRGB(45, 47, 56)
			keybindName.TextScaled = true
			keybindName.TextSize = 24.000
			keybindName.TextWrapped = true

			UITextSizeConstraint2.Parent = keybindName
			UITextSizeConstraint2.MaxTextSize = 17
			
			keybind.MouseButton1Click:Connect(function()
				if not waitingToPress then
					waitingToPress = true;
				end
			end)
			
			uis.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Keyboard then
					if key ~= nil then
						if input.KeyCode == key then
							info.Enabled = not info.Enabled;
							callback(info.Enabled)

							if info.Enabled then
								ts:Create(ButtonName, TweenInfo.new(0.5), {
									TextColor3 = Color3.fromRGB(0, 0, 0)
								}):Play();
								ts:Create(Button, TweenInfo.new(0.5), {
									BackgroundColor3 = Color3.fromRGB(138, 152, 255)
								}):Play();
							else
								ts:Create(ButtonName, TweenInfo.new(0.5), {
									TextColor3 = Color3.fromRGB(163, 163, 163)
								}):Play();
								ts:Create(Button, TweenInfo.new(0.5), {
									BackgroundColor3 = Color3.fromRGB(13, 14, 24)
								}):Play();
							end
						end
					end
					
					if input.KeyCode == Enum.KeyCode.Backspace then
						if waitingToPress then
							waitingToPress = false;
							key = nil;
							keybindName.Text = " ... ";
							keybindName.TextColor3 = Color3.fromRGB(45, 47, 56)
						end
					end
					
					if input.KeyCode == Enum.KeyCode.Return then
						if waitingToPress then
							waitingToPress = false;
							if key ~= nil then
								keybindName.Text = tostring(uis:GetStringForKeyCode(key));
								keybindName.TextColor3 = Color3.fromRGB(163, 163, 163)
							end
						end
					else
						if waitingToPress then
							key = input.KeyCode;
							keybindName.Text = tostring(uis:GetStringForKeyCode(key));
							keybindName.TextColor3 = Color3.fromRGB(163, 163, 163)
							waitingToPress = false;
						end
					end
				end
			end)
			
			if info.Enabled then
				ButtonName.TextColor3 = Color3.fromRGB(80, 159, 255);
			else
				ButtonName.TextColor3 = Color3.fromRGB(163, 163, 163);
			end
			
			Button.MouseButton1Click:Connect(function()
				info.Enabled = not info.Enabled;
				callback(info.Enabled)
				
				if info.Enabled then
					ts:Create(ButtonName, TweenInfo.new(0.5), {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}):Play();
					ts:Create(Button, TweenInfo.new(0.5), {
						BackgroundColor3 = Color3.fromRGB(138, 152, 255)
					}):Play();
				else
					ts:Create(ButtonName, TweenInfo.new(0.5), {
						TextColor3 = Color3.fromRGB(163, 163, 163)
					}):Play();
					ts:Create(Button, TweenInfo.new(0.5), {
						BackgroundColor3 = Color3.fromRGB(13, 14, 24)
					}):Play();
				end
			end);
			
			Button.MouseButton2Click:Connect(function()
				info.Open = not info.Open;

				if info.Open then
					listAddY += dropdownYsize;

					ts:Create(Dropdown, TweenInfo.new(0.5), {
						Size = UDim2.new(0, 217, 0, dropdownYsize)
					}):Play();
				else
					listAddY -= dropdownYsize;

					ts:Create(Dropdown, TweenInfo.new(0.5), {
						Size = UDim2.new(0, 217, 0, 0),
					}):Play();
				end

				ts:Create(List, TweenInfo.new(0.5), {
					Size = UDim2.new(0, 217, 0, listAddY)
				});
			end);
			
			local items = {};
			
			function items:CreateToggle(info, callback)
				dropdownYsize += 26;
				
				info.Name = info.Name or "toggle";
				info.Enabled = info.Enabled or false;
				info.Flag = info.Flag or tostring(info.Name .. "Flag");
				callback = callback or function() end;
				
				local slide = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local circle = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local hitbox = Instance.new("TextButton")
				local Toggle = Instance.new("Frame")
				local ToggleName = Instance.new("TextLabel")
				local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
				
				Toggle.Name = "Toggle"
				Toggle.Parent = Dropdown
				Toggle.Active = true
				Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				Toggle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
				Toggle.BackgroundTransparency = 1.000
				Toggle.BorderSizePixel = 0
				Toggle.Position = UDim2.new(0.5, 0, 0.25, 0)
				Toggle.Selectable = true
				Toggle.Size = UDim2.new(0, 217, 0, 26)

				slide.Name = "slide"
				slide.Parent = Toggle
				slide.AnchorPoint = Vector2.new(0.5, 0.5)
				slide.BackgroundColor3 = Color3.fromRGB(5, 5, 9)
				slide.BorderSizePixel = 0
				slide.Position = UDim2.new(0.871520698, 0, 0.538719773, 0)
				slide.Size = UDim2.new(0, 37, 0, 12)

				UICorner_2.Parent = slide

				circle.Name = "circle"
				circle.Parent = slide
				circle.AnchorPoint = Vector2.new(0.5, 0.5)
				circle.BackgroundColor3 = Color3.fromRGB(25, 31, 90)
				circle.BorderSizePixel = 0
				circle.Position = UDim2.new(0.189999998, 0, 0.469999999, 0)
				circle.Size = UDim2.new(0, 15, 0, 15)

				UICorner_3.CornerRadius = UDim.new(1, 0)
				UICorner_3.Parent = circle

				hitbox.Name = "hitbox"
				hitbox.Parent = slide
				hitbox.Active = false
				hitbox.AnchorPoint = Vector2.new(0.5, 0.5)
				hitbox.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
				hitbox.BackgroundTransparency = 1.000
				hitbox.BorderSizePixel = 0
				hitbox.Position = UDim2.new(0.5, 0, 0.5, 0)
				hitbox.Selectable = false
				hitbox.Size = UDim2.new(0, 42, 0, 15)
				hitbox.Text = ""

				ToggleName.Name = info.Name
				ToggleName.Parent = Toggle
				ToggleName.AnchorPoint = Vector2.new(0.5, 0.5)
				ToggleName.BackgroundColor3 = Color3.fromRGB(177, 177, 177)
				ToggleName.BackgroundTransparency = 1.000
				ToggleName.Position = UDim2.new(0.350230426, 0, 0.500768781, 0)
				ToggleName.Size = UDim2.new(0, 134, 0, 17)
				ToggleName.ZIndex = 2
				ToggleName.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
				ToggleName.Text = info.Name
				ToggleName.TextColor3 = Color3.fromRGB(177, 177, 177)
				ToggleName.TextScaled = true
				ToggleName.TextSize = 14.000
				ToggleName.TextWrapped = true
				ToggleName.TextXAlignment = Enum.TextXAlignment.Left
				
				UITextSizeConstraint.Parent = ToggleName
				UITextSizeConstraint.MaxTextSize = 14
				
				hitbox.MouseButton1Click:Connect(function()
					info.Enabled = not info.Enabled;
					callback(info.Enabled);
					
					if info.Enabled then
						ts:Create(ToggleName, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play();
						ts:Create(circle, TweenInfo.new(0.5), {
							Position = UDim2.new(0.8, 0, 0.47, 0),
							BackgroundColor3 = Color3.fromRGB(60, 76, 216)
						}):Play();
						ts:Create(slide, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(45, 45, 81)}):Play();
					else
						ts:Create(ToggleName, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(177, 177, 177)}):Play();
						ts:Create(circle, TweenInfo.new(0.5), {
							Position = UDim2.new(0.19, 0, 0.47, 0),
							BackgroundColor3 = Color3.fromRGB(25, 31, 90)
						}):Play();
						ts:Create(slide, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(5, 5, 9)}):Play();
					end
				end)
			end
			
			function items:CreateSlider(info, callback)
				dropdownYsize += 29;
				
				info.Name = info.Name or "slider";
				info.Min = info.Min or 1;
				info.Max = info.Max or 10;
				info.Value = info.Value or (info.Max / 2);
				info.RecommendedValue = info.RecommendedValue or info.Value;
				info.Flag = info.Flag or tostring(info.Name .. "Flag")
				callback = callback or function() end;
				
				local Slider = Instance.new("Frame")
				local SliderName = Instance.new("TextLabel")
				local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
				local slide = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local choosed = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local hitbox = Instance.new("TextButton")
				local circle = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local ammout = Instance.new("Frame")
				local UICorner_4 = Instance.new("UICorner")
				local text = Instance.new("TextLabel")
				local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
				
				Slider.Name = "Slider"
				Slider.Parent = Dropdown
				Slider.Active = true
				Slider.AnchorPoint = Vector2.new(0.5, 0.5)
				Slider.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
				Slider.BackgroundTransparency = 1.000
				Slider.BorderSizePixel = 0
				Slider.Position = UDim2.new(0.5, 0, 0.721428573, 0)
				Slider.Selectable = true
				Slider.Size = UDim2.new(0, 217, 0, 29)

				SliderName.Name = info.Name
				SliderName.Parent = Slider
				SliderName.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderName.BackgroundTransparency = 1.000
				SliderName.Position = UDim2.new(0.349999994, 0, 0.400000006, 0)
				SliderName.Size = UDim2.new(0, 134, 0, 17)
				SliderName.ZIndex = 2
				SliderName.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
				SliderName.Text = info.Name
				SliderName.TextColor3 = Color3.fromRGB(177, 177, 177)
				SliderName.TextScaled = true
				SliderName.TextSize = 14.000
				SliderName.TextWrapped = true
				SliderName.TextXAlignment = Enum.TextXAlignment.Left

				UITextSizeConstraint.Parent = SliderName
				UITextSizeConstraint.MaxTextSize = 14

				slide.Name = "slide"
				slide.Parent = Slider
				slide.AnchorPoint = Vector2.new(0.5, 0.5)
				slide.BackgroundColor3 = Color3.fromRGB(5, 5, 9)
				slide.BorderSizePixel = 0
				slide.Position = UDim2.new(0.503000021, 0, 0.800000012, 0)
				slide.Size = UDim2.new(0, 201, 0, 5)

				UICorner.Parent = slide

				choosed.Name = "choosed"
				choosed.Parent = slide
				choosed.BackgroundColor3 = Color3.fromRGB(29, 44, 247)
				choosed.BorderSizePixel = 0
				choosed.Position = UDim2.new(0, 0, 0, 0)
				choosed.Size = UDim2.new(0, 103, 0, 5)

				UICorner_2.CornerRadius = UDim.new(1, 0)
				UICorner_2.Parent = choosed

				hitbox.Name = "hitbox"
				hitbox.Parent = slide
				hitbox.Active = false
				hitbox.AnchorPoint = Vector2.new(0.5, 0.5)
				hitbox.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
				hitbox.BackgroundTransparency = 1.000
				hitbox.BorderSizePixel = 0
				hitbox.Position = UDim2.new(0.5, 0, 0.583333313, 0)
				hitbox.Selectable = false
				hitbox.Size = UDim2.new(0, 201, 0, 6)
				hitbox.Text = ""

				circle.Name = "circle"
				circle.Parent = slide
				circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				circle.BorderSizePixel = 0
				circle.Position = UDim2.new(0.48, 0, -0.5, 0)
				circle.Size = UDim2.new(0, 10, 0, 10)

				UICorner_3.CornerRadius = UDim.new(1, 0)
				UICorner_3.Parent = circle

				ammout.Name = "ammout"
				ammout.Parent = slide
				ammout.AnchorPoint = Vector2.new(0.5, 0.5)
				ammout.BackgroundColor3 = Color3.fromRGB(29, 44, 247)
				ammout.BorderSizePixel = 0
				ammout.Position = UDim2.new(0.925373137, 0, -2.29999995, 0)
				ammout.Size = UDim2.new(0, 25, 0, 17)

				UICorner_4.CornerRadius = UDim.new(0, 4)
				UICorner_4.Parent = ammout

				text.Name = "text"
				text.Parent = ammout
				text.AnchorPoint = Vector2.new(0.5, 0.5)
				text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				text.BackgroundTransparency = 1.000
				text.Position = UDim2.new(0.5, 0, 0.5, 0)
				text.Size = UDim2.new(0, 25, 0, 15)
				text.ZIndex = 2
				text.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.Bold)
				text.Text = info.Value
				text.TextColor3 = Color3.fromRGB(255, 255, 255)
				text.TextScaled = true
				text.TextSize = 14.000
				text.TextWrapped = true

				UITextSizeConstraint_2.Parent = text
				UITextSizeConstraint_2.MaxTextSize = 14
				
				local conStart
				local conEnded

				hitbox.MouseButton1Down:Connect(function()
					local mousePos = uis:GetMouseLocation().X;
					local sliderSize = hitbox.AbsoluteSize.X;
					local sliderPos = hitbox.AbsolutePosition.X;
					local per = math.clamp((mousePos - sliderPos), 0, 201);
					choosed.Size = UDim2.new(0, per, 0, 5);
					
					local v = (mousePos - sliderPos) / sliderSize
					local p = (v / 0.01 + 0.5) * 0.01
					local circlePos = math.clamp(p, 0, 1);
					circle.Position = UDim2.new(circlePos - 0.03, 0, -0.5, 0);

					local return_value = (((info.Max - info.Min) / 201) * choosed.AbsoluteSize.X) + info.Min;
					local a = math.floor(return_value);
					local c = string.len(a) + 2;
					
					if info.RecommendedValue > tonumber(string.sub(return_value, 1, c)) then
						ts:Create(ammout, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(29, 44, 247)}):Play();
					else
						ts:Create(ammout, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(220, 56, 56)}):Play();
					end

					callback(string.sub(return_value, 1, c));
					text.Text = tostring(string.sub(return_value, 1, c));

					conStart = mouse.Move:Connect(function()
						local mousePos = uis:GetMouseLocation().X;
						local sliderSize = hitbox.AbsoluteSize.X;
						local sliderPos = hitbox.AbsolutePosition.X;
						local per = math.clamp((mousePos - sliderPos), 0, 201);
						choosed.Size = UDim2.new(0, per, 0, 5);

						return_value = (((info.Max - info.Min) / 201) * choosed.AbsoluteSize.X) + info.Min;
						a = math.floor(return_value);
						c = string.len(a) + 2;
						
						v = (mousePos - sliderPos) / sliderSize
						p = (v / 0.01 + 0.5) * 0.01
						circlePos = math.clamp(p, 0, 1);
						circle.Position = UDim2.new(circlePos - 0.03, 0, -0.5, 0);
						
						callback(string.sub(return_value, 1, c));
						text.Text = tostring(string.sub(return_value, 1, c));
						
						if info.RecommendedValue > tonumber(string.sub(return_value, 1, c)) then
							ts:Create(ammout, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(29, 44, 247)}):Play();
						else
							ts:Create(ammout, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(220, 56, 56)}):Play();
						end
					end)
					conEnded = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							conStart:Disconnect();
							conEnded:Disconnect();
						end
					end)
				end)
			end
			
			return items;
		end
		
		return custom;
	end
	
	return mainUtil;
end


--[[local main = library:Init();
local tab = main:CreateTab({Name = "Combat"});

local killaura = tab:CreateButton({Name = "Killaura", Enabled = false, Flag = "KillauraFlag"}, function(callback)
	print(callback);
	main:Notification({Name = "Killaura", Status = callback, Seconds = 4, Description = false});
end);

killaura:CreateToggle({Name = "Rotations", Enabled = false, Flag = "KillauraRotationsFlag"}, function(callback)
	print(callback);
end);
killaura:CreateSlider({Name = "Attack range", Min = 7, Max = 25, Value = 14, RecommendedValue = 14, Flag = "KillauraAttackRange"}, function(callback)
	print(callback);
end);

local char = lp.Character or lp.CharacterAdded:Wait();
local hum = char:WaitForChild("Humanoid");

spawn(function()
	while task.wait() do
		main:TargetHud({Player = lp, MaxHealth = hum.MaxHealth, Health = hum.Health})
	end
end)
spawn(function()
	while task.wait() do
		for i = 1, 10 do
			main:AnticheatState({moving = true, high = 1})
			task.wait(0.1)
		end
		for i = 1, 10 do
			main:AnticheatState({moving = false, high = 1})
			task.wait(0.1)
		end
	end
end)]]

return library;
