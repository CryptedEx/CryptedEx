
-- Gui to Lua
-- Version: 3.2

-- Instances:

local LegacyX = Instance.new("ScreenGui")
local Whitelistchecker = Instance.new("Frame")
local darkframe = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local back = Instance.new("Frame")
local loader = Instance.new("Frame")
local Main = Instance.new("Frame")
local name = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Global = Instance.new("TextButton")
local Player = Instance.new("TextButton")
local Home = Instance.new("TextButton")
local Settings = Instance.new("TextButton")
local darkframe_2 = Instance.new("Frame")
local GlobalFrame = Instance.new("Frame")
local AutoRob = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local AutoKIll = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local ArrestAll = Instance.new("TextButton")
local RPGLock = Instance.new("TextButton")
local BagPlayer = Instance.new("TextButton")
local LockPlr = Instance.new("TextButton")
local UnlockPlr = Instance.new("TextButton")
local Spectate = Instance.new("TextButton")
local Unspectate = Instance.new("TextButton")
local Teleport = Instance.new("TextButton")
local Cash = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local FlashWaves = Instance.new("TextButton")
local Airstrike = Instance.new("TextButton")
local Godmode = Instance.new("TextButton")
local EspPlayers = Instance.new("TextButton")
local Katana = Instance.new("TextButton")
local Headless = Instance.new("TextButton")
local FullUnban = Instance.new("TextButton")
local RPGMOD = Instance.new("TextButton")
local PPbatfood = Instance.new("TextButton")
local MaskSpam = Instance.new("TextButton")
local P90Farm = Instance.new("TextButton")
local PlayerFrame = Instance.new("Frame")
local Speed = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local JumpPower = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Godblock = Instance.new("TextButton")
local AntiSlow = Instance.new("TextButton")
local AntiStomp = Instance.new("TextButton")
local BatReach = Instance.new("TextButton")
local RemoveDecals = Instance.new("TextButton")
local FlyX = Instance.new("TextButton")
local Reach = Instance.new("TextButton")
local FreeFistsQ = Instance.new("TextButton")
local Stopsignreach = Instance.new("TextButton")
local FPSBOOST = Instance.new("TextButton")
local Tornado = Instance.new("TextButton")
local KnifeReach = Instance.new("TextButton")
local credits = Instance.new("TextLabel")
local Settings = {
	["Prefix"]      = ".";
	["NotifTitle"]  = "[Jump'D] ";
	["NotifIcon"]   = "rbxassetid://145360599";
	["NotifSound"]  = "rbxassetid://216917652";
};

-- // Functions
function sendNotif(title, description, duration)
	local milf = coroutine.wrap(function()
		local notifSound = Instance.new("Sound", game.CoreGui);
		notifSound.SoundId = Settings.NotifSound;
		notifSound:Play();
		wait(4);
		notifSound:Destroy();
	end)
	milf()
	game.StarterGui:SetCore("SendNotification", {
		Title       = Settings.NotifTitle .. title;
		Text        = description;
		Icon        = Settings.NotifIcon;
		Duration    = duration;
	})
end;
local function ShrinkName()
	TextBox.FocusLost:connect(function()
		for i,v in pairs(game.Players:GetChildren()) do
			if (string.sub(string.lower(v.Name),1,string.len(TextBox.Text))) == string.lower(TextBox.Text) then
				TextBox.Text = v.Name
			end
		end
	end)
end

ShrinkName()
function findPlayer(name)
	name = name:lower()
	if name == 'me' then
		return game:GetService'Players'.LocalPlayer
	end
	for i,v in pairs(game:GetService'Players':GetPlayers()) do
		if v.Name:lower():find(name) == 1 then
			return v
		end
	end
end

--/ Important checks 'n waiting for stuff to load or smthing

repeat
	wait()
until game:GetService("Players").LocalPlayer ~= nil

if not game:GetService("Players").LocalPlayer.Character then
	game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
end

--/ Variables & Da Hood Gui Clones Deletion

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")

local LockedPlayer = nil

for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
	if v.Name == "Main" then
		v:Destroy()
	end
end

--Properties:

LegacyX.Name = "Legacy X"
LegacyX.Parent = game.CoreGui
LegacyX.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Whitelistchecker.Name = "Whitelist checker"
Whitelistchecker.Parent = LegacyX
Whitelistchecker.Active = true
Whitelistchecker.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Whitelistchecker.BorderSizePixel = 0
Whitelistchecker.Position = UDim2.new(0.406934321, 0, 0.398659974, 0)
Whitelistchecker.Size = UDim2.new(0, 315, 0, 257)
Whitelistchecker.Visible = false

darkframe.Name = "dark frame"
darkframe.Parent = Whitelistchecker
darkframe.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
darkframe.BorderSizePixel = 0
darkframe.Position = UDim2.new(0, 0, 0.175097272, 0)
darkframe.Size = UDim2.new(0, 315, 0, 192)

TextLabel.Parent = Whitelistchecker
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 315, 0, 45)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.Text = "Legacy X Whitelist Check"
TextLabel.TextColor3 = Color3.fromRGB(20, 20, 20)
TextLabel.TextSize = 18.000

TextLabel_2.Parent = Whitelistchecker
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.338521391, 0)
TextLabel_2.Size = UDim2.new(0, 315, 0, 45)
TextLabel_2.Font = Enum.Font.ArialBold
TextLabel_2.Text = "Loading..."
TextLabel_2.TextColor3 = Color3.fromRGB(49, 49, 49)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 18.000
TextLabel_2.TextWrapped = true

back.Name = "back"
back.Parent = Whitelistchecker
back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
back.BorderSizePixel = 0
back.Position = UDim2.new(0.0571428575, 0, 0.513618648, 0)
back.Size = UDim2.new(0, 279, 0, 25)

loader.Name = "loader"
loader.Parent = back
loader.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
loader.BorderSizePixel = 0
loader.Size = UDim2.new(0, 100, 0, 25)

Main.Name = "Main"
Main.Parent = LegacyX
Main.Active = true
Main.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.312043786, 0, 0.24288106, 0)
Main.Size = UDim2.new(0, 600, 0, 326)
Main.Draggable = true

name.Name = "name"
name.Parent = Main
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.BorderSizePixel = 0
name.Size = UDim2.new(0, 600, 0, 35)
name.Font = Enum.Font.ArialBold
name.Text = "Legacy X Revamped"
name.TextColor3 = Color3.fromRGB(20, 20, 20)
name.TextSize = 23.000
name.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.951666653, 0, 0.0184049085, 0)
Exit.Size = UDim2.new(0, 23, 0, 23)
Exit.Font = Enum.Font.ArialBold
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(34, 34, 34)
Exit.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0.349999994, 0)
UICorner.Parent = Exit
Exit.MouseButton1Down:connect(function()
	sendNotif("Security", "Press To Bring UI BACK!!", 15);
	Main.Visible = false;
end);

Global.Name = "Global"
Global.Parent = Main
Global.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Global.BackgroundTransparency = 1.000
Global.BorderSizePixel = 0
Global.Position = UDim2.new(0.270000011, 0, 0.886503041, 0)
Global.Size = UDim2.new(0, 119, 0, 37)
Global.Font = Enum.Font.ArialBold
Global.Text = "Global"
Global.TextColor3 = Color3.fromRGB(20, 20, 20)
Global.TextSize = 25.000
Global.TextWrapped = true
Global.MouseButton1Down:connect(function()
	GlobalFrame.Visible = true;
	PlayerFrame.Visible = false;
	credits.Visible = false;
end);

Player.Name = "Player"
Player.Parent = Main
Player.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Player.BackgroundTransparency = 1.000
Player.BorderSizePixel = 0
Player.Position = UDim2.new(0.505000055, 0, 0.886503041, 0)
Player.Size = UDim2.new(0, 119, 0, 37)
Player.Font = Enum.Font.ArialBold
Player.Text = "Player"
Player.TextColor3 = Color3.fromRGB(20, 20, 20)
Player.TextSize = 25.000
Player.TextWrapped = true
Player.MouseButton1Down:connect(function()
	GlobalFrame.Visible = false;
	PlayerFrame.Visible = true;
	credits.Visible = false;
end);

Home.Name = "Home"
Home.Parent = Main
Home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home.BackgroundTransparency = 1.000
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0.75333333, 0, 0.886503041, 0)
Home.Size = UDim2.new(0, 119, 0, 37)
Home.Font = Enum.Font.ArialBold
Home.Text = "Home"
Home.TextColor3 = Color3.fromRGB(20, 20, 20)
Home.TextSize = 25.000
Home.TextWrapped = true
Home.MouseButton1Down:connect(function()
	GlobalFrame.Visible = false;
	PlayerFrame.Visible = false;
	credits.Visible = true;
end);

Settings.Name = "Settings"
Settings.Parent = Main
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.0433332771, 0, 0.886503041, 0)
Settings.Size = UDim2.new(0, 119, 0, 37)
Settings.Font = Enum.Font.ArialBold
Settings.Text = "Settings [coming Soon]"
Settings.TextColor3 = Color3.fromRGB(20, 20, 20)
Settings.TextScaled = true
Settings.TextSize = 25.000
Settings.TextWrapped = true

darkframe_2.Name = "dark frame"
darkframe_2.Parent = Main
darkframe_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
darkframe_2.BorderSizePixel = 0
darkframe_2.Position = UDim2.new(0, 0, 0.107612655, 0)
darkframe_2.Size = UDim2.new(0, 600, 0, 254)

GlobalFrame.Name = "Global Frame"
GlobalFrame.Parent = Main
GlobalFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
GlobalFrame.BorderSizePixel = 0
GlobalFrame.Position = UDim2.new(0, 0, 0.107612655, 0)
GlobalFrame.Size = UDim2.new(0, 600, 0, 254)
GlobalFrame.Visible = false

AutoRob.Name = "Auto-Rob"
AutoRob.Parent = GlobalFrame
AutoRob.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
AutoRob.BorderColor3 = Color3.fromRGB(53, 53, 53)
AutoRob.BorderSizePixel = 3
AutoRob.Position = UDim2.new(0.283333331, 0, 0.196850389, 0)
AutoRob.Size = UDim2.new(0, 119, 0, 22)
AutoRob.Font = Enum.Font.ArialBold
AutoRob.Text = "Auto-Rob"
AutoRob.TextColor3 = Color3.fromRGB(0, 226, 0)
AutoRob.TextSize = 20.000
AutoRob.MouseButton1Click:connect(function()

	wait(0) local A_1 = "[Jump'd] Autofarming.. (shotgun farm)" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
if game.Players.LocalPlayer.Character.Animate:FindFirstChild("idle") then 		game.Players.LocalPlayer.Character.Animate.idle:Destroy() 	end 	local me = game:service'Players'.LocalPlayer 	local plr = game.Players.LocalPlayer 	local savedarmourpos = plr.Character.HumanoidRootPart.Position 	local toolname = "[Shotgun] - $1250" 	plr.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Ignored.Shop[toolname].Head.Position) 	wait(.1) 	fireclickdetector(game.Workspace.Ignored.Shop[toolname].ClickDetector) 	wait(.1) 	fireclickdetector(game.Workspace.Ignored.Shop[toolname].ClickDetector) 	wait(.1) 	fireclickdetector(game.Workspace.Ignored.Shop[toolname].ClickDetector) 	wait(.1) 	fireclickdetector(game.Workspace.Ignored.Shop[toolname].ClickDetector) 	wait(.1) 	fireclickdetector(game.Workspace.Ignored.Shop[toolname].ClickDetector) 	wait(.1) 	fireclickdetector(game.Workspace.Ignored.Shop[toolname].ClickDetector) 	wait(.1) 	me.Character.Humanoid:EquipTool(me.Backpack:FindFirstChild("[Shotgun]")) 	wait(0.001) 	plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedarmourpos) 	plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedarmourpos) 	function bypass() 		local oh1 = CFrame.new(-346.434296, 52.5954704, 446.756989) 		local oh2 = game:GetService("Players") 		local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart 		oh3.CFrame = oh1 		wait(1.5) 	end 	repeat 		wait() 	until game:IsLoaded() 	if workspace.Players[game.Players.LocalPlayer.Name]:FindFirstChild("[Shotgun]") then 		workspace.Players[game.Players.LocalPlayer.Name]:FindFirstChild("[Shotgun]").Name = "[Drxco]" 		function Buy() 			fireclickdetector(workspace.Ignored.Shop["20 [Shotgun Ammo] - $60"].ClickDetector) 			fireclickdetector(workspace.Ignored.Shop["20 [Shotgun Ammo] - $60"].ClickDetector) 		end 		local ATM = "nil" 		local idk = false 		local dineros = false 		local lol = 0 		function GetATM() 			bypass() 			for i, v in pairs(workspace.Cashiers:GetChildren()) do 				if v:WaitForChild("Humanoid").Health > 0 then 					local cf = v.Open.CFrame 					local lv = cf.lookVector 					game.workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = cf + (lv * Vector3.new(0, 0, -2)) 					game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", v.Open.Position) 					return v 				end 			end 		end 		function GETMONEY() 			for i, v in pairs(workspace.Ignored.Drop:GetChildren()) do 				if v.Name == "MoneyDrop" and (workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - v.Position).Magnitude < 25 				then 					dineros = true 					fireclickdetector(v.ClickDetector) 					wait(0.7) 					dineros = false 				end 			end 		end 		ATM = GetATM() 		function reload(name, gun) 			local XD1 = "Reload" 			local XD2 = game:GetService("Workspace").Players[name][gun] 			local Event = game:GetService("ReplicatedStorage").MainEvent 			Event:FireServer(XD1, XD2) 		end 		game:GetService("RunService").Heartbeat:Connect( 		function() 			GETMONEY() 			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11) 			if lol == 0 and dineros == false then 				if game.Players.LocalPlayer.DataFolder.Inventory["[Shotgun]"].Value == "0" and idk == false then 					lol = 10 					idk = true 					local part = workspace.Ignored.Shop["20 [Shotgun Ammo] - $60"].Head 					game.workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = 						CFrame.new(part.CFrame.X, part.CFrame.Y + 4, part.CFrame.Z) 					game.workspace.Players[game.Players.LocalPlayer.Name]["[Drxco]"].Parent = 						game.Players.LocalPlayer.Backpack 					wait(2) 					for i = 1, 10 do 						game.workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = 							CFrame.new( 							part.CFrame.X + math.random(1, 2), 							part.CFrame.Y + math.random(1, 2), 							part.CFrame.Z + math.random(1, 2) 						) 						Buy() 						wait(0.5) 					end 					game.Players.LocalPlayer.Backpack["[Drxco]"].Parent = 						game.workspace.Players[game.Players.LocalPlayer.Name] 					lol = 0 					idk = false 					local cf = ATM.Open.CFrame 					local lv = cf.lookVector 					game.workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = 						cf + (lv * Vector3.new(0, 0, -2)) 				end 				if 					game.workspace.Players[game.Players.LocalPlayer.Name]:WaitForChild("[Drxco]").Ammo.Value == 4 and 						idk == false 				then 					idk = true 					reload(game.Players.LocalPlayer.Name, "[Drxco]") 					wait(0.5) 					idk = false 				else 					for i, v in pairs(workspace.Cashiers:GetChildren()) do 						if v:WaitForChild("Humanoid").Health > 0 then 							if idk == false then 								if ATM.Humanoid.Health > 0 then 									game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0, 0)) 									local cf = ATM.Open.CFrame 									local lv = cf.lookVector 									game.workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = 										cf + (lv * Vector3.new(0, 0, -2)) 								end 							end 						end 					end 				end 				for i, v in pairs(workspace.Cashiers:GetChildren()) do 					if v:WaitForChild("Humanoid").Health > 0 then 						if ATM.Humanoid.Health < 0 and idk == false then 							lol = 10 							wait(0.1) 							if idk == false then 								local cf = ATM.Open.CFrame 								local lv = cf.lookVector 								game.workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = 									cf + (lv * Vector3.new(0, 0, -2)) 								ATM = GetATM() 							end 							lol = 0 						end 					end 				end 			end 		end) 	end
end)

ScrollingFrame.Parent = GlobalFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(53, 53, 53)
ScrollingFrame.BorderSizePixel = 4
ScrollingFrame.Position = UDim2.new(0, 0, 0.133858263, 0)
ScrollingFrame.Size = UDim2.new(0, 144, 0, 220)
ScrollingFrame.CanvasPosition = Vector2.new(0, 288)

AutoKIll.Name = "Auto KIll"
AutoKIll.Parent = ScrollingFrame
AutoKIll.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
AutoKIll.BorderColor3 = Color3.fromRGB(53, 53, 53)
AutoKIll.BorderSizePixel = 3
AutoKIll.Position = UDim2.new(0.0824999884, 0, 0.104330704, 0)
AutoKIll.Size = UDim2.new(0, 105, 0, 22)
AutoKIll.Font = Enum.Font.ArialBold
AutoKIll.Text = "Auto Kill"
AutoKIll.TextColor3 = Color3.fromRGB(74, 74, 74)
AutoKIll.TextSize = 20.000
AutoKIll.MouseButton1Click:connect(function()
local localPlayer     = game:GetService("Players").LocalPlayer;
	local localCharacter  = localPlayer.Character;
	local TargetPlr       = TextBox.Text;
	wait(0) local A_1 = "[Jump'D] " .. TargetPlr .. "Has Been Locked." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)


	if TargetPlr and game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
		pcall(function()

			game.Players.LocalPlayer.Character.LeftHand.Size = Vector3.new(12,12,12)
			localCharacter.LeftHand.LeftWrist:Destroy();
			localCharacter.RightHand.RightWrist:Destroy();
			game.Players.LocalPlayer.Character.RightHand.Size = Vector3.new(12,12,12)

		end);
		repeat
			wait();
			localCharacter.LeftHand.CFrame = game.Players[TargetPlr].Character.LowerTorso.CFrame;
			localCharacter.RightHand.CFrame = game.Players[TargetPlr].Character.LowerTorso.CFrame;
		until game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == true
		wait(0) local A_1 = "[Legacy X] " .. TargetPlr .. " Has Been Successfully Eliminated!" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
		game.Players.LocalPlayer.Character.RightHand.Size = Vector3.new(1,1,1)
		game.Players.LocalPlayer.Character.LeftHand.Size = Vector3.new(1,1,1)
		game.StarterGui:SetCore("SendNotification", {
			Title = "Legacy X [Target System]";
			Text = "[Legacy X] " .. TargetPlr .. " Has been successfully knocked!";
			Duration = 15;
		})
	elseif game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == true then
		wait(0) local A_1 = "[Legacy X] " .. TargetPlr .. " Is Already Eliminated." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
		game.StarterGui:SetCore("SendNotification", {
			Title = "Legacy X [TARGET SYSTEM]";
			Text = "[Legacy X] " .. TargetPlr .. " Is already knocked.";
			Duration = 15;
		})
	end;
end);

TextBox.Parent = ScrollingFrame
TextBox.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
TextBox.BorderColor3 = Color3.fromRGB(53, 53, 53)
TextBox.BorderSizePixel = 3
TextBox.Position = UDim2.new(0.0549999997, 0, 0.0295275599, 0)
TextBox.Size = UDim2.new(0, 113, 0, 22)
TextBox.Font = Enum.Font.ArialBold
TextBox.Text = "player name"
TextBox.TextColor3 = Color3.fromRGB(74, 74, 74)
TextBox.TextSize = 14.000

ArrestAll.Name = "Arrest All"
ArrestAll.Parent = ScrollingFrame
ArrestAll.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
ArrestAll.BorderColor3 = Color3.fromRGB(53, 53, 53)
ArrestAll.BorderSizePixel = 3
ArrestAll.Position = UDim2.new(0.0824999884, 0, 0.181102365, 0)
ArrestAll.Size = UDim2.new(0, 105, 0, 22)
ArrestAll.Font = Enum.Font.ArialBold
ArrestAll.Text = "Arrest All"
ArrestAll.TextColor3 = Color3.fromRGB(74, 74, 74)
ArrestAll.TextSize = 20.000
ArrestAll.MouseButton1Click:connect(function()
repeat
        if workspace.Players:FindFirstChild(Target.Name) then
            if workspace.Players[Target.Name].BodyEffects["K.O"].Value == true then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cuff") then
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Cuff").Parent = game.Players.LocalPlayer.Character
                end
                game.Players.LocalPlayer.Character:FindFirstChild("Cuff"):Activate()
                game.Players.LocalPlayer.Character:MoveTo(workspace.Players[Target.Name].Head.Position)
                if workspace:FindFirstChild("Core") then
                    workspace.Core:Destroy()
                end
                flying = false
            end
        end
        wait()
    until workspace.Players[nukerowner].BodyEffects["Cuff"].Value == true
end)

RPGLock.Name = "RPG Lock"
RPGLock.Parent = ScrollingFrame
RPGLock.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
RPGLock.BorderColor3 = Color3.fromRGB(53, 53, 53)
RPGLock.BorderSizePixel = 3
RPGLock.Position = UDim2.new(0.0824999884, 0, 0.253937006, 0)
RPGLock.Size = UDim2.new(0, 105, 0, 22)
RPGLock.Font = Enum.Font.ArialBold
RPGLock.Text = "RPG Lock"
RPGLock.TextColor3 = Color3.fromRGB(74, 74, 74)
RPGLock.TextSize = 20.000
RPGLock.MouseButton1Click:connect(function()
	_G.RPGIDKBOSS = true
end)


BagPlayer.Name = "Bag Player"
BagPlayer.Parent = ScrollingFrame
BagPlayer.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
BagPlayer.BorderColor3 = Color3.fromRGB(53, 53, 53)
BagPlayer.BorderSizePixel = 3
BagPlayer.Position = UDim2.new(0.0824999884, 0, 0.332677156, 0)
BagPlayer.Size = UDim2.new(0, 105, 0, 22)
BagPlayer.Font = Enum.Font.ArialBold
BagPlayer.Text = "Bag Player"
BagPlayer.TextColor3 = Color3.fromRGB(74, 74, 74)
BagPlayer.TextSize = 20.000
BagPlayer.MouseButton1Click:connect(function()
	local TargetPlr = TextBox.Text
	function getRoot(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
		return rootPart
	end

	if TargetPlr and game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop['[BrownBag] - $25'].Head.CFrame
		wait(.30)
		fireclickdetector(game.Workspace.Ignored.Shop['[BrownBag] - $25'].ClickDetector)
		game.Players.LocalPlayer.Backpack:WaitForChild("[BrownBag]").Parent = game.Players.LocalPlayer.Character

		local A_1 = "[Legacy X] Attempting To Bag " .. TargetPlr .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
		wait(.5)
		repeat
			pcall(function()
				wait()
				getRoot(game.Players[TargetPlr].Character).CFrame = getRoot(game.Players.LocalPlayer.Character).CFrame + Vector3.new(1,3,0)
				game.Players.LocalPlayer.Character["[BrownBag]"]:Activate()
			end)
		until game.Players[TargetPlr].Character:FindFirstChild("Christmas_Sock")
		local A_1 = "[Legacy X] Successfully Bagged " .. TargetPlr .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
	elseif game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
		local A_1 = "[Legacy X] " .. TargetPlr .. " Is Already Bagged." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
	end
	end)

LockPlr.Name = "Lock - Plr"
LockPlr.Parent = ScrollingFrame
LockPlr.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
LockPlr.BorderColor3 = Color3.fromRGB(53, 53, 53)
LockPlr.BorderSizePixel = 3
LockPlr.Position = UDim2.new(0.0824999884, 0, 0.413385808, 0)
LockPlr.Size = UDim2.new(0, 105, 0, 22)
LockPlr.Font = Enum.Font.ArialBold
LockPlr.Text = "Lock - Plr"
LockPlr.TextColor3 = Color3.fromRGB(74, 74, 74)
LockPlr.TextSize = 20.000

UnlockPlr.Name = "Unlock - Plr"
UnlockPlr.Parent = ScrollingFrame
UnlockPlr.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
UnlockPlr.BorderColor3 = Color3.fromRGB(53, 53, 53)
UnlockPlr.BorderSizePixel = 3
UnlockPlr.Position = UDim2.new(0.0824999884, 0, 0.492125958, 0)
UnlockPlr.Size = UDim2.new(0, 105, 0, 22)
UnlockPlr.Font = Enum.Font.ArialBold
UnlockPlr.Text = "Unlock - Plr"
UnlockPlr.TextColor3 = Color3.fromRGB(74, 74, 74)
UnlockPlr.TextSize = 20.000

Spectate.Name = "Spectate"
Spectate.Parent = ScrollingFrame
Spectate.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Spectate.BorderColor3 = Color3.fromRGB(53, 53, 53)
Spectate.BorderSizePixel = 3
Spectate.Position = UDim2.new(0.0824999884, 0, 0.570866108, 0)
Spectate.Size = UDim2.new(0, 105, 0, 22)
Spectate.Font = Enum.Font.ArialBold
Spectate.Text = "Spectate"
Spectate.TextColor3 = Color3.fromRGB(74, 74, 74)
Spectate.TextSize = 20.000
Spectate.MouseButton1Click:connect(function()
	local TargetPlr = TextBox.Text;
	game.Workspace.Camera.CameraSubject = game.Players[TargetPlr].Character.Humanoid;
	local A_1 = "[Legacy X] Spectating " .. TargetPlr .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
end)

Unspectate.Name = "Unspectate"
Unspectate.Parent = ScrollingFrame
Unspectate.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Unspectate.BorderColor3 = Color3.fromRGB(53, 53, 53)
Unspectate.BorderSizePixel = 3
Unspectate.Position = UDim2.new(0.0824999884, 0, 0.653543293, 0)
Unspectate.Size = UDim2.new(0, 105, 0, 22)
Unspectate.Font = Enum.Font.ArialBold
Unspectate.Text = "Unspectate"
Unspectate.TextColor3 = Color3.fromRGB(74, 74, 74)
Unspectate.TextSize = 20.000
Unspectate.MouseButton1Click:connect(function()
local TargetPlr = TextBox.Text;
	local A_1 = "[Legacy X] Stopped Spectating " .. TargetPlr .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
	game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)

Teleport.Name = "Teleport"
Teleport.Parent = ScrollingFrame
Teleport.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Teleport.BorderColor3 = Color3.fromRGB(53, 53, 53)
Teleport.BorderSizePixel = 3
Teleport.Position = UDim2.new(0.0824999884, 0, 0.728346467, 0)
Teleport.Size = UDim2.new(0, 105, 0, 22)
Teleport.Font = Enum.Font.ArialBold
Teleport.Text = "Teleport"
Teleport.TextColor3 = Color3.fromRGB(74, 74, 74)
Teleport.TextSize = 20.000
Teleport.MouseButton1Click:connect(function()
local TargetPlr = TextBox.Text;
	local A_1 = "[Legacy X] Teleporting To " .. TargetPlr .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
	wait(.30)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[TargetPlr].Character.HumanoidRootPart.CFrame
end)

Cash.Name = "Cash"
Cash.Parent = ScrollingFrame
Cash.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Cash.BorderColor3 = Color3.fromRGB(53, 53, 53)
Cash.BorderSizePixel = 3
Cash.Position = UDim2.new(0.0824999884, 0, 0.807086647, 0)
Cash.Size = UDim2.new(0, 105, 0, 22)
Cash.Font = Enum.Font.ArialBold
Cash.Text = "Cash"
Cash.TextColor3 = Color3.fromRGB(74, 74, 74)
Cash.TextSize = 20.000
Cash.MouseButton1Click:connect(function()
local TargetPlr = TextBox.Text;
	local A_1 = "[Legacy X] " .. TargetPlr .. " Has $" .. game.Players[TargetPlr].DataFolder.Currency.Value .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
end)

TextLabel_3.Parent = GlobalFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.333333343, 0, 0.027559055, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 33)
TextLabel_3.Font = Enum.Font.ArialBold
TextLabel_3.Text = "Global"
TextLabel_3.TextColor3 = Color3.fromRGB(74, 74, 74)
TextLabel_3.TextSize = 27.000
TextLabel_3.TextWrapped = true

FlashWaves.Name = "Flash Waves"
FlashWaves.Parent = GlobalFrame
FlashWaves.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
FlashWaves.BorderColor3 = Color3.fromRGB(53, 53, 53)
FlashWaves.BorderSizePixel = 3
FlashWaves.Position = UDim2.new(0.518333316, 0, 0.196850389, 0)
FlashWaves.Size = UDim2.new(0, 119, 0, 22)
FlashWaves.Font = Enum.Font.ArialBold
FlashWaves.Text = "Flash Waves"
FlashWaves.TextColor3 = Color3.fromRGB(74, 74, 74)
FlashWaves.TextSize = 20.000
FlashWaves.MouseButton1Click:connect(function()
	local PostmanPatii1I1liIliliiiiIIli = assert local PostmanPatIII1IIi1illIli1lilI = select local PostmanPatl1II111I1Il1liIlII1 = tonumber local PostmanPatlIl11IIi1I11il1Ii1llI = unpack local PostmanPatlIll1li1IIiIiIlIliill = pcall local PostmanPatllliiIli1l11IiI1ilI = setfenv local PostmanPatl1iIi1lilli111IillI = setmetatable local PostmanPatlIl1i1IIII1iiiI1IliiI = type local PostmanPatlIlIlIi1ili1lilIiilIi = getfenv local PostmanPatlIl11ili1ilI1lIIiIiIl = tostring local PostmanPatI1i11lIiii1IilIll1l = error local PostmanPatlIlI1IiIiil1Iill1IlIl = string.sub local PostmanPati11Il1ilIlIll1liiI1 = string.byte local PostmanPatiI1illlliIIiIIl1iil = string.char local PostmanPatiIlIllI11I1li1lIIl1 = string.rep local PostmanPatlIlIiIlI1iiIllIlll1lI = string.gsub local PostmanPatI111Il1I1lli1l1Ii1i = string.match local PostmanPatIllI1i11liIiillIlII = PostmanPati11Il1ilIlIll1liiI1("k", 1) local PostmanPatlIli1lI111lI1l1l1IllI, PostmanPatI1lIIl1IiIl1il1IIil = #{354}, #{ 4838, 6125, 1090, 1187, 1496, 4030, 3754, 5152, 104, 5896, 2913, 5649, 2872, 3956, 4882, 4795, 3410, 2608, 5937, 6186, 6741, 4977, 3511 } + PostmanPatIllI1i11liIiillIlII + 130941 local PostmanPatI1l1lil1iI1ilI1iI11 = {} local PostmanPatliiiIlIIiii1I111iIi = 1 local function PostmanPatiiI11lii11i111I1I1I(PostmanPatillIi111iIIiilI1lIi, PostmanPatlIlIllIIiiIii1ilI1II1) local PostmanPatlIlII1iIiillII1IlIil1 PostmanPatillIi111iIIiilI1lIi = PostmanPatlIlIiIlI1iiIllIlll1lI(PostmanPatlIlI1IiIiil1Iill1IlIl(PostmanPatillIi111iIIiilI1lIi, 5), "..", function(PostmanPatIiIIlillIliilI1lI1l) if PostmanPati11Il1ilIlIll1liiI1(PostmanPatIiIIlillIliilI1lI1l, 2) == 72 then PostmanPatlIlII1iIiillII1IlIil1 = PostmanPatl1II111I1Il1liIlII1(PostmanPatlIlI1IiIiil1Iill1IlIl(PostmanPatIiIIlillIliilI1lI1l, 1, 1)) return "" else local PostmanPatIIll1Ii111lliI1Illl = PostmanPatiI1illlliIIiIIl1iil(PostmanPatl1II111I1Il1liIlII1(PostmanPatIiIIlillIliilI1lI1l, 16)) if PostmanPatlIlII1iIiillII1IlIil1 then local PostmanPatiI1ilIli111Ii11i1ii = PostmanPatiIlIllI11I1li1lIIl1(PostmanPatIIll1Ii111lliI1Illl, PostmanPatlIlII1iIiillII1IlIil1) PostmanPatlIlII1iIiillII1IlIil1 = nil return PostmanPatiI1ilIli111Ii11i1ii else return PostmanPatIIll1Ii111lliI1Illl end end end) local function PostmanPati111IIIi1l11lliIlII() local PostmanPatiIIillIIil11i1Iil1I = PostmanPati11Il1ilIlIll1liiI1(PostmanPatillIi111iIIiilI1lIi, PostmanPatliiiIlIIiii1I111iIi, PostmanPatliiiIlIIiii1I111iIi) PostmanPatliiiIlIIiii1I111iIi = PostmanPatliiiIlIIiii1I111iIi + 1 return PostmanPatiIIillIIil11i1Iil1I end local function PostmanPati1i1i1i1iIiIl11i1ll() local PostmanPatiIIillIIil11i1Iil1I, PostmanPatIIll1Ii111lliI1Illl, PostmanPatiI1ilIli111Ii11i1ii, PostmanPatI1Il1IiII1iilIi1Ili = PostmanPati11Il1ilIlIll1liiI1(PostmanPatillIi111iIIiilI1lIi, PostmanPatliiiIlIIiii1I111iIi, PostmanPatliiiIlIIiii1I111iIi + 3) PostmanPatliiiIlIIiii1I111iIi = PostmanPatliiiIlIIiii1I111iIi + 4 return PostmanPatI1Il1IiII1iilIi1Ili * 16777216 + PostmanPatiI1ilIli111Ii11i1ii * 65536 + PostmanPatIIll1Ii111lliI1Illl * 256 + PostmanPatiIIillIIil11i1Iil1I end local function PostmanPatlIlIII1liII11iiiI1I(PostmanPatlIlilIlilIiI1lII11111, PostmanPatlIIII11li11IIil11I1, PostmanPatlIl1lliil1liilil1Ii1i) if PostmanPatlIl1lliil1liilil1Ii1i then local PostmanPatIi1lii1l1Il111Il1Ii, PostmanPatlIll11Ii11lIlIiI1li1I = 0, 0 for PostmanPatII11iiilll1lilii1l1 = PostmanPatlIIII11li11IIil11I1, PostmanPatlIl1lliil1liilil1Ii1i do PostmanPatIi1lii1l1Il111Il1Ii = PostmanPatIi1lii1l1Il111Il1Ii + 2 ^ PostmanPatlIll11Ii11lIlIiI1li1I * PostmanPatlIlIII1liII11iiiI1I(PostmanPatlIlilIlilIiI1lII11111, PostmanPatII11iiilll1lilii1l1) PostmanPatlIll11Ii11lIlIiI1li1I = PostmanPatlIll11Ii11lIlIiI1li1I + 1 end return PostmanPatIi1lii1l1Il111Il1Ii else local PostmanPatiiiIIi1iIiiliIll1II = 2 ^ (PostmanPatlIIII11li11IIil11I1 - 1) return PostmanPatiiiIIi1iIiiliIll1II <= PostmanPatlIlilIlilIiI1lII11111 % (PostmanPatiiiIIi1iIiiliIll1II + PostmanPatiiiIIi1iIiiliIll1II) and 1 or 0 end end local function PostmanPatlll1I1i1ilii1li1i1i() local PostmanPatiIIillIIil11i1Iil1I, PostmanPatIIll1Ii111lliI1Illl = PostmanPati1i1i1i1iIiIl11i1ll(), PostmanPati1i1i1i1iIiIl11i1ll() if PostmanPatiIIillIIil11i1Iil1I == 0 and PostmanPatIIll1Ii111lliI1Illl == 0 then return 0 end return (-2 * PostmanPatlIlIII1liII11iiiI1I(PostmanPatIIll1Ii111lliI1Illl, 32) + 1) * 2 ^ (PostmanPatlIlIII1liII11iiiI1I(PostmanPatIIll1Ii111lliI1Illl, 21, 31) - 1023) * ((PostmanPatlIlIII1liII11iiiI1I(PostmanPatIIll1Ii111lliI1Illl, 1, 20) * 4294967296 + PostmanPatiIIillIIil11i1Iil1I) / 4503599627370496 + 1) end local function PostmanPatlIll1ilIlli1ilIIillli(PostmanPatli1i11lIli1iill1II1) local PostmanPatli1i1lIllIlIlIii1II = { PostmanPati11Il1ilIlIll1liiI1(PostmanPatillIi111iIIiilI1lIi, PostmanPatliiiIlIIiii1I111iIi, PostmanPatliiiIlIIiii1I111iIi + 3) } PostmanPatliiiIlIIiii1I111iIi = PostmanPatliiiIlIIiii1I111iIi + 4 local PostmanPati1iIIii11lI11lil111 = { nil, nil, nil, nil, nil, nil, nil, nil } for PostmanPatII11iiilll1lilii1l1 = 1, 8 do PostmanPati1iIIii11lI11lil111[PostmanPatII11iiilll1lilii1l1] = PostmanPatlIlIII1liII11iiiI1I(PostmanPatli1i11lIli1iill1II1, PostmanPatII11iiilll1lilii1l1) end local PostmanPatlll1II1lIlii1l11l1i = "" for PostmanPatII11iiilll1lilii1l1 = 1, 4 do local PostmanPatIi1lii1l1Il111Il1Ii, PostmanPatlIll11Ii11lIlIiI1li1I = 0, 0 for PostmanPatli1l1I11lIi1lIli1ll = 1, 8 do local PostmanPatlIl1Ill1lllIiIIIll1Ii = PostmanPatlIlIII1liII11iiiI1I(PostmanPatli1i1lIllIlIlIii1II[PostmanPatII11iiilll1lilii1l1], PostmanPatli1l1I11lIi1lIli1ll) if PostmanPati1iIIii11lI11lil111[PostmanPatli1l1I11lIi1lIli1ll] == 1 then PostmanPatlIl1Ill1lllIiIIIll1Ii = PostmanPatlIl1Ill1lllIiIIIll1Ii == 1 and 0 or 1 end PostmanPatIi1lii1l1Il111Il1Ii = PostmanPatIi1lii1l1Il111Il1Ii + 2 ^ PostmanPatlIll11Ii11lIlIiI1li1I * PostmanPatlIl1Ill1lllIiIIIll1Ii PostmanPatlIll11Ii11lIlIiI1li1I = PostmanPatlIll11Ii11lIlIiI1li1I + 1 end PostmanPatlll1II1lIlii1l11l1i = PostmanPatlll1II1lIlii1l11l1i .. PostmanPatlll1II1lIlii1l11l1i.char(PostmanPatIi1lii1l1Il111Il1Ii) end local PostmanPatiIIillIIil11i1Iil1I, PostmanPatIIll1Ii111lliI1Illl, PostmanPatiI1ilIli111Ii11i1ii, PostmanPatI1Il1IiII1iilIi1Ili = PostmanPati11Il1ilIlIll1liiI1(PostmanPatlll1II1lIlii1l11l1i, 1, 4) return PostmanPatI1Il1IiII1iilIi1Ili * 16777216 + PostmanPatiI1ilIli111Ii11i1ii * 65536 + PostmanPatIIll1Ii111lliI1Illl * 256 + PostmanPatiIIillIIil11i1Iil1I end local function PostmanPatlI111IIIIii1iI111ii(PostmanPatli1i11lIli1iill1II1) local PostmanPatIi1I11III1iI11l1lII = PostmanPati1i1i1i1iIiIl11i1ll() PostmanPatliiiIlIIiii1I111iIi = PostmanPatliiiIlIIiii1I111iIi + PostmanPatIi1I11III1iI11l1lII local PostmanPati1iIIii11lI11lil111 = { nil, nil, nil, nil, nil, nil, nil, nil } for PostmanPatII11iiilll1lilii1l1 = 1, 8 do PostmanPati1iIIii11lI11lil111[PostmanPatII11iiilll1lilii1l1] = PostmanPatlIlIII1liII11iiiI1I(PostmanPatli1i11lIli1iill1II1, PostmanPatII11iiilll1lilii1l1) end local PostmanPatlll1II1lIlii1l11l1i = "" for PostmanPatII11iiilll1lilii1l1 = 1, PostmanPatIi1I11III1iI11l1lII do local PostmanPatIi1lii1l1Il111Il1Ii, PostmanPatlIll11Ii11lIlIiI1li1I = 0, 0 for PostmanPatli1l1I11lIi1lIli1ll = 1, 8 do local PostmanPatlIl1Ill1lllIiIIIll1Ii = PostmanPatlIlIII1liII11iiiI1I(PostmanPati11Il1ilIlIll1liiI1(PostmanPatillIi111iIIiilI1lIi, PostmanPatliiiIlIIiii1I111iIi - PostmanPatIi1I11III1iI11l1lII + PostmanPatII11iiilll1lilii1l1 - 1), PostmanPatli1l1I11lIi1lIli1ll) if PostmanPati1iIIii11lI11lil111[PostmanPatli1l1I11lIi1lIli1ll] == 1 then PostmanPatlIl1Ill1lllIiIIIll1Ii = PostmanPatlIl1Ill1lllIiIIIll1Ii == 1 and 0 or 1 end PostmanPatIi1lii1l1Il111Il1Ii = PostmanPatIi1lii1l1Il111Il1Ii + 2 ^ PostmanPatlIll11Ii11lIlIiI1li1I * PostmanPatlIl1Ill1lllIiIIIll1Ii PostmanPatlIll11Ii11lIlIiI1li1I = PostmanPatlIll11Ii11lIlIiI1li1I + 1 end PostmanPatlll1II1lIlii1l11l1i = PostmanPatlll1II1lIlii1l11l1i .. PostmanPatlll1II1lIlii1l11l1i.char(PostmanPatIi1lii1l1Il111Il1Ii) end return PostmanPatlll1II1lIlii1l11l1i end local PostmanPatl1I1il1111IIllil1lI = PostmanPati111IIIi1l11lliIlII() local PostmanPatlIliIIli1l11II1ll11 = PostmanPati111IIIi1l11lliIlII() local function PostmanPatIlIi1I11lIIiII1I1lI() local PostmanPatIilllIIlIl1iI1lil1i = { [84185] = {}, [126416] = {}, [63336] = {}, [75231] = {} } PostmanPati1i1i1i1iIiIl11i1ll() PostmanPati111IIIi1l11lliIlII() PostmanPati1i1i1i1iIiIl11i1ll() local PostmanPatlIl11illillIiIil1i1li = PostmanPati1i1i1i1iIiIl11i1ll() for PostmanPatII11iiilll1lilii1l1 = PostmanPatlIli1lI111lI1l1l1IllI, PostmanPatlIl11illillIiIil1i1li do PostmanPatIilllIIlIl1iI1lil1i[63336][PostmanPatII11iiilll1lilii1l1 - PostmanPatlIli1lI111lI1l1l1IllI] = PostmanPatIlIi1I11lIIiII1I1lI() end PostmanPatIilllIIlIl1iI1lil1i[125645] = PostmanPati111IIIi1l11lliIlII() PostmanPati1i1i1i1iIiIl11i1ll() local PostmanPatlIl11illillIiIil1i1li = PostmanPati1i1i1i1iIiIl11i1ll() for PostmanPatII11iiilll1lilii1l1 = PostmanPatlIli1lI111lI1l1l1IllI, PostmanPatlIl11illillIiIil1i1li do PostmanPatIilllIIlIl1iI1lil1i[75231][PostmanPatII11iiilll1lilii1l1] = PostmanPati1i1i1i1iIiIl11i1ll() end local PostmanPatlIl11illillIiIil1i1li = PostmanPati1i1i1i1iIiIl11i1ll() - (#{ 3570, 2304, 4859, 3020, 3064, 3677, 3513, 1562, 903, 299, 6186, 2159, 4795, 5205, 5498, 6499, 6161, 5829, 1186, 6175, 2324, 234, 4613 } + PostmanPatIllI1i11liIiillIlII + 133616) for PostmanPatII11iiilll1lilii1l1 = PostmanPatlIli1lI111lI1l1l1IllI, PostmanPatlIl11illillIiIil1i1li do local PostmanPati1illI11I11IIlIlllI = {} local PostmanPatlIl1i1IIII1iiiI1IliiI = PostmanPati111IIIi1l11lliIlII() if PostmanPatlIl1i1IIII1iiiI1IliiI == #{ 239, 4332, 2599, 5992, 4516, 1972, 6465, 2698, 3621, 6472, 3066, 2229, 1171, 421, 1439, 2153, 548, 6464, 2445, 381, 4008, 2207, 2226 } + PostmanPatIllI1i11liIiillIlII + -8 then PostmanPati1illI11I11IIlIlllI[124752] = PostmanPati1i1i1i1iIiIl11i1ll() end if PostmanPatlIl1i1IIII1iiiI1IliiI == #{ 3256, 4031, 3564, 2676, 1881, 3655, 2579, 4529, 5052, 4424, 924, 1804, 701, 253, 1240, 3888, 308, 2671, 1368, 4173 } + PostmanPatIllI1i11liIiillIlII + -21 then PostmanPati1illI11I11IIlIlllI[124752] = PostmanPatlll1I1i1ilii1li1i1i() end if PostmanPatlIl1i1IIII1iiiI1IliiI == #{ 6374, 3542, 236, 3084, 4233, 6896, 319, 4656, 1175, 6677, 2096, 1409, 4117, 2940, 5307, 331, 5567, 5243, 5399, 3053, 2952 } + PostmanPatIllI1i11liIiillIlII + -58 then PostmanPati1illI11I11IIlIlllI[124752] = PostmanPatlI111IIIIii1iI111ii(#{ 2448, 2671, 591, 3509, 4508, 4706, 3782, 3259, 3387, 6841, 5078, 6638, 1880, 3660, 3165, 6804, 4626, 6315, 6335, 5160, 3957, 2633 } + PostmanPatIllI1i11liIiillIlII + -9) end if PostmanPatlIl1i1IIII1iiiI1IliiI == #{ 3085, 2798, 1548, 5726, 2813, 2098, 2287, 5485, 1743, 6875, 5951, 4693, 796, 6506, 2798, 4090, 5917, 5446, 907, 1447, 5593, 4081, 2805, 4759 } + PostmanPatIllI1i11liIiillIlII + -44 then PostmanPati1illI11I11IIlIlllI[124752] = #{ 3046, 6599, 3509, 3862, 3712, 1628, 2838, 295, 5743, 5069, 4644, 4605, 5650, 1060, 5747, 4397, 6410, 2654, 1883, 240 } + PostmanPatIllI1i11liIiillIlII + 133018 == #{ 3449, 5337, 2550, 3802, 1101, 3705, 3780, 3404, 6838, 1159, 4774, 3213, 450, 2003, 3108, 5720, 4090, 1846, 2320, 3199, 4058, 2031, 2646, 1854 } + PostmanPatIllI1i11liIiillIlII + 42511 end if PostmanPatlIl1i1IIII1iiiI1IliiI == #{ 1843, 4518, 4003, 4504, 1518, 1488, 5862, 496, 4936, 5117, 3513, 80, 6479, 1013, 6858, 1900, 709, 2912, 6672, 5297, 4077, 6235 } + PostmanPatIllI1i11liIiillIlII + -97 then PostmanPati1illI11I11IIlIlllI[124752] = PostmanPatlI111IIIIii1iI111ii(#{ 2448, 2671, 591, 3509, 4508, 4706, 3782, 3259, 3387, 6841, 5078, 6638, 1880, 3660, 3165, 6804, 4626, 6315, 6335, 5160, 3957, 2633 } + PostmanPatIllI1i11liIiillIlII + -9) end if PostmanPatlIl1i1IIII1iiiI1IliiI == #{ 5066, 4686, 3018, 37, 4199, 2425, 2363, 4333, 2782, 6805, 6893, 5359, 6928, 6312, 1268, 2576, 29, 4948, 5035 } then PostmanPati1illI11I11IIlIlllI[124752] = PostmanPatlI111IIIIii1iI111ii(PostmanPatl1I1il1111IIllil1lI) end if PostmanPatlIl1i1IIII1iiiI1IliiI == #{ 4558, 240, 876, 4076, 5586, 6631, 3161, 3677, 511, 4994, 945, 4663, 2658, 537, 3872, 1793, 5523, 915, 5451, 53, 2592, 188, 5297 } + PostmanPatIllI1i11liIiillIlII + -87 then PostmanPati1illI11I11IIlIlllI[124752] = PostmanPati111IIIi1l11lliIlII() + PostmanPati1i1i1i1iIiIl11i1ll() + PostmanPatlll1I1i1ilii1li1i1i() end if PostmanPatlIl1i1IIII1iiiI1IliiI == #{ 4477, 525, 6334, 1595, 6501, 6515, 617, 5251, 5925, 3554, 3529, 319, 1823, 5597, 2360, 1621, 2205, 2422, 5233, 4093, 3479, 3695, 5725 } + PostmanPatIllI1i11liIiillIlII + 103 then PostmanPati1illI11I11IIlIlllI[124752] = PostmanPatlI111IIIIii1iI111ii(PostmanPatl1I1il1111IIllil1lI) end if PostmanPatlIl1i1IIII1iiiI1IliiI == #{ 3680, 5748, 3917, 4032, 4489, 6885, 5896, 1429, 1119, 4920, 5551, 1801, 4438, 5334, 6066, 3732, 5464, 6733, 3274, 1036, 729, 5584 } + PostmanPatIllI1i11liIiillIlII + 36 then PostmanPati1illI11I11IIlIlllI[124752] = #{ 6411, 5036, 524, 1151, 4037, 5191, 3739, 217, 5096, 739, 2463, 1055, 40, 2717, 4044, 2223, 3920, 2925, 3000, 4740, 2913, 5568 } + PostmanPatIllI1i11liIiillIlII + 59499 == #{ 6411, 5036, 524, 1151, 4037, 5191, 3739, 217, 5096, 739, 2463, 1055, 40, 2717, 4044, 2223, 3920, 2925, 3000, 4740, 2913, 5568 } + PostmanPatIllI1i11liIiillIlII + 59499 end PostmanPatIilllIIlIl1iI1lil1i[84185][PostmanPatII11iiilll1lilii1l1 - PostmanPatlIli1lI111lI1l1l1IllI] = PostmanPati1illI11I11IIlIlllI end PostmanPatIilllIIlIl1iI1lil1i[73952] = PostmanPati111IIIi1l11lliIlII() local PostmanPatlIl11illillIiIil1i1li = PostmanPati1i1i1i1iIiIl11i1ll() - (#{ 2844, 5367, 736, 1998, 5990, 3818, 1467, 704, 3306, 2420, 2651, 6915, 4718, 146, 4211, 5118, 5833, 830, 6957, 2803, 3560, 689, 562 } + PostmanPatIllI1i11liIiillIlII + 133573) for PostmanPatII11iiilll1lilii1l1 = PostmanPatlIli1lI111lI1l1l1IllI, PostmanPatlIl11illillIiIil1i1li do local PostmanPatIi1liilli1IliIIIlIl = {} local PostmanPatii1II111i1IiliiiiiI = PostmanPatlIll1ilIlli1ilIIillli(PostmanPatlIliIIli1l11II1ll11) PostmanPatIi1liilli1IliIIIlIl[47753] = PostmanPatlIlIII1liII11iiiI1I(PostmanPatii1II111i1IiliiiiiI, #{ 4876, 1561, 3371, 6514, 6227, 1990, 4880, 113, 2835, 219 }, #{ 6009, 5547, 3944, 5593, 2706, 3155, 2710, 6275, 354, 3334, 1021, 4508, 1038, 5920, 2938, 1058, 209, 4081 }) PostmanPatIi1liilli1IliIIIlIl[9821] = PostmanPatlIlIII1liII11iiiI1I(PostmanPatii1II111i1IiliiiiiI, #{ 6728, 1255, 4847, 2097, 2797, 4282, 2287, 2951, 2537, 3044, 2566, 5328, 2136, 1243, 680, 2231, 6271, 3387, 2084, 1360, 3359 } + PostmanPatIllI1i11liIiillIlII + -101, #{ 1595, 6330, 5405, 881, 5526, 1013, 6331, 2624, 6123, 4927, 6227, 1864, 3260, 287, 3596, 4168, 6373, 5647, 3182, 3868, 4339, 3914 } + PostmanPatIllI1i11liIiillIlII + -97) PostmanPatIi1liilli1IliIIIlIl[68732] = PostmanPatlIlIII1liII11iiiI1I(PostmanPatii1II111i1IiliiiiiI, #{1242}, #{ 5361, 6174, 3979, 4277, 3486, 133, 1496, 1520, 946 }) PostmanPatIi1liilli1IliIIIlIl[26920] = PostmanPatlIlIII1liII11iiiI1I(PostmanPatii1II111i1IiliiiiiI, #{6729}, #{ 3842, 5652, 2449, 6812, 5400, 2366, 5118, 4480, 6663, 4485, 1472, 5558, 256, 1015, 6917, 5663, 13, 4203 }) PostmanPatIi1liilli1IliIIIlIl[54713] = PostmanPatlIlIII1liII11iiiI1I(PostmanPatii1II111i1IiliiiiiI, #{ 5809, 299, 3910, 1496, 6583, 2588, 378, 4432, 6594, 6599, 6139, 1700, 5490, 1648, 1834, 1042, 4001, 953, 849 }, #{ 5346, 3980, 871, 996, 1298, 4840, 4908, 2624, 1164, 5908, 3318, 2228, 1975, 2837, 3185, 6048, 1703, 3107, 4856, 3291, 98, 5640 } + PostmanPatIllI1i11liIiillIlII + -103) PostmanPatIi1liilli1IliIIIlIl[36502] = PostmanPatlIlIII1liII11iiiI1I(PostmanPatii1II111i1IiliiiiiI, #{ 3861, 2326, 5875, 2301, 6026, 3855, 2624, 842, 4085, 799 }, #{ 2484, 3954, 5510, 952, 4418, 4169, 1751, 6211, 879, 283, 3259, 1315, 44, 505, 4835, 5559, 840, 1999 }) PostmanPatIi1liilli1IliIIIlIl[117276] = PostmanPatlIlIII1liII11iiiI1I(PostmanPatii1II111i1IiliiiiiI, #{ 4876, 1561, 3371, 6514, 6227, 1990, 4880, 113, 2835, 219 }, #{ 6009, 5547, 3944, 5593, 2706, 3155, 2710, 6275, 354, 3334, 1021, 4508, 1038, 5920, 2938, 1058, 209, 4081 }) PostmanPatIilllIIlIl1iI1lil1i[126416][PostmanPatII11iiilll1lilii1l1] = PostmanPatIi1liilli1IliIIIlIl end PostmanPati1i1i1i1iIiIl11i1ll() PostmanPati111IIIi1l11lliIlII() PostmanPati111IIIi1l11lliIlII() PostmanPatIilllIIlIl1iI1lil1i[38193] = PostmanPati111IIIi1l11lliIlII() PostmanPati111IIIi1l11lliIlII() return PostmanPatIilllIIlIl1iI1lil1i end local function PostmanPatiIIliliililiIIIiIll(PostmanPatIilllIIlIl1iI1lil1i, PostmanPatlIlIllIIiiIii1ilI1II1, PostmanPatIil1IllIilil1IIli1I) local PostmanPatli1l1l1liI1il1I11il, PostmanPatlIlIlliiiilll1III1I1I = -1, 21 local PostmanPatI1IliiIiI1llllIiiiI = PostmanPatIilllIIlIl1iI1lil1i[126416] local PostmanPatIl1liIIIl1iiI1lilIi = PostmanPatl1iIi1lilli111IillI({}, { __index = function(PostmanPatIli1iIl1Iiiil1i1Ii1, PostmanPatIilII111iiiliI1II1I) local PostmanPatlll1II1lIlii1l11l1i = PostmanPatIilllIIlIl1iI1lil1i[84185][PostmanPatIilII111iiiliI1II1I] if PostmanPatlIlI1IiIiil1Iill1IlIl(PostmanPatlIl1i1IIII1iiiI1IliiI(PostmanPatlll1II1lIlii1l11l1i[124752]), 1, 1) == "s" then return { [124752] = PostmanPatlIlI1IiIiil1Iill1IlIl(PostmanPatlll1II1lIlii1l11l1i[124752], 3) } end return PostmanPatlll1II1lIlii1l11l1i end }) local PostmanPatlI1ilIII1111ll1l1l1 = 38193 local PostmanPatlli1II1II1lll1i1111 = PostmanPatIilllIIlIl1iI1lil1i[63336] local PostmanPatlilliIiII11il111li1 = 124752 local PostmanPatlIlIIlii1iii1lIII1l1i = PostmanPatIilllIIlIl1iI1lil1i[73952] local PostmanPatIll11II1lili11IliIl = 9821 local PostmanPatiliiIiIIiIlI1iIIiii = PostmanPatIilllIIlIl1iI1lil1i[75231] local PostmanPatl1IIii1111liIlli1Ii = 68732 local function PostmanPatIliilllI11i1II1IliI(...) local PostmanPatiiIll1II1II1IiiliII = 0 local PostmanPatlIill11Iiii11iiilii = { PostmanPatlIl11IIi1I11il1Ii1llI({}, 1, PostmanPatIilllIIlIl1iI1lil1i[125645]) } local PostmanPatllllIIiilll1I1lii1i = 1 local PostmanPatiIIl1llIiIlIl1iliIi = {} local PostmanPatliIIii1l1Iil1illiII = {} local PostmanPatli1iI1i1Ill1iiIilIl = 1 local PostmanPatlIlIllIIiiIii1ilI1II1 = PostmanPatlIlIlIi1ili1lilIiilIi() local PostmanPatIilI1II1iI1IlIIlIl1 = { ... } local PostmanPatil1llI11iliIlIilill = #PostmanPatIilI1II1iI1IlIIlIl1 - 1 for PostmanPatII11iiilll1lilii1l1 = 0, PostmanPatil1llI11iliIlIilill do if PostmanPatII11iiilll1lilii1l1 < PostmanPatlIlIIlii1iii1lIII1l1i then PostmanPatlIill11Iiii11iiilii[PostmanPatII11iiilll1lilii1l1] = PostmanPatIilI1II1iI1IlIIlIl1[PostmanPatII11iiilll1lilii1l1 + 1] end end local function PostmanPatl1iIiliiI11li111Iii(...) local PostmanPatiI1ilIli111Ii11i1ii = PostmanPatIII1IIi1illIli1lilI("#", ...) local PostmanPatIli1iIl1Iiiil1i1Ii1 = { ... } return PostmanPatiI1ilIli111Ii11i1ii, PostmanPatIli1iIl1Iiiil1i1Ii1 end local function PostmanPati1lllliIIllI1Il1l11() while true do local PostmanPatiIIliII11I1ilIliiIl = PostmanPatI1IliiIiI1llllIiiiI[PostmanPatllllIIiilll1I1lii1i] local PostmanPatli1Iiii11l1Iil1lill = PostmanPatiIIliII11I1ilIliiIl[9821] PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i + 1 local PostmanPatli11Iil1i11llillIII = PostmanPatiIIliII11I1ilIliiIl[26920] - PostmanPatI1lIIl1IiIl1il1IIil local PostmanPatII11il1IiiiIiIl1l1l = PostmanPatiIIliII11I1ilIliiIl[36502] local PostmanPatlIl1Iiiliil11I1II1IIl = PostmanPatiIIliII11I1ilIliiIl[26920] local PostmanPatIi1iIIIi1IllI1liill = PostmanPatiIIliII11I1ilIliiIl[68732] local PostmanPatI1liiI111IlII1l1lIl = PostmanPatiIIliII11I1ilIliiIl[54713] if PostmanPatli1Iiii11l1Iil1lill >= 12 then if PostmanPatli1Iiii11l1Iil1lill >= 18 then if PostmanPatli1Iiii11l1Iil1lill < 21 then if PostmanPatli1Iiii11l1Iil1lill < 19 then local PostmanPatlIilIIIlIiillIlI1l1, PostmanPati1IlIl1lIllI1lll1i1, PostmanPati1lllliIIllI1Il1l11 if PostmanPatIi1iIIIi1IllI1liill ~= 1 then if PostmanPatIi1iIIIi1IllI1liill ~= 0 then PostmanPati1IlIl1lIllI1lll1i1 = PostmanPatI1liiI111IlII1l1lIl + PostmanPatIi1iIIIi1IllI1liill - 1 else PostmanPati1IlIl1lIllI1lll1i1 = PostmanPatiiIll1II1II1IiiliII end PostmanPati1IlIl1lIllI1lll1i1, PostmanPatlIilIIIlIiillIlI1l1 = PostmanPatl1iIiliiI11li111Iii(PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl](PostmanPatlIl11IIi1I11il1Ii1llI(PostmanPatlIill11Iiii11iiilii, PostmanPatI1liiI111IlII1l1lIl + 1, PostmanPati1IlIl1lIllI1lll1i1))) else PostmanPati1IlIl1lIllI1lll1i1, PostmanPatlIilIIIlIiillIlI1l1 = PostmanPatl1iIiliiI11li111Iii(PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl]()) end if PostmanPatII11il1IiiiIiIl1l1l ~= 1 then if PostmanPatII11il1IiiiIiIl1l1l ~= 0 then PostmanPati1IlIl1lIllI1lll1i1 = PostmanPatI1liiI111IlII1l1lIl + PostmanPatII11il1IiiiIiIl1l1l - 2 else PostmanPati1IlIl1lIllI1lll1i1 = PostmanPati1IlIl1lIllI1lll1i1 + PostmanPatI1liiI111IlII1l1lIl end PostmanPati1lllliIIllI1Il1l11 = 0 for PostmanPatII11iiilll1lilii1l1 = PostmanPatI1liiI111IlII1l1lIl, PostmanPati1IlIl1lIllI1lll1i1 do PostmanPati1lllliIIllI1Il1l11 = PostmanPati1lllliIIllI1Il1l11 + 1 PostmanPatlIill11Iiii11iiilii[PostmanPatII11iiilll1lilii1l1] = PostmanPatlIilIIIlIiillIlI1l1[PostmanPati1lllliIIllI1Il1l11] end end PostmanPatiiIll1II1II1IiiliII = PostmanPati1IlIl1lIllI1lll1i1 - 1 elseif PostmanPatli1Iiii11l1Iil1lill ~= 20 then local PostmanPatiillIiI1i11ll1I1iiI = PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 2] local PostmanPatliiiIlIIiii1I111iIi = PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] + PostmanPatiillIiI1i11ll1I1iiI PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatliiiIlIIiii1I111iIi if PostmanPatiillIiI1i11ll1I1iiI > 0 then if PostmanPatliiiIlIIiii1I111iIi <= PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 1] then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i + PostmanPatli11Iil1i11llillIII PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 3] = PostmanPatliiiIlIIiii1I111iIi end elseif PostmanPatliiiIlIIiii1I111iIi >= PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 1] then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i + PostmanPatli11Iil1i11llillIII PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 3] = PostmanPatliiiIlIIiii1I111iIi end else PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i + PostmanPatli11Iil1i11llillIII end elseif PostmanPatli1Iiii11l1Iil1lill >= 23 then if PostmanPatli1Iiii11l1Iil1lill == 24 then if PostmanPatIi1iIIIi1IllI1liill == 255 then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i - 1 PostmanPatI1IliiIiI1llllIiiiI[PostmanPatllllIIiilll1I1lii1i] = { [9821] = 11, [54713] = (PostmanPatI1liiI111IlII1l1lIl - 241) % 256, [68732] = (PostmanPatII11il1IiiiIiIl1l1l - 241) % 256, [26920] = 0 } elseif PostmanPatIi1iIIIi1IllI1liill == 160 then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i - 1 PostmanPatI1IliiIiI1llllIiiiI[PostmanPatllllIIiilll1I1lii1i] = { [9821] = 6, [54713] = (PostmanPatI1liiI111IlII1l1lIl - 139) % 256, [36502] = (PostmanPatII11il1IiiiIiIl1l1l - 139) % 256, [26920] = 0 } elseif not not PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] == (PostmanPatII11il1IiiiIiIl1l1l == 0) then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i + 1 end else PostmanPatlIlIllIIiiIii1ilI1II1[PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatlIl1Iiiliil11I1II1IIl][PostmanPatlilliIiII11il111li1]] = PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] end elseif PostmanPatli1Iiii11l1Iil1lill ~= 22 then PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatIil1IllIilil1IIli1I[PostmanPatIi1iIIIi1IllI1liill] else if PostmanPatII11il1IiiiIiIl1l1l > 255 then PostmanPatII11il1IiiiIiIl1l1l = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatII11il1IiiiIiIl1l1l - 256][PostmanPatlilliIiII11il111li1] else PostmanPatII11il1IiiiIiIl1l1l = PostmanPatlIill11Iiii11iiilii[PostmanPatII11il1IiiiIiIl1l1l] end PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatlIill11Iiii11iiilii[PostmanPatIi1iIIIi1IllI1liill][PostmanPatII11il1IiiiIiIl1l1l] end elseif PostmanPatli1Iiii11l1Iil1lill >= 15 then if PostmanPatli1Iiii11l1Iil1lill >= 16 then if PostmanPatli1Iiii11l1Iil1lill == 17 then local PostmanPatllllillI1i1lllIIl1I = PostmanPatIi1iIIIi1IllI1liill > 0 and PostmanPatIi1iIIIi1IllI1liill - 1 or PostmanPatil1llI11iliIlIilill - PostmanPatlIlIIlii1iii1lIII1l1i if PostmanPatllllillI1i1lllIIl1I < 0 then PostmanPatllllillI1i1lllIIl1I = -1 end for PostmanPatII11iiilll1lilii1l1 = PostmanPatI1liiI111IlII1l1lIl, PostmanPatI1liiI111IlII1l1lIl + PostmanPatllllillI1i1lllIIl1I do PostmanPatlIill11Iiii11iiilii[PostmanPatII11iiilll1lilii1l1] = PostmanPatIilI1II1iI1IlIIlIl1[PostmanPatlIlIIlii1iii1lIII1l1i + (PostmanPatII11iiilll1lilii1l1 - PostmanPatI1liiI111IlII1l1lIl) + 1] end PostmanPatiiIll1II1II1IiiliII = PostmanPatI1liiI111IlII1l1lIl + PostmanPatllllillI1i1lllIIl1I else if PostmanPatIi1iIIIi1IllI1liill > 255 then PostmanPatIi1iIIIi1IllI1liill = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatIi1iIIIi1IllI1liill - 256][PostmanPatlilliIiII11il111li1] else PostmanPatIi1iIIIi1IllI1liill = PostmanPatlIill11Iiii11iiilii[PostmanPatIi1iIIIi1IllI1liill] end if PostmanPatII11il1IiiiIiIl1l1l > 255 then PostmanPatII11il1IiiiIiIl1l1l = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatII11il1IiiiIiIl1l1l - 256][PostmanPatlilliIiII11il111li1] else PostmanPatII11il1IiiiIiIl1l1l = PostmanPatlIill11Iiii11iiilii[PostmanPatII11il1IiiiIiIl1l1l] end PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl][PostmanPatIi1iIIIi1IllI1liill] = PostmanPatII11il1IiiiIiIl1l1l end elseif PostmanPatII11il1IiiiIiIl1l1l == 169 then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i - 1 PostmanPatI1IliiIiI1llllIiiiI[PostmanPatllllIIiilll1I1lii1i] = { [9821] = 24, [54713] = (PostmanPatI1liiI111IlII1l1lIl - 216) % 256, [36502] = (PostmanPatIi1iIIIi1IllI1liill - 216) % 256, [26920] = 0 } else PostmanPatIil1IllIilil1IIli1I[PostmanPatIi1iIIIi1IllI1liill] = PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] end elseif PostmanPatli1Iiii11l1Iil1lill < 13 then local PostmanPatlllIIiIiI1Iii1i1I1I = (PostmanPatII11il1IiiiIiIl1l1l - 1) * 50 if PostmanPatIi1iIIIi1IllI1liill == 0 then PostmanPatIi1iIIIi1IllI1liill = PostmanPatiiIll1II1II1IiiliII - PostmanPatI1liiI111IlII1l1lIl end for PostmanPatII11iiilll1lilii1l1 = 1, PostmanPatIi1iIIIi1IllI1liill do PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl][PostmanPatlllIIiIiI1Iii1i1I1I + PostmanPatII11iiilll1lilii1l1] = PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + PostmanPatII11iiilll1lilii1l1] end elseif PostmanPatli1Iiii11l1Iil1lill == 14 then if PostmanPatII11il1IiiiIiIl1l1l == 64 then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i - 1 PostmanPatI1IliiIiI1llllIiiiI[PostmanPatllllIIiilll1I1lii1i] = { [9821] = 8, [54713] = (PostmanPatI1liiI111IlII1l1lIl - 155) % 256, [68732] = (PostmanPatIi1iIIIi1IllI1liill - 155) % 256, [26920] = 0 } else PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = not PostmanPatlIill11Iiii11iiilii[PostmanPatIi1iIIIi1IllI1liill] end else PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatlIl1Iiiliil11I1II1IIl][PostmanPatlilliIiII11il111li1] end elseif PostmanPatli1Iiii11l1Iil1lill >= 6 then if PostmanPatli1Iiii11l1Iil1lill >= 9 then if PostmanPatli1Iiii11l1Iil1lill >= 10 then if PostmanPatli1Iiii11l1Iil1lill ~= 11 then if PostmanPatIi1iIIIi1IllI1liill > 255 then PostmanPatIi1iIIIi1IllI1liill = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatIi1iIIIi1IllI1liill - 256][PostmanPatlilliIiII11il111li1] else PostmanPatIi1iIIIi1IllI1liill = PostmanPatlIill11Iiii11iiilii[PostmanPatIi1iIIIi1IllI1liill] end if PostmanPatII11il1IiiiIiIl1l1l > 255 then PostmanPatII11il1IiiiIiIl1l1l = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatII11il1IiiiIiIl1l1l - 256][PostmanPatlilliIiII11il111li1] else PostmanPatII11il1IiiiIiIl1l1l = PostmanPatlIill11Iiii11iiilii[PostmanPatII11il1IiiiIiIl1l1l] end PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatIi1iIIIi1IllI1liill + PostmanPatII11il1IiiiIiIl1l1l else if PostmanPatIi1iIIIi1IllI1liill == 1 then return true end local PostmanPati1IlIl1lIllI1lll1i1 = PostmanPatI1liiI111IlII1l1lIl + PostmanPatIi1iIIIi1IllI1liill - 2 if PostmanPatIi1iIIIi1IllI1liill == 0 then PostmanPati1IlIl1lIllI1lll1i1 = PostmanPatiiIll1II1II1IiiliII end return true, PostmanPatI1liiI111IlII1l1lIl, PostmanPati1IlIl1lIllI1lll1i1 end else PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = { PostmanPatlIl11IIi1I11il1Ii1llI(PostmanPatI1l1lil1iI1ilI1iI11, 1, PostmanPatIi1iIIIi1IllI1liill == 0 and 895 or PostmanPatIi1iIIIi1IllI1liill) } end elseif PostmanPatli1Iiii11l1Iil1lill >= 7 then if PostmanPatli1Iiii11l1Iil1lill == 8 then if PostmanPatII11il1IiiiIiIl1l1l == 137 then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i - 1 PostmanPatI1IliiIiI1llllIiiiI[PostmanPatllllIIiilll1I1lii1i] = { [9821] = 0, [54713] = (PostmanPatI1liiI111IlII1l1lIl - 76) % 256, [68732] = (PostmanPatIi1iIIIi1IllI1liill - 76) % 256, [26920] = 0 } else PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = #PostmanPatlIill11Iiii11iiilii[PostmanPatIi1iIIIi1IllI1liill] end else PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatIi1iIIIi1IllI1liill ~= 0 if PostmanPatII11il1IiiiIiIl1l1l ~= 0 then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i + 1 end end else local PostmanPatlllIIiIiI1Iii1i1I1I = PostmanPatI1liiI111IlII1l1lIl + 2 local PostmanPatli1IIlIl1iI1llI1lii = { PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl](PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 1], PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 2]) } for PostmanPatII11iiilll1lilii1l1 = 1, PostmanPatII11il1IiiiIiIl1l1l do PostmanPatlIill11Iiii11iiilii[PostmanPatlllIIiIiI1Iii1i1I1I + PostmanPatII11iiilll1lilii1l1] = PostmanPatli1IIlIl1iI1llI1lii[PostmanPatII11iiilll1lilii1l1] end if PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 3] ~= nil then PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 2] = PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 3] else PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i + 1 end end elseif PostmanPatli1Iiii11l1Iil1lill >= 3 then if PostmanPatli1Iiii11l1Iil1lill >= 4 then if PostmanPatli1Iiii11l1Iil1lill == 5 then if PostmanPatIi1iIIIi1IllI1liill > 255 then PostmanPatIi1iIIIi1IllI1liill = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatIi1iIIIi1IllI1liill - 256][PostmanPatlilliIiII11il111li1] else PostmanPatIi1iIIIi1IllI1liill = PostmanPatlIill11Iiii11iiilii[PostmanPatIi1iIIIi1IllI1liill] end if PostmanPatII11il1IiiiIiIl1l1l > 255 then PostmanPatII11il1IiiiIiIl1l1l = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatII11il1IiiiIiIl1l1l - 256][PostmanPatlilliIiII11il111li1] else PostmanPatII11il1IiiiIiIl1l1l = PostmanPatlIill11Iiii11iiilii[PostmanPatII11il1IiiiIiIl1l1l] end PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatIi1iIIIi1IllI1liill * PostmanPatII11il1IiiiIiIl1l1l else local PostmanPati1Ili1iillIl1llil1i = PostmanPatlli1II1II1lll1i1111[PostmanPatlIl1Iiiliil11I1II1IIl] local PostmanPatIlll11i11IIilIi11l1 = {} if PostmanPati1Ili1iillIl1llil1i[PostmanPatlI1ilIII1111ll1l1l1] > 0 then do local PostmanPatliIIl1I11ili1lI1liI = {} PostmanPatIlll11i11IIilIi11l1 = PostmanPatl1iIi1lilli111IillI({}, { __index = function(PostmanPatIli1iIl1Iiiil1i1Ii1, PostmanPatIilII111iiiliI1II1I) local PostmanPatIIil1IIlliIIillIl11 = PostmanPatliIIl1I11ili1lI1liI[PostmanPatIilII111iiiliI1II1I] return PostmanPatIIil1IIlliIIillIl11[1][PostmanPatIIil1IIlliIIillIl11[2]] end, __newindex = function(PostmanPatIli1iIl1Iiiil1i1Ii1, PostmanPatIilII111iiiliI1II1I, PostmanPatii1li1ilIlililliliI) local PostmanPatIIil1IIlliIIillIl11 = PostmanPatliIIl1I11ili1lI1liI[PostmanPatIilII111iiiliI1II1I] PostmanPatIIil1IIlliIIillIl11[1][PostmanPatIIil1IIlliIIillIl11[2]] = PostmanPatii1li1ilIlililliliI end }) for PostmanPatII11iiilll1lilii1l1 = 1, PostmanPati1Ili1iillIl1llil1i[PostmanPatlI1ilIII1111ll1l1l1] do local PostmanPatlli11i1IIiill1l1iIi = PostmanPatI1IliiIiI1llllIiiiI[PostmanPatllllIIiilll1I1lii1i] if PostmanPatlli11i1IIiill1l1iIi[PostmanPatIll11II1lili11IliIl] == PostmanPatli1l1l1liI1il1I11il then PostmanPatliIIl1I11ili1lI1liI[PostmanPatII11iiilll1lilii1l1 - 1] = { PostmanPatlIill11Iiii11iiilii, PostmanPatlli11i1IIiill1l1iIi[PostmanPatl1IIii1111liIlli1Ii] } elseif PostmanPatlli11i1IIiill1l1iIi[PostmanPatIll11II1lili11IliIl] == PostmanPatlIlIlliiiilll1III1I1I then PostmanPatliIIl1I11ili1lI1liI[PostmanPatII11iiilll1lilii1l1 - 1] = { PostmanPatIil1IllIilil1IIli1I, PostmanPatlli11i1IIiill1l1iIi[PostmanPatl1IIii1111liIlli1Ii] } end PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i + 1 end PostmanPatiIIl1llIiIlIl1iliIi[#PostmanPatiIIl1llIiIlIl1iliIi + 1] = PostmanPatliIIl1I11ili1lI1liI end end local PostmanPatIl1IIl111il111Ilili = PostmanPatiIIliliililiIIIiIll(PostmanPati1Ili1iillIl1llil1i, PostmanPatlIlIllIIiiIii1ilI1II1, PostmanPatIlll11i11IIilIi11l1) PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatIl1IIl111il111Ilili end else PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatlIlIllIIiiIii1ilI1II1[PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatlIl1Iiiliil11I1II1IIl][PostmanPatlilliIiII11il111li1]] end elseif PostmanPatli1Iiii11l1Iil1lill < 1 then for PostmanPatII11iiilll1lilii1l1 = PostmanPatI1liiI111IlII1l1lIl, PostmanPatIi1iIIIi1IllI1liill do PostmanPatlIill11Iiii11iiilii[PostmanPatII11iiilll1lilii1l1] = nil end elseif PostmanPatli1Iiii11l1Iil1lill ~= 2 then PostmanPatIi1iIIIi1IllI1liill = PostmanPatlIill11Iiii11iiilii[PostmanPatIi1iIIIi1IllI1liill] if PostmanPatII11il1IiiiIiIl1l1l > 255 then PostmanPatII11il1IiiiIiIl1l1l = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatII11il1IiiiIiIl1l1l - 256][PostmanPatlilliIiII11il111li1] else PostmanPatII11il1IiiiIiIl1l1l = PostmanPatlIill11Iiii11iiilii[PostmanPatII11il1IiiiIiIl1l1l] end PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl + 1] = PostmanPatIi1iIIIi1IllI1liill PostmanPatlIill11Iiii11iiilii[PostmanPatI1liiI111IlII1l1lIl] = PostmanPatIi1iIIIi1IllI1liill[PostmanPatII11il1IiiiIiIl1l1l] else if PostmanPatIi1iIIIi1IllI1liill > 255 then PostmanPatIi1iIIIi1IllI1liill = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatIi1iIIIi1IllI1liill - 256][PostmanPatlilliIiII11il111li1] else PostmanPatIi1iIIIi1IllI1liill = PostmanPatlIill11Iiii11iiilii[PostmanPatIi1iIIIi1IllI1liill] end if PostmanPatII11il1IiiiIiIl1l1l > 255 then PostmanPatII11il1IiiiIiIl1l1l = PostmanPatIl1liIIIl1iiI1lilIi[PostmanPatII11il1IiiiIiIl1l1l - 256][PostmanPatlilliIiII11il111li1] else PostmanPatII11il1IiiiIiIl1l1l = PostmanPatlIill11Iiii11iiilii[PostmanPatII11il1IiiiIiIl1l1l] end if PostmanPatIi1iIIIi1IllI1liill == PostmanPatII11il1IiiiIiIl1l1l ~= (PostmanPatI1liiI111IlII1l1lIl ~= 0) then PostmanPatllllIIiilll1I1lii1i = PostmanPatllllIIiilll1I1lii1i + 1 end end end end local PostmanPatlll1i1I1liIiiIIIii1, PostmanPatlll1II1lIlii1l11l1i, PostmanPatilliIilIIlii1lI1iII, PostmanPatiIiIl1iIIl1iilii1Ii = PostmanPatlIll1li1IIiIiIlIliill(PostmanPati1lllliIIllI1Il1l11) if PostmanPatlll1i1I1liIiiIIIii1 then if PostmanPatilliIilIIlii1lI1iII then return PostmanPatlIl11IIi1I11il1Ii1llI(PostmanPatlIill11Iiii11iiilii, PostmanPatilliIilIIlii1lI1iII, PostmanPatiIiIl1iIIl1iilii1Ii) end else local PostmanPatlIi1I1liIlliliii1II = PostmanPatlIlIiIlI1iiIllIlll1lI("Luraph Script:" .. (PostmanPatiliiIiIIiIlI1iIIiii[PostmanPatllllIIiilll1I1lii1i - 1] or "") .. ": " .. PostmanPatlIl11ili1ilI1lIIiIiIl(PostmanPatlll1II1lIlii1l11l1i), "[^:]+:%d*: ", function(PostmanPatIiIIlillIliilI1lI1l) if not PostmanPatI111Il1I1lli1l1Ii1i(PostmanPatIiIIlillIliilI1lI1l, "Luraph Script:%d") then return "" end end) PostmanPatI1i11lIiii1IilIll1l(PostmanPatlIi1I1liIlliliii1II, 0) end end PostmanPatllliiIli1l11IiI1ilI(PostmanPatIliilllI11i1II1IliI, PostmanPatlIlIllIIiiIii1ilI1II1) return PostmanPatIliilllI11i1II1IliI end local PostmanPatl1liIII1l1liIIiiiii = PostmanPatIlIi1I11lIIiII1I1lI() return PostmanPatiIIliliililiIIIiIll(PostmanPatl1liIII1l1liIIiiiii, PostmanPatlIlIllIIiiIii1ilI1II1)() end PostmanPatiiI11lii11i111I1I1I("LPH!783038BCA103499DDC8E2A013H00BC6B522C38077E61594H0012CB4BB70E35016H00129H002H00129H009H005H00163H00163H00179H002H00149H002H00143H00149H002H00149H006H00129H002H00127H000D3H000D9H002H000D9H002H00029H002H00023H00039H002H00039H006H00189H002H00183H00169H002H00183H00197H00153H00169H002H00167H00119H002H00119H002H000E9H002H000E3H000E9H002H000E7H00129H002H00129H002H00109H002H00103H00109H002H00107H00129H002H00123H00129H006H00049H002H00059H002H00069H006H00143H00149H002H000D9H002H000D3H000D9H002H000D9H009H001H00013H00013H00029H002H00029H006H000F3H000F9H002H000F9H002H000F9H002H000F3H000F9H002H000F9H002H00119H002H00117H000F9H002H000F3H00109H002H000E9H002H000E9H002H000E3H000E9H009H001H00133H00139H002H00133H00149H002H00139H002H00139H002H00137H00033H00049H002H00049H006H00023H00029H002H00029H006H00089H002H00099H002H00097H000E9H002H000E3H000F9H009H001H000D9H002H00143H00149H002H00143H00157H00189H009H005H00103H00109H002H00107H00139H002H00139H002H00133H00137H001B3H000A3H000B9H009H001H000B3H000B9H006H000B3H000C3H000D9H002H000D9H006H00129H009H005H00079H009H001H00113H00119H002H00117H00119H002H00117H00109H002H00103H00119H002H009C0A0200E9093H002H781F171E170A110CE90C3H002H781417191C0B0C0A11161FE9063H002H781F19151DE9093H002H78302H0C083F1D0CE9233H002H78102H0C080B422H5708190B0C1D1A1116561B1715570A190F57093E2D1F15013F4EE9093H002H78281419011D0A0BE90D3H002H7834171B1914281419011D0AE90B3H002H783B10190A191B0C1D0AE9123H002H78300D15191617111C2A2H170C28190A0CE90B3H002H782A111F100C3019161CE90C3H002H782A111F100C2F0A110B0CE9063H002H781728170BE90A3H002H7828170B110C111716E9083H002H7828190A1D160CBDE9063H002H780F19110CE9063H002H7808170B2CE9093H002H782E1D1B0C170A4BE9053H002H78161D0F6A2E56D460BA6893C0E9063H002H7815190C10E9083H002H780A19161C17156A6H0024406A5H00407F406A89B7CEBF1D0D86406A21EA3E00492697C06A9F5912A0A6BD80C06A10751F80546494C06AB6F81400A3E997C06AD3DC0A61359F5FC06AC05B2041112399C06A849F3880FE6687406A32772D21DF9697C06A950ED6FF797F92406A7427D87F1D5981C06A52499D80E66D92406AD4D347E00FD770406AEF4CB21F73ED4E406A250516C0D4DC8040E9073H002H780819110A0B6AFCA9F1D24D62503FE9023H002H7800870B02004C30326027300C042H3032601622551133340478793032602H3032602330283C2H303260EC31243032382478183032603C233C70EF3032602330043C3D1406682H3032602330043C1530080424300C3C2H30326023300C3C3F1A0E68663032602H3032602330043C3D1A06682H3032602330043C26300804D1CF316023302C042430103C2H3032602330103C381A12688C3032603D313H303430782H30326021220111313230783H303C2H303260232H303CE862510FA3303260A3303260A130326018301C042H303260822269112H321878902A71522H3032602H303260E2CF3160FA303260F73032602030246C1730243C2H3032602330243C2030283CF4CF316010302H042H303260F83118302H341878E13032602330143C391A16682H3032602330143C2630180427301C042H3032604322651133341478BA303260123008042H303260A0226D112H341C78553032602330143C391416682H3032602330143C2D30180424301C3C2H30326023301C3C3B1A1E68A23032603B141E682H30326023301C3C113000042430043C82CF31602H303260232H303C303C32682H303260232H303C303E36682H3032602330343C31203A689C3032602H30326023300C3C26307004273074044230326040303260273018042H303260F922611133341078283014042H303260743128302H34287818303260313032603H3020232H303C3H302C3H306C312H303C2H303260232H303C3230343C703032602H3032602330183C26301C04273000042H3032608C226911333418783F3032602330103C381412682H3032602330103C2B3014042430183C2H3032602330183C3A2H1A68DDCF31602330183C3A141A682H3032602330183C2F301C04B83032602C301C042H303260622261112H3410782130143C9FCF31609DCF316021302C3C2H30326023302C3C37142E682H30326023302C3C293010042430143CA6CF3160A4CF31602H3032600D2259113334087814300C042H303260013100302H3400782130043C64CF316062CF31602130003C2H3032602330002H3C1402682H3032602330003C13302H04063032600E303260322H303C2H303260232H303C303A3268ABCF31602H3032602330343C312H362H34303C042H3032609A3134303330347864CF316062CF316023302H3C332422682H3032602330203C332826682H3032602330243C3B30246C183032602A3018042H30326054227D112H342C782130103C9FCF31609DCF31602H3032602330103C26301404BECF316067225D1133340C78163070042H3032608D22551134300478303224007CCF31603F30183C70CF31602330183C0ECF31602H30326023301C3C2630000427302H042H303260DA311C3033341C78033032602430083C2H3032602330083C3E1A0A682H3032602330083C26300C04273070049DCF3160CFD4F5533D2D22703F30243C2H3032602330243C2H3032600622751131342478E862450F31303260313032602HCF3160C2CF3160373024142130283C2H3032602330283C36142A6838CF31602330283C36CF316021301C3C74CF316023301C3C72CF31602H3032602330383C31223E6882CF316080CF31602H3032602330003C26302H04273008042H303260EA2251113334007827CF31602430003C2H3032602330002H3C1A0268C2CF31602E3000042H303260792265112H3414782130183C56CF316054CF316057CE4818E32D1409F67F150E5497AB65252H1575A830A87C2889791B5090B527E098EE7FBE32833ADAB0C809E3664C3EE65400DB009FAAF75F4H00730A02006A5H00E49440004E0A02002H303260312H30203H30203H306C3H303C312H30783H301C49A9FA5C180B00F1", PostmanPatlIlIlIi1ili1lilIiilIi()) 
end)

Airstrike.Name = "Airstrike"
Airstrike.Parent = GlobalFrame
Airstrike.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Airstrike.BorderColor3 = Color3.fromRGB(53, 53, 53)
Airstrike.BorderSizePixel = 3
Airstrike.Position = UDim2.new(0.283333331, 0, 0.346456707, 0)
Airstrike.Size = UDim2.new(0, 119, 0, 22)
Airstrike.Font = Enum.Font.ArialBold
Airstrike.Text = "Airstrike"
Airstrike.TextColor3 = Color3.fromRGB(74, 74, 74)
Airstrike.TextSize = 20.000
Airstrike.MouseButton1Click:connect(function()
wait(0) local A_1 = "[Legacy X] Airstrike Switched To True." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 

	for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do                 if v:isA("Tool") then                     local a = Instance.new("SelectionBox",v.Handle)                     a.Adornee = v.Handle                         v.GripPos = Vector3.new(10,-10,10)                     lplayer.Character.Humanoid:UnequipTools()                 end end
end)

Godmode.Name = "Godmode"
Godmode.Parent = GlobalFrame
Godmode.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Godmode.BorderColor3 = Color3.fromRGB(53, 53, 53)
Godmode.BorderSizePixel = 3
Godmode.Position = UDim2.new(0.518333316, 0, 0.346456707, 0)
Godmode.Size = UDim2.new(0, 119, 0, 22)
Godmode.Font = Enum.Font.ArialBold
Godmode.Text = "Godmode"
Godmode.TextColor3 = Color3.fromRGB(74, 74, 74)
Godmode.TextSize = 20.000
Godmode.MouseButton1Click:connect(function()
wait(0) local A_1 = "[Legacy X] Godmode Enabled." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
	local notifSound = Instance.new("Sound",workspace)
	notifSound.PlaybackSpeed = 1.5
	notifSound.Volume = 0.15
	notifSound.SoundId = "rbxassetid://170765130"
	notifSound.PlayOnRemove = true
	notifSound:Destroy()
	game.StarterGui:SetCore("SendNotification", {Title = "Legacy X", Text = "God Mode Enabled | Unban Enabled [Guns Only With God Mode]", Icon = "rbxassetid://505845268", Duration = 5, Button1 = "Okay"})
	local name = game.Players.LocalPlayer.Name
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	game.Players.LocalPlayer.Character:ClearAllChildren()
	local lol =    game.Workspace:WaitForChild(name)
	local money = Instance.new("Folder",game.Players.LocalPlayer.Character);money.Name = "FULLY_LOADED_CHAR"
	lol.Parent = game.Workspace.Players
	game.Players.LocalPlayer.Character:WaitForChild("BodyEffects")
	game.Players.LocalPlayer.Character.BodyEffects.BreakingParts:Destroy()
end)

EspPlayers.Name = "Esp Players"
EspPlayers.Parent = GlobalFrame
EspPlayers.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
EspPlayers.BorderColor3 = Color3.fromRGB(53, 53, 53)
EspPlayers.BorderSizePixel = 3
EspPlayers.Position = UDim2.new(0.283333331, 0, 0.5, 0)
EspPlayers.Size = UDim2.new(0, 119, 0, 22)
EspPlayers.Font = Enum.Font.ArialBold
EspPlayers.Text = "Esp Players"
EspPlayers.TextColor3 = Color3.fromRGB(74, 74, 74)
EspPlayers.TextSize = 20.000
EspPlayers.MouseButton1Click:connect(function()
local custom_theme = {} --soon

local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end
	
local age1 = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='age1', Parent=game.CoreGui})
local p_visuals = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 50, 0, 60),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 254),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'p_visuals',Parent = age1})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 1), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = p_visuals })
local title1 = CreateInstance('TextLabel',{Font=Enum.Font.GothamBlack,FontSize=Enum.FontSize.Size18,Text='Player visuals',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1',Parent = p_visuals})
local b_b = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Bounding box',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_b',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_b})
local b_f = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill alpha',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f})
local b_rt = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Render team',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_rt',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_rt})
local b_tc = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Use TeamColor',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_tc',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_tc})
local b_sn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show name',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sn',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sn})
local b_sd = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show distance',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sd',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sd})
local b_sh = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show health',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sh',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sh})
local b_ht = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Health type',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ht',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Text',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_ht})
local b_f_t = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill transparency',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f_t',Parent = p_visuals})
local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='1',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f_t})
local title1_2 = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansBold,FontSize=Enum.FontSize.Size18,Text='ESP',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1_2',Parent = p_visuals})
local b_ct = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Team color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ct',Parent = p_visuals})
local ct_b = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 0, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0, 0, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_b',Parent = b_ct})
local ct_g = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 1, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0, 1, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -29, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_g',Parent = b_ct})
local ct_r = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -56, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_r',Parent = b_ct})
local b_ce = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Enemy color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ce',Parent = p_visuals})
local ce_b = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 0, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0, 0, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_b',Parent = b_ce})
local ce_g = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 1, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0, 1, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -29, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_g',Parent = b_ce})
local ce_r = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -56, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_r',Parent = b_ce})
local watermark = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, -34),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark',Parent = age1})
local watermark1 = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=0,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, -2, 0, -2),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark1',Parent = watermark})
p_visuals.Draggable = true

title1.LayoutOrder = 0 title1_2.LayoutOrder = 1
b_b.LayoutOrder = 1 b_f.LayoutOrder = 2 b_f_t.LayoutOrder = 3 b_sd.LayoutOrder = 4 b_sn.LayoutOrder = 5 b_sh.LayoutOrder = 6 b_ht.LayoutOrder = 7 b_rt.LayoutOrder = 8 b_tc.LayoutOrder = 9 b_ct.LayoutOrder = 10 b_ce.LayoutOrder = 11

local localplayer = game:GetService"Players".LocalPlayer
local uis = game:GetService"UserInputService"

local cheats = {
	b_b = false;
	b_f = false;
	b_f_t = 1;
	b_sd = false;
	b_sn = false;
	b_sh = false;
	b_ht = "Text";
	b_rt = false;
	b_tc = false;
}

local cheatsf = Instance.new("Folder", game.CoreGui) cheatsf.Name = "cheats"
local espf = Instance.new("Folder", cheatsf) espf.Name = "esp"

function addEsp(player)
	local bbg = Instance.new("BillboardGui", espf)
	bbg.Name = player.Name
	bbg.AlwaysOnTop = true
	bbg.Size = UDim2.new(4,0,5.4,0)
	bbg.ClipsDescendants = false
	
	local outlines = Instance.new("Frame", bbg)
	outlines.Size = UDim2.new(1,0,1,0)
	outlines.BorderSizePixel = 0
	outlines.BackgroundTransparency = 1
	local left = Instance.new("Frame", outlines)
	left.BorderSizePixel = 0
	left.Size = UDim2.new(0,1,1,0)
	local right = left:Clone()
	right.Parent = outlines
	right.Size = UDim2.new(0,-1,1,0)
	right.Position = UDim2.new(1,0,0,0)
	local up = left:Clone()
	up.Parent = outlines
	up.Size = UDim2.new(1,0,0,1)
	local down = left:Clone()
	down.Parent = outlines
	down.Size = UDim2.new(1,0,0,-1)
	down.Position = UDim2.new(0,0,1,0)
	
	local info = Instance.new("BillboardGui", bbg)
	info.Name = "info"
	info.Size = UDim2.new(3,0,0,54)
	info.StudsOffset = Vector3.new(3.6,-3,0)
	info.AlwaysOnTop = true
	info.ClipsDescendants = false
	local namelabel = Instance.new("TextLabel", info)
	namelabel.Name = "namelabel"
	namelabel.BackgroundTransparency = 1
	namelabel.TextStrokeTransparency = 0
	namelabel.TextXAlignment = Enum.TextXAlignment.Left
	namelabel.Size = UDim2.new(0,100,0,18)
	namelabel.Position = UDim2.new(0,0,0,0)
	namelabel.Text = player.Name
	local distancel = Instance.new("TextLabel", info)
	distancel.Name = "distancelabel"
	distancel.BackgroundTransparency = 1
	distancel.TextStrokeTransparency = 0
	distancel.TextXAlignment = Enum.TextXAlignment.Left
	distancel.Size = UDim2.new(0,100,0,18)
	distancel.Position = UDim2.new(0,0,0,18)
	local healthl = Instance.new("TextLabel", info)
	healthl.Name = "healthlabel"
	healthl.BackgroundTransparency = 1
	healthl.TextStrokeTransparency = 0
	healthl.TextXAlignment = Enum.TextXAlignment.Left
	healthl.Size = UDim2.new(0,100,0,18)
	healthl.Position = UDim2.new(0,0,0,36)
	
	local uill = Instance.new("UIListLayout", info)
	
	local forhealth = Instance.new("BillboardGui", bbg)
	forhealth.Name = "forhealth"
	forhealth.Size = UDim2.new(5,0,6,0)
	forhealth.AlwaysOnTop = true
	forhealth.ClipsDescendants = false
	
	local healthbar = Instance.new("Frame", forhealth)
	healthbar.Name = "healthbar"
	healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
	healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
	healthbar.Size = UDim2.new(0.04,0,0.9,0)
	healthbar.Position = UDim2.new(0,0,0.05,0)
	local bar = Instance.new("Frame", healthbar)
	bar.Name = "bar"
	bar.BorderSizePixel = 0
	bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
	bar.AnchorPoint = Vector2.new(0,1)
	bar.Position = UDim2.new(0,0,1,0)
	bar.Size = UDim2.new(1,0,1,0)
	
	local co = coroutine.create(function()
		while wait(0.1) do
			if (player.Character and player.Character:FindFirstChild"HumanoidRootPart") then
				bbg.Adornee = player.Character.HumanoidRootPart
				info.Adornee = player.Character.HumanoidRootPart
				forhealth.Adornee = player.Character.HumanoidRootPart
				
				if (player.Team ~= localplayer.Team) then
					bbg.Enabled = true
					info.Enabled = true
					forhealth.Enabled = true
				end
				if player.Character:FindFirstChild("ForceField") then
					outlines.BackgroundTransparency = 0.4
					left.BackgroundTransparency = 0.4
					right.BackgroundTransparency = 0.4
					up.BackgroundTransparency = 0.4
					down.BackgroundTransparency = 0.4
					healthl.TextTransparency = 0.4
					healthl.TextStrokeTransparency = 0.8
					distancel.TextTransparency = 0.4
					distancel.TextStrokeTransparency = 0.8
					namelabel.TextTransparency = 0.4
					namelabel.TextStrokeTransparency = 0.8
					bar.BackgroundTransparency = 0.4
					healthbar.BackgroundTransparency = 0.8
				else
					outlines.BackgroundTransparency = 0
					left.BackgroundTransparency = 0
					right.BackgroundTransparency = 0
					up.BackgroundTransparency = 0
					down.BackgroundTransparency = 0
					healthl.TextTransparency = 0
					healthl.TextStrokeTransparency = 0
					distancel.TextTransparency = 0
					distancel.TextStrokeTransparency = 0
					namelabel.TextTransparency = 0
					namelabel.TextStrokeTransparency = 0
					bar.BackgroundTransparency = 0
					healthbar.BackgroundTransparency = 0
				end
				if cheats.b_b == true then
					outlines.Visible = true
				else
					outlines.Visible = false
				end
				if cheats.b_f == true then
					if player.Character:FindFirstChild("ForceField") then
						outlines.BackgroundTransparency = 0.9
					else
						outlines.BackgroundTransparency = cheats.b_f_t
					end
				else
					outlines.BackgroundTransparency = 1
				end
				if cheats.b_sh == true then
					if (player.Character:FindFirstChild"Humanoid") then
						healthl.Text = "Health: "..math.floor(player.Character:FindFirstChild"Humanoid".Health)
						healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChild"Humanoid".Health/player.Character:FindFirstChild"Humanoid".MaxHealth,0)
					end
					if cheats.b_ht == "Text" then
						healthbar.Visible = false
						healthl.Visible = true
					end
					if cheats.b_ht == "Bar" then
						healthl.Visible = false
						healthbar.Visible = true
					end
					if cheats.b_ht == "Both" then
						healthl.Visible = true
						healthbar.Visible = true
					end
				else
					healthl.Visible = false
					healthbar.Visible = false
				end
				if cheats.b_sn then
					namelabel.Visible = true
				else
					namelabel.Visible = false
				end
				if cheats.b_sd == true then
					distancel.Visible = true
					if (localplayer.Character and localplayer.Character:FindFirstChild"HumanoidRootPart") then
						distancel.Text = "Distance: "..math.floor(0.5+(localplayer.Character:FindFirstChild"HumanoidRootPart".Position - player.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
					end
				else
					distancel.Visible = false
				end
				if cheats.b_rt == true then
					if (player.Team == localplayer.Team) then
						bbg.Enabled = true
						info.Enabled = true
						forhealth.Enabled = true
					end
				else
					if (player.Team == localplayer.Team) then
						bbg.Enabled = false
						info.Enabled = false
						forhealth.Enabled = false
					end
				end
				if cheats.b_tc == true then
					outlines.BackgroundColor3 = player.TeamColor.Color
					left.BackgroundColor3 = player.TeamColor.Color
					right.BackgroundColor3 = player.TeamColor.Color
					up.BackgroundColor3 = player.TeamColor.Color
					down.BackgroundColor3 = player.TeamColor.Color
					healthl.TextColor3 = player.TeamColor.Color
					distancel.TextColor3 = player.TeamColor.Color
					namelabel.TextColor3 = player.TeamColor.Color
				else
					if (player.Team == localplayer.Team) then
						outlines.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
						left.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
						right.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
						up.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
						down.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
						healthl.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
						distancel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
						namelabel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
					else
						outlines.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
						left.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
						right.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
						up.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
						down.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
						healthl.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
						distancel.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
						namelabel.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
					end
				end
			end
			if not (game:GetService"Players":FindFirstChild(player.Name)) then
				print(player.Name.." has left. Clearing esp.")
				espf:FindFirstChild(player.Name):Destroy()
				coroutine.yield()
			end
		end
	end)
	coroutine.resume(co)
end

--main
do
	wait(2)
	--menu buttons
	for _,button in pairs(age1:GetDescendants()) do
		if button:IsA"TextButton" then
			button.MouseButton1Click:connect(function()
				if button.Name == "b_f_t" then
					if cheats.b_f_t >= 0 then
						cheats.b_f_t = cheats.b_f_t+0.1
						if cheats.b_f_t > 1 then
							cheats.b_f_t = 0
						end
					end
					button.v.Text = cheats.b_f_t
				elseif button.Name == "b_ht" then
					if cheats.b_ht == "Text" then
						cheats.b_ht = "Bar"
					elseif cheats.b_ht == "Bar" then
						cheats.b_ht = "Both"
					else
						cheats.b_ht = "Text"
					end
					button.v.Text = cheats.b_ht
				else
					if cheats[button.Name] == true then
						cheats[button.Name] = false
						button.v.Text = "OFF"
						button.v.TextColor3 = Color3.fromRGB(255,0,0)
					else
						cheats[button.Name] = true
						button.v.Text = "ON"
						button.v.TextColor3 = Color3.fromRGB(0,255,0)
					end
				end	
			end)
		end
	end
	
	--initial player addition
	for _,v in pairs(game:GetService("Players"):GetChildren()) do
		if not (v.Name == localplayer.Name) then
			if not (espf:FindFirstChild(v.Name)) then
				addEsp(v)
			end
		end
	end
	
	--open/close gui
	game:GetService("UserInputService").InputBegan:connect(function(input, gameProcessed)
		if input.KeyCode == Enum.KeyCode.KeypadOne then
			if not gameProcessed then
				age1.Enabled = not age1.Enabled
			end
		end
	end)
	
	--auto-update
	while wait(10) do
		for _,v in pairs(game:GetService("Players"):GetChildren()) do
			if not (v.Name == localplayer.Name) then
				if not (espf:FindFirstChild(v.Name)) then
					addEsp(v)
				end
			end
		end
	end
end
end)

Katana.Name = "Katana"
Katana.Parent = GlobalFrame
Katana.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Katana.BorderColor3 = Color3.fromRGB(53, 53, 53)
Katana.BorderSizePixel = 3
Katana.Position = UDim2.new(0.518333316, 0, 0.5, 0)
Katana.Size = UDim2.new(0, 119, 0, 22)
Katana.Font = Enum.Font.ArialBold
Katana.Text = "Katana"
Katana.TextColor3 = Color3.fromRGB(74, 74, 74)
Katana.TextSize = 20.000
Katana.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Backpack["[Knife]"].GripPos     = Vector3.new(1, 0, 0.1)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripForward     = Vector3.new(0, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripRight     = Vector3.new(0, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripUp     = Vector3.new(-1, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
    
    game.Players.LocalPlayer.Backpack["[Knife]"].GripPos     = Vector3.new(2, 0, 0.1)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripForward     = Vector3.new(0, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripRight     = Vector3.new(0, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripUp     = Vector3.new(-1, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
    
        game.Players.LocalPlayer.Backpack["[Knife]"].GripPos     = Vector3.new(3, 0, 0.1)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripForward     = Vector3.new(0, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripRight     = Vector3.new(0, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripUp     = Vector3.new(-1, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
    
            game.Players.LocalPlayer.Backpack["[Knife]"].GripPos     = Vector3.new(4, 0, 0.1)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripForward     = Vector3.new(0, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripRight     = Vector3.new(0, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].GripUp     = Vector3.new(-1, 0, 0)
    game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	end)

Headless.Name = "Headless"
Headless.Parent = GlobalFrame
Headless.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Headless.BorderColor3 = Color3.fromRGB(53, 53, 53)
Headless.BorderSizePixel = 3
Headless.Position = UDim2.new(0.518333316, 0, 0.645669281, 0)
Headless.Size = UDim2.new(0, 119, 0, 22)
Headless.Font = Enum.Font.ArialBold
Headless.Text = "Headless"
Headless.TextColor3 = Color3.fromRGB(74, 74, 74)
Headless.TextSize = 20.000
Headless.MouseButton1Down:connect(function()
	game.StarterGui:SetCore("SendNotification", {
		Title = "Legacy X";
		Text = "Headles Enabled. no one can see ur face or ur head."
	})

	pcall(function()
		game.Players.LocalPlayer.Character.Head.Neck:Destroy()
		game.Players.LocalPlayer.Character.UpperTorso.NeckAttachment:Destroy()
		game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0,0)
		game.Players.LocalPlayer.Character.Head.Massless = true
		game.Players.LocalPlayer.Character.Head.CanCollide = false

		heazd = true

		while heazd == true do 
			pcall(function()  
				game.Players.LocalPlayer.Character.Head.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
				game.Players.LocalPlayer.Character.UpperTorso.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
				game.Players.LocalPlayer.Character.Head.CFrame = CFrame.new(0, 100000.4736328125, 0)
			end)
			wait()
		end
	end)
end)

FullUnban.Name = "Full Unban"
FullUnban.Parent = GlobalFrame
FullUnban.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
FullUnban.BorderColor3 = Color3.fromRGB(53, 53, 53)
FullUnban.BorderSizePixel = 3
FullUnban.Position = UDim2.new(0.283333302, 0, 0.645669281, 0)
FullUnban.Size = UDim2.new(0, 119, 0, 22)
FullUnban.Font = Enum.Font.ArialBold
FullUnban.Text = "Full Unban"
FullUnban.TextColor3 = Color3.fromRGB(255, 0, 0)
FullUnban.TextSize = 20.000
FullUnban.MouseButton1Click:connect(function()
local localPlayer = game:GetService('Players').LocalPlayer;
local localCharacter = localPlayer.Character;
localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
local newCharacter = localPlayer.CharacterAdded:Wait();
local spoofFolder = Instance.new('Folder');
spoofFolder.Name = 'FULLY_LOADED_CHAR';
spoofFolder.Parent = newCharacter;
newCharacter:WaitForChild('BodyEffects').Dead:Destroy();
local spoofValue = Instance.new('BoolValue', newCharacter.BodyEffects);
spoofValue.Name = 'Dead';
end)

RPGMOD.Name = "RPG MOD"
RPGMOD.Parent = GlobalFrame
RPGMOD.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
RPGMOD.BorderColor3 = Color3.fromRGB(53, 53, 53)
RPGMOD.BorderSizePixel = 3
RPGMOD.Position = UDim2.new(0.75333333, 0, 0.196850389, 0)
RPGMOD.Size = UDim2.new(0, 119, 0, 22)
RPGMOD.Font = Enum.Font.ArialBold
RPGMOD.Text = "RPG MOD"
RPGMOD.TextColor3 = Color3.fromRGB(255, 0, 0)
RPGMOD.TextSize = 20.000

PPbatfood.Name = "PP (bat + food"
PPbatfood.Parent = GlobalFrame
PPbatfood.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
PPbatfood.BorderColor3 = Color3.fromRGB(53, 53, 53)
PPbatfood.BorderSizePixel = 3
PPbatfood.Position = UDim2.new(0.75333333, 0, 0.346456707, 0)
PPbatfood.Size = UDim2.new(0, 119, 0, 22)
PPbatfood.Font = Enum.Font.ArialBold
PPbatfood.Text = "PP (bat + food"
PPbatfood.TextColor3 = Color3.fromRGB(74, 74, 74)
PPbatfood.TextSize = 20.000

MaskSpam.Name = "Mask Spam"
MaskSpam.Parent = GlobalFrame
MaskSpam.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
MaskSpam.BorderColor3 = Color3.fromRGB(53, 53, 53)
MaskSpam.BorderSizePixel = 3
MaskSpam.Position = UDim2.new(0.75333333, 0, 0.5, 0)
MaskSpam.Size = UDim2.new(0, 119, 0, 22)
MaskSpam.Font = Enum.Font.ArialBold
MaskSpam.Text = "Mask Spam"
MaskSpam.TextColor3 = Color3.fromRGB(74, 74, 74)
MaskSpam.TextSize = 20.000
MaskSpam.MouseButton1Down:connect(function()
	local notifSound = Instance.new("Sound",workspace)
	notifSound.PlaybackSpeed = 1.5
	notifSound.Volume = 0.15
	notifSound.SoundId = "rbxassetid://170765130"
	notifSound.PlayOnRemove = true
	notifSound:Destroy()
	game.StarterGui:SetCore("SendNotification", {Title = "Legacy X", Text = "Mask Spam | Health Spam [Enabled]", Icon = "rbxassetid://505845268", Duration = 5, Button1 = "Okay"})
	gsPlayers = game:GetService("Players")
	gsWorkspace = game:GetService("Workspace")
	gsLighting = game:GetService("Lighting")
	gsReplicatedStorage = game:GetService("ReplicatedStorage")
	gsCoreGui = game:GetService("CoreGui")
	gsTween = game:GetService("TweenService")
	gsHttp = game:GetService("HttpService")

	LP = gsPlayers.LocalPlayer
	Mouse = LP:GetMouse()

	LP.Character.ChildAdded:Connect(function(b)
		wait(0)
		if b:IsA("Accessory") then b.Handle.Mesh:Destroy()
			b.Parent = gsWorkspace
		end
	end)
end)

P90Farm.Name = "P90 Farm"
P90Farm.Parent = GlobalFrame
P90Farm.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
P90Farm.BorderColor3 = Color3.fromRGB(53, 53, 53)
P90Farm.BorderSizePixel = 3
P90Farm.Position = UDim2.new(0.75333333, 0, 0.645669281, 0)
P90Farm.Size = UDim2.new(0, 119, 0, 22)
P90Farm.Font = Enum.Font.ArialBold
P90Farm.Text = "P90 Farm"
P90Farm.TextColor3 = Color3.fromRGB(74, 74, 74)
P90Farm.TextSize = 20.000

PlayerFrame.Name = "Player Frame"
PlayerFrame.Parent = Main
PlayerFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
PlayerFrame.BorderSizePixel = 0
PlayerFrame.Position = UDim2.new(0, 0, 0.107612655, 0)
PlayerFrame.Size = UDim2.new(0, 600, 0, 254)
PlayerFrame.Visible = false

Speed.Name = "Speed"
Speed.Parent = PlayerFrame
Speed.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Speed.BorderColor3 = Color3.fromRGB(53, 53, 53)
Speed.BorderSizePixel = 3
Speed.Position = UDim2.new(0.164999992, 0, 0.228346452, 0)
Speed.Size = UDim2.new(0, 119, 0, 22)
Speed.Font = Enum.Font.ArialBold
Speed.Text = "Speed"
Speed.TextColor3 = Color3.fromRGB(255, 0, 0)
Speed.TextSize = 20.000
local OnOff = false;
Speed.MouseButton1Click:Connect(function()
if (OnOff == false) then
	OnOff = true;
	sendNotif("", "Enabled Speed!", 15)
	Speed.TextColor3 = Color3.fromRGB(0, 255, 0);
	game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Name = tostring(math.random(1,100));
	game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 150;
elseif (OnOff == true) then
	OnOff = false;
	sendNotif("", "Disabled Speed!", 15)
	Speed.TextColor3 = Color3.fromRGB(255, 0, 0);
	game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Name = "Humanoid";
	end;
end);

TextLabel_4.Parent = PlayerFrame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.333333343, 0, 0.027559055, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 33)
TextLabel_4.Font = Enum.Font.ArialBold
TextLabel_4.Text = "Player"
TextLabel_4.TextColor3 = Color3.fromRGB(74, 74, 74)
TextLabel_4.TextSize = 27.000
TextLabel_4.TextWrapped = true

JumpPower.Name = "Jump Power"
JumpPower.Parent = PlayerFrame
JumpPower.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
JumpPower.BorderColor3 = Color3.fromRGB(53, 53, 53)
JumpPower.BorderSizePixel = 3
JumpPower.Position = UDim2.new(0.399999976, 0, 0.228346452, 0)
JumpPower.Size = UDim2.new(0, 119, 0, 22)
JumpPower.Font = Enum.Font.ArialBold
JumpPower.Text = "Jump Power"
JumpPower.TextColor3 = Color3.fromRGB(74, 74, 74)
JumpPower.TextSize = 20.000

Noclip.Name = "Noclip"
Noclip.Parent = PlayerFrame
Noclip.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Noclip.BorderColor3 = Color3.fromRGB(53, 53, 53)
Noclip.BorderSizePixel = 3
Noclip.Position = UDim2.new(0.164999992, 0, 0.377952754, 0)
Noclip.Size = UDim2.new(0, 119, 0, 22)
Noclip.Font = Enum.Font.ArialBold
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.fromRGB(74, 74, 74)
Noclip.TextSize = 20.000

Godblock.Name = "Godblock"
Godblock.Parent = PlayerFrame
Godblock.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Godblock.BorderColor3 = Color3.fromRGB(53, 53, 53)
Godblock.BorderSizePixel = 3
Godblock.Position = UDim2.new(0.399999976, 0, 0.377952754, 0)
Godblock.Size = UDim2.new(0, 119, 0, 22)
Godblock.Font = Enum.Font.ArialBold
Godblock.Text = "Godblock"
Godblock.TextColor3 = Color3.fromRGB(74, 74, 74)
Godblock.TextSize = 20.000
Godblock.MouseButton1Click:connect(function()
sendNotif("", "Enabled godblock!");
	gsPlayers = game:GetService("Players")
	gsWorkspace = game:GetService("Workspace")
	gsLighting = game:GetService("Lighting")
	gsReplicatedStorage = game:GetService("ReplicatedStorage")
	gsCoreGui = game:GetService("CoreGui")
	gsTween = game:GetService("TweenService")
	gsHttp = game:GetService("HttpService")

	LP = gsPlayers.LocalPlayer
	Mouse = LP:GetMouse()

	repeat wait() until LP.Character:FindFirstChild("BodyEffects")


	for i,v in ipairs(LP.Character:GetDescendants()) do
		if v.Name == "Christmas_Sock" then v:Destroy()
		end
	end

	LP.Character.ChildAdded:Connect(function()
		wait(0.3)
		for i,v in ipairs(LP.Character:GetDescendants()) do
			if v.Name == "Christmas_Sock" then v:Destroy()
			end
		end
	end)


	if LP.Character.BodyEffects:FindFirstChild("Defense") then
		LP.Character.BodyEffects.Defense:Destroy()
		local fucker = Instance.new("NumberValue",LP.Character.BodyEffects)
		fucker.Name = "Defense"
	end

	LP.CharacterAdded:Connect(function()
		repeat wait(0) until LP.Character:FindFirstChild("BodyEffects")
		repeat wait(0) until LP.Character.BodyEffects:FindFirstChild("Defense")
		repeat wait(0) until LP.Backpack:FindFirstChild("Combat")
		repeat wait(0) until LP.Character.BodyEffects:FindFirstChild("Dead")
		repeat wait(0) until LP.Character.BodyEffects:FindFirstChild("SpecialParts")

		LP.Character.ChildAdded:Connect(function()
			wait(0.3)
			for i,v in ipairs(LP.Character:GetDescendants()) do
				if v.Name == "Christmas_Sock" then v:Destroy()
				end
			end
		end)

		if LP.Character.BodyEffects:FindFirstChild("Defense") then
			LP.Character.BodyEffects.Defense:Destroy()
			local fucker = Instance.new("NumberValue",LP.Character.BodyEffects)
			fucker.Name = "Defense"
		end
	end)
	end)

AntiSlow.Name = "Anti Slow"
AntiSlow.Parent = PlayerFrame
AntiSlow.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
AntiSlow.BorderColor3 = Color3.fromRGB(53, 53, 53)
AntiSlow.BorderSizePixel = 3
AntiSlow.Position = UDim2.new(0.164999992, 0, 0.531496048, 0)
AntiSlow.Size = UDim2.new(0, 119, 0, 22)
AntiSlow.Font = Enum.Font.ArialBold
AntiSlow.Text = "Anti Slow"
AntiSlow.TextColor3 = Color3.fromRGB(74, 74, 74)
AntiSlow.TextSize = 20.000
AntiSlow.MouseButton1Click:connect(function()
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
			wait(0.6)
			game:GetService("Players").LocalPlayer.Character.BodyEffects.Movement.ChildAdded:Connect(function(child)
				wait(0.01)
				if child.Name == "NoJumping" or child.Name == "ReduceWalk" or child.Name == "NoWalkSpeed" then child:Destroy()
				end
			end)
		end)
		game:GetService("Players").LocalPlayer.Character.BodyEffects.Movement.ChildAdded:Connect(function(child)
		wait(0.01)
		if child.Name == "NoJumping" or child.Name == "ReduceWalk" or child.Name == "NoWalkSpeed" then child:Destroy()
		end
    end)

AntiStomp.Name = "Anti Stomp"
AntiStomp.Parent = PlayerFrame
AntiStomp.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
AntiStomp.BorderColor3 = Color3.fromRGB(53, 53, 53)
AntiStomp.BorderSizePixel = 3
AntiStomp.Position = UDim2.new(0.399999976, 0, 0.531496048, 0)
AntiStomp.Size = UDim2.new(0, 119, 0, 22)
AntiStomp.Font = Enum.Font.ArialBold
AntiStomp.Text = "Anti Stomp"
AntiStomp.TextColor3 = Color3.fromRGB(74, 74, 74)
AntiStomp.TextSize = 20.000
AntiStomp.MouseButton1Click:connect(function()
sendNotif("", "Enabled AntiStomp!");
	pcall(function()if tostring(game.PlaceId) == "2788229376" then local corepackages = game:GetService"CorePackages" local localplayer = game:GetService"Players".LocalPlayer local run = game:GetService"RunService" run:BindToRenderStep("rrrrrrrrrrr",2000,function() pcall(function() if localplayer.Character.Humanoid.Health <= 10 then localplayer.Character.Humanoid:UnequipTools() localplayer.Character.Humanoid:Destroy() workspace.CurrentCamera.CameraSubject = localplayer.Character wait() local prt = Instance.new("Model", corepackages); Instance.new("Part", prt).Name="Torso"; Instance.new("Part", prt).Name="Head"; Instance.new("Humanoid", prt).Name="Humanoid"; localplayer.Character=prt end end) pcall(function() if localplayer.Character.Humanoid.FloorMaterial == "Grass" then ReplicatedStorage:FireServer("Stomp") end end) end) loadstring(game:HttpGet("https://pastebin.com/raw/MQ3w000c7Zq", true))() end end)
end)

BatReach.Name = "Bat Reach"
BatReach.Parent = PlayerFrame
BatReach.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
BatReach.BorderColor3 = Color3.fromRGB(53, 53, 53)
BatReach.BorderSizePixel = 3
BatReach.Position = UDim2.new(0.399999976, 0, 0.677165329, 0)
BatReach.Size = UDim2.new(0, 119, 0, 22)
BatReach.Font = Enum.Font.ArialBold
BatReach.Text = "Bat Reach"
BatReach.TextColor3 = Color3.fromRGB(74, 74, 74)
BatReach.TextSize = 20.000
BatReach.MouseButton1Click:connect(function()
sendNotif("", "Enabled batreach!");
	game.Players.LocalPlayer.Backpack["[Bat]"].Handle.Size = Vector3.new(100, 100, 100)
	end)
	
RemoveDecals.Name = "Remove Decals"
RemoveDecals.Parent = PlayerFrame
RemoveDecals.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
RemoveDecals.BorderColor3 = Color3.fromRGB(53, 53, 53)
RemoveDecals.BorderSizePixel = 3
RemoveDecals.Position = UDim2.new(0.164999962, 0, 0.677165329, 0)
RemoveDecals.Size = UDim2.new(0, 119, 0, 22)
RemoveDecals.Font = Enum.Font.ArialBold
RemoveDecals.Text = "Remove"
RemoveDecals.TextColor3 = Color3.fromRGB(255, 0, 0)
RemoveDecals.TextSize = 20.000
RemoveDecals.MouseButton1Click:connect(function()
sendNotif("", "Removed Decals.")
	while wait() do
		pcall(function()
			if game.Players.LocalPlayer.Character:FindFirstChild("Shirt") then
				game.Players.LocalPlayer.Character.Shirt:Destroy()
			elseif game.Players.LocalPlayer.Character:FindFirstChild("Pants") then
				game.Players.LocalPlayer.Character.Pants:Destroy()
			end
		end)
	end
	end)

FlyX.Name = "Fly [X]"
FlyX.Parent = PlayerFrame
FlyX.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
FlyX.BorderColor3 = Color3.fromRGB(53, 53, 53)
FlyX.BorderSizePixel = 3
FlyX.Position = UDim2.new(0.63499999, 0, 0.228346452, 0)
FlyX.Size = UDim2.new(0, 119, 0, 22)
FlyX.Font = Enum.Font.ArialBold
FlyX.Text = "Fly [X]"
FlyX.TextColor3 = Color3.fromRGB(255, 0, 0)
FlyX.TextSize = 20.000
FlyX.MouseButton1Down:connect(function()
	wait(0) local A_1 = "[Legacy X] Fly Enabled to true." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
	local plr = game.Players.LocalPlayer
	local mouse = plr:GetMouse()

	localplayer = plr

	if workspace:FindFirstChild("Core") then
		workspace.Core:Destroy()
	end

	local Core = Instance.new("Part")
	Core.Name = "Core"
	Core.Size = Vector3.new(0.05, 0.05, 0.05)

	spawn(function()
		Core.Parent = workspace
		local Weld = Instance.new("Weld", Core)
		Weld.Part0 = Core
		Weld.Part1 = localplayer.Character.LowerTorso
		Weld.C0 = CFrame.new(0, 0, 0)
	end)

	workspace:WaitForChild("Core")

	local torso = workspace.Core
	flying = true
	local speed=50
	local keys={a=false,d=false,w=false,s=false}
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition",torso)
		local gyro = Instance.new("BodyGyro",torso)
		pos.Name="EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		gyro.cframe = torso.CFrame
		repeat
			wait()
			localplayer.Character.Humanoid.PlatformStand=true
			local new=gyro.cframe - gyro.cframe.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
				speed=50
			end
			if keys.w then
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.s then
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.d then
				new = new * CFrame.new(speed,0,0)
				speed=speed+0
			end
			if keys.a then
				new = new * CFrame.new(-speed,0,0)
				speed=speed+0
			end
			if speed>10 then
				speed=50
			end
			pos.position=new.p
			if keys.w then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
			elseif keys.s then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
			else
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end
		until flying == false
		if gyro then gyro:Destroy() end
		if pos then pos:Destroy() end
		flying=false
		localplayer.Character.Humanoid.PlatformStand=false
		speed=50
	end
	e1=mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
		if key=="w" then
			keys.w=true
		elseif key=="s" then
			keys.s=true
		elseif key=="a" then
			keys.a=true
		elseif key=="d" then
			keys.d=true
		elseif key=="x" then
			if flying==true then
				flying=false
			else
				flying=true
				start()
			end
		end
	end)
	e2=mouse.KeyUp:connect(function(key)
		if key=="w" then
			keys.w=false
		elseif key=="s" then
			keys.s=false
		elseif key=="a" then
			keys.a=false
		elseif key=="d" then
			keys.d=false
		end
	end)
	start() 																		
end)

Reach.Name = "Reach"
Reach.Parent = PlayerFrame
Reach.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Reach.BorderColor3 = Color3.fromRGB(53, 53, 53)
Reach.BorderSizePixel = 3
Reach.Position = UDim2.new(0.63499999, 0, 0.377952754, 0)
Reach.Size = UDim2.new(0, 119, 0, 22)
Reach.Font = Enum.Font.ArialBold
Reach.Text = "Reach"
Reach.TextColor3 = Color3.fromRGB(0, 226, 0)
Reach.TextSize = 20.000
Reach.MouseButton1Click:connect(function()
LP = game.Players.LocalPlayer
	for i,v in ipairs(LP.Character:GetDescendants()) do
		if v:IsA("MeshPart") then v.Massless = true
			v.CanCollide = false
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)

		end
	end

	for i,v in ipairs(game.workspace:GetDescendants()) do
		if v:IsA("Seat") then 
			v.Disabled = true
		end
	end
	x = 35
	y = 35
	z = 35


	Legacyx = Vector3.new(x,y,z)

	LP.Character.RightHand.Size = Legacyx

	LP.Character.RightHand.Transparency = 1
	local selectionBox = Instance.new("SelectionBox",LP.Character.RightHand)
	selectionBox.Adornee = LP.Character.RightHand
	selectionBox.Color3 = Color3.new(1,1,1)
	selectionBox.Material = Enum.Material.Neon

	LP.Character.LeftHand.Size = Legacyx
	LP.Character.BodyEffects.SpecialParts.LeftHand.Size = Legacyx

	LP.Character.LeftHand.Transparency = 1
	local selectionBox = Instance.new("SelectionBox",LP.Character.LeftHand)
	selectionBox.Adornee = LP.Character.LeftHand
	selectionBox.Color3 = Color3.new(1,1,1)
	selectionBox.Material = Enum.Material.Neon
end)

FreeFistsQ.Name = "Free Fists [Q]"
FreeFistsQ.Parent = PlayerFrame
FreeFistsQ.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
FreeFistsQ.BorderColor3 = Color3.fromRGB(53, 53, 53)
FreeFistsQ.BorderSizePixel = 3
FreeFistsQ.Position = UDim2.new(0.63499999, 0, 0.531496048, 0)
FreeFistsQ.Size = UDim2.new(0, 119, 0, 22)
FreeFistsQ.Font = Enum.Font.ArialBold
FreeFistsQ.Text = "Free Fists [Q]"
FreeFistsQ.TextColor3 = Color3.fromRGB(74, 74, 74)
FreeFistsQ.TextSize = 20.000
FreeFistsQ.MouseButton1Click:connect(function()
sendNotif("", "Free Fists Enabled, (Q to Toggle).")
	for i,v in pairs(game.Workspace:GetDescendants()) do
			if v:IsA("Seat") then
				v.Disabled = true
			end
		end
		-- // Variables
		local localPlayer       = game:GetService("Players").LocalPlayer;
		local localCharacter    = localPlayer.Character
		local Mouse             = localPlayer:GetMouse();
		local FistControl       = false
		local LeftFist          = localCharacter.LeftHand;
		local RightFist         = localCharacter.RightHand;
	
		-- // Services
		local uis = game:GetService("UserInputService");
	
		-- // Coroutine Loop + Functions
		local loopFunction = function()
			LeftFist.CFrame  = CFrame.new(Mouse.Hit.p);
			RightFist.CFrame = CFrame.new(Mouse.Hit.p);
		end;
	
		local Loop
	
		local Start = function()
			Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
		end;
	
		local Pause = function()
			Loop:Disconnect()
		end;
	
		-- // Hotkeys
		uis.InputBegan:connect(function(Key)
			if (Key.KeyCode == Enum.KeyCode.Q) then
				if (FistControl == false) then
					FistControl = true;
					Start();
					pcall(function()
						localCharacter.RightHand.RightWrist:Remove();
						localCharacter.LeftHand.LeftWrist:Remove();
					end);
				elseif (FistControl == true) then
					FistControl = false;
					Pause();
					local rightwrist  = Instance.new("Motor6D");
					rightwrist.Name   = "RightWrist";
					rightwrist.Parent = localCharacter.RightHand;
					rightwrist.C0     = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
					rightwrist.C1     = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
					rightwrist.Part0  = localCharacter.RightLowerArm;
					rightwrist.Part1  = localCharacter.RightHand;
	
					local leftwrist   = Instance.new("Motor6D");
					leftwrist.Name    = "LeftWrist";
					leftwrist.Parent  = localCharacter.LeftHand;
					leftwrist.C0      = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
					leftwrist.C1      = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
					leftwrist.Part0   = localCharacter.LeftLowerArm;
					leftwrist.Part1   = localCharacter.LeftHand;
				end;
			end;
		end);
end)

Stopsignreach.Name = "Stopsign reach"
Stopsignreach.Parent = PlayerFrame
Stopsignreach.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Stopsignreach.BorderColor3 = Color3.fromRGB(53, 53, 53)
Stopsignreach.BorderSizePixel = 3
Stopsignreach.Position = UDim2.new(0.63499999, 0, 0.677165329, 0)
Stopsignreach.Size = UDim2.new(0, 119, 0, 22)
Stopsignreach.Font = Enum.Font.ArialBold
Stopsignreach.Text = "Stopsign reach"
Stopsignreach.TextColor3 = Color3.fromRGB(74, 74, 74)
Stopsignreach.TextSize = 20.000
Stopsignreach.MouseButton1Click:connect(function()
sendNotif("", "Enabled stopsign reach!");
	game.Players.LocalPlayer.Backpack["[StopSign]"].Handle.Size = Vector3.new(100, 100, 100)
end)

FPSBOOST.Name = "FPS BOOST"
FPSBOOST.Parent = PlayerFrame
FPSBOOST.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
FPSBOOST.BorderColor3 = Color3.fromRGB(53, 53, 53)
FPSBOOST.BorderSizePixel = 3
FPSBOOST.Position = UDim2.new(0.0749999434, 0, 0.818897665, 0)
FPSBOOST.Size = UDim2.new(0, 173, 0, 22)
FPSBOOST.Font = Enum.Font.ArialBold
FPSBOOST.Text = "FPS BOOST"
FPSBOOST.TextColor3 = Color3.fromRGB(255, 0, 0)
FPSBOOST.TextSize = 20.000
FPSBOOST.MouseButton1Click:connect(function()
local a = game
	local b = a.Workspace
	local c = a.Lighting
	local d = b.Terrain
	d.WaterWaveSize = 0
	d.WaterWaveSpeed = 0
	d.WaterReflectance = 0
	d.WaterTransparency = 0
	c.GlobalShadows = false
	c.FogEnd = 9e9
	settings().Rendering.QualityLevel = "Level01"
	for e, f in pairs(a:GetDescendants()) do
		if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
			f.Reflectance = 0
		elseif f:IsA("Decal") or f:IsA("Texture") then
			f.Transparency = 0
		elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
			f.Lifetime = NumberRange.new(0)
		elseif f:IsA("Explosion") then
			f.BlastPressure = 0
			f.BlastRadius = 0
		elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
			f.Enabled = false
		elseif f:IsA("MeshPart") then
			f.Reflectance = 0
		end
		if f:IsA("Fire") then
			f:Destroy()
			wait()
		end
		if string.find(f.Name:lower(), "door") then
			f:Destroy()
		end
		if string.find(f.Name:lower(), "tree") then
			f:Destroy()
		end
		if f:IsA("ParticleEmitter") then
			f:Destroy()
			wait()
		end
	end
	for e, g in pairs(c:GetChildren()) do
		if
			g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or
				g:IsA("DepthOfFieldEffect")
		then
			g.Enabled = false
		end
	end
	sethiddenproperty(game.Lighting, "Technology", "Compatibility")
end)

Tornado.Name = "Tornado"
Tornado.Parent = PlayerFrame
Tornado.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Tornado.BorderColor3 = Color3.fromRGB(53, 53, 53)
Tornado.BorderSizePixel = 3
Tornado.Position = UDim2.new(0.63499999, 0, 0.818897665, 0)
Tornado.Size = UDim2.new(0, 173, 0, 22)
Tornado.Font = Enum.Font.ArialBold
Tornado.Text = "Tornado"
Tornado.TextColor3 = Color3.fromRGB(255, 0, 0)
Tornado.TextSize = 20.000

KnifeReach.Name = "Knife Reach"
KnifeReach.Parent = PlayerFrame
KnifeReach.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
KnifeReach.BorderColor3 = Color3.fromRGB(53, 53, 53)
KnifeReach.BorderSizePixel = 3
KnifeReach.Position = UDim2.new(0.399999976, 0, 0.818897605, 0)
KnifeReach.Size = UDim2.new(0, 119, 0, 22)
KnifeReach.Font = Enum.Font.ArialBold
KnifeReach.Text = "Knife Reach"
KnifeReach.TextColor3 = Color3.fromRGB(74, 74, 74)
KnifeReach.TextSize = 20.000
KnifeReach.MouseButton1Click:connect(function()
sendNotif("", "Enabled knife reach!");
	game.Players.LocalPlayer.Backpack["[Knife]"].Handle.Size = Vector3.new(100, 100,100)
	end)

credits.Name = "credits"
credits.Parent = Main
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 1.000
credits.BorderSizePixel = 0
credits.Position = UDim2.new(0, 0, 0.107361965, 0)
credits.Size = UDim2.new(0, 600, 0, 254)
credits.Font = Enum.Font.ArialBold
credits.Text = "Thank you for choosing Legacy X, scripted By Owner: SploitGodZ and BillCosby, Scripters: Corpse, Vanis, Sora (security whitelist / hwid). Please Select a tab at the bottom to get started!"
credits.TextColor3 = Color3.fromRGB(38, 38, 38)
credits.TextScaled = true
credits.TextSize = 14.000
credits.TextWrapped = true

--scripts:

sendNotif("Loaded!", "Credits to Owners: Bill Cosby, SploitGodZ. Scripters: Corpse and Vanis and Sora", 15);
sendNotif("HWID", "HWID Currently still worked on!", 15);
sendNotif("Security", "Some things might be patched due to da hood updates/ patches", 15);
sendNotif("Security", "Owner: SploitGodZ and BillCosby", 15);
sendNotif("Security", "You Bought this for 400 robux!", 15);
sendNotif("Security", "UPDATED", 15);
sendNotif("Security", "UPDATED", 15);
sendNotif("Security", "Legacy X Switched To Gui mode", 15);
sendNotif("Security", "CMDS Removed, due to bugs!!!", 15);
sendNotif("Security", "CMDS may come back!!", 15);

game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal("Health"):Connect(function()
	sendNotif("DANGER", "Health Going Down, Go to a safe Spot!", 15);
end);

-- // Keybind
local Toggled = false
game:GetService("UserInputService").InputBegan:connect(function(Key, g)
	if g then return end;
	if Key.KeyCode == Enum.KeyCode.V then
		if Toggled == false then
			Toggled = true
			Main.Visible = false
			sendNotif("GUI", "Ui = False", 15);
		elseif Toggled == true then
			Toggled = false;
			Main.Visible = true;
			sendNotif("GUI", "Ui = true", 15);
		end;
	end;
end)

--/ Functions

function GetShortenedPlrFromName(name) -- uses string.sub to see if the typed in name fits and matches somewhere in the player's name, uncase sensitive. returns a table where the player is inside because of the all and others support
	name = string.lower(tostring(name))

	if not game:GetService("Players"):FindFirstChild("all") and name == "all" or game:GetService("Players"):FindFirstChild("all") and game:GetService("Players"):FindFirstChild("all").ClassName ~= "Player" and name == "all" then
		return game:GetService("Players"):GetPlayers()
	end
	if not game:GetService("Players"):FindFirstChild("others") and name == "others" or game:GetService("Players"):FindFirstChild("others") and game:GetService("Players"):FindFirstChild("others").ClassName ~= "Player" and name == "others" then
		name = game:GetService("Players"):GetPlayers()
		for i, v in pairs(name) do
			if v == LocalPlayer then
				table.remove(name, i)
			end
		end
		return name
	end

	for i, v in pairs(game.Players:GetPlayers()) do
		if string.lower(string.sub(v.Name, 1, #name)) == name then
			return {v}
		end
	end

	return nil
end

--Lock and unlock functions:


LockPlr.MouseButton1Down:Connect(function()
	if GetShortenedPlrFromName(TextBox.Text) ~= nil then
		for i, v in pairs(GetShortenedPlrFromName(TextBox.Text)) do
			LockedPlayer = v
			break
		end
	end
end)

UnlockPlr.MouseButton1Down:Connect(function()
	LockedPlayer = nil
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if LockedPlayer ~= nil and LockedPlayer.Character and LockedPlayer.Character:FindFirstChildOfClass("Humanoid") and LockedPlayer.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
		for i, v in pairs(LocalPlayer.Character:GetDescendants()) do
			if v.ClassName == "Motor6D" and (v.Name == "RightWrist" or v.Name == "LeftWrist") then
				v:Destroy()
			end
		end
		if LocalPlayer ~= nil and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("RightHand") and LocalPlayer.Character:FindFirstChild("LeftHand") and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health > 0 then

			if LockedPlayer.Character.PrimaryPart and not LockedPlayer.Character:FindFirstChild("HumanoidRootPart") then
				LocalPlayer.Character.RightHand.CFrame = LockedPlayer.Character.PrimaryPart.CFrame
				LocalPlayer.Character.LeftHand.CFrame = LockedPlayer.Character.PrimaryPart.CFrame
			elseif LockedPlayer.Character:FindFirstChild("HumanoidRootPart") then
				LocalPlayer.Character.RightHand.CFrame = LockedPlayer.Character.HumanoidRootPart.CFrame
				LocalPlayer.Character.LeftHand.CFrame = LockedPlayer.Character.HumanoidRootPart.CFrame
			end

		end
	end
end)

--rpg lock
delay(0, function()
	while wait() do

		pcall(function()
			local target = TextBox.Text
			if _G.RPGIDKBOSS == true and workspace.Players:FindFirstChild(target) then
				local lol = game.Workspace.Ignored:FindFirstChild("Launcher")

				if lol:FindFirstChildOfClass("BodyVelocity") then
					wait()
					lol.BodyVelocity:Destroy()
				end

				if lol:FindFirstChild("BodyVelocity") == nil then
					lol.CFrame = CFrame.new(workspace.Players[target].Head.CFrame.X,workspace.Players[target].Head.CFrame.Y+6.5,workspace.Players[target].Head.CFrame.Z)
				end

			elseif game.Workspace.Ignored:FindFirstChild("Handle") and _G.RPGIDKBOSS == true then
				local lol = game.Workspace.Ignored:FindFirstChild("Handle")

				if lol:FindFirstChild("Pin") then
					lol.CFrame = CFrame.new(workspace.Players[target].Head.CFrame.X,workspace.Players[target].Head.CFrame.Y+8,workspace.Players[target].Head.CFrame.Z)
				end
			end
		end)
	end
end)
end)
