if game.CoreGui:FindFirstChild("CypherBrew") then
	game.CoreGui:FindFirstChild("CypherBrew"):Destroy()
end;

-- Instances:

local CypherBrew = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local InputBox = Instance.new("TextBox")

--Properties:

CypherBrew.Name = "CypherBrew"
CypherBrew.Parent = game.CoreGui
CypherBrew.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = CypherBrew
Main.Active = true
Main.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.195954397, 0, 0.340033501, 0)
Main.Size = UDim2.new(0, 565, 0, 298)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 565, 0, 30)

ImageLabel.Parent = Top
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 0, -0.0333333351, 0)
ImageLabel.Size = UDim2.new(0, 34, 0, 31)
ImageLabel.Image = "http://www.roblox.com/asset/?id=5040009517"

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0601769909, 0, -0.0333333351, 0)
TextLabel.Size = UDim2.new(0, 173, 0, 31)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Cypherbrew Command Prompt"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 15.000

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.0975391492, 0)
TextLabel_2.Size = UDim2.new(0, 179, 0, 22)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Command Prompt [Version 4.0]"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 15.000

TextLabel_3.Parent = Main
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.010619469, 0, 0.171364605, 0)
TextLabel_3.Size = UDim2.new(0, 244, 0, 16)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "(c) 2020 Cypherbrew Corp. All rights reserved"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 15.000

TextLabel_4.Parent = Main
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0, 0, 0.282102853, 0)
TextLabel_4.Size = UDim2.new(0, 106, 0, 22)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "C:\\Users\\Admin>"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 15.000

InputBox.Parent = Main
InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox.BackgroundTransparency = 1.000
InputBox.BorderSizePixel = 0
InputBox.Position = UDim2.new(0.187610626, 0, 0.282102853, 0)
InputBox.Size = UDim2.new(0, 200, 0, 22)
InputBox.Font = Enum.Font.SourceSans
InputBox.PlaceholderText = "-- Command Here, Made By SploitGodZ"
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.TextSize = 14.000
InputBox.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function PMCARTO_fake_script() -- Main.Dragify 
	local script = Instance.new('LocalScript', Main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(PMCARTO_fake_script)()


local cosbySettings = {
	Version = 'v2.4.2';
	ChatWaitTime = 0.40;--Waits an amount of time before chatting after a command
	PrefixOfOutput = "[CypherBrew]";
	SilentMode = false;-- Forces Commands to not send Outputs (Messages) for commands such as "cash"
	Toggle = false;
	Hotkey = 'V';
	Discord = 'WsUt4pEHyn';
};

local notifSettings = {
	["NotifTitle"] = "[CypherBrew] "; -- // put a fucking space after mf
	["NotifIcon"] = "http://www.roblox.com/asset/?id=6082548053";
	["NotifSound"] = "rbxassetid://3398620867";
};


-- // Variables
local Players = game:GetService("Players");
local Player = Players.LocalPlayer;
local localPlayer = Players.LocalPlayer;
local localCharacter = localPlayer.Character;
local Mouse = Player:GetMouse();
local Box = CommandBox;
local List = Commands;
local Back = Background;
local Layout = UIListLayout;
local Template = Template


-- // Services
local TweenService = game:GetService("TweenService");
local UserInput = game:GetService("UserInputService");


-- // Loop Variables
local loopVariables = {
	["Antibag"] = false;
	["Antislow"] = false;
	["Antistomp"] = false;
	["Antiflash"] = false;
	["Godbullet"] = false;
	["Godblock"] = false;
	["Walkspeed"] = false;-- // not a loop but yk
	["Jumppower"] = false;-- // not a loop but yk
	["Flying"] = false;-- // not a loop but yk
	["Noclip"] = false;
	["Freefists"] = false;
	["Targetting"] = false;
	["Arresting"] = false;
	["Infinitezoom"] = false;
	["Airstrike"] = false;
	["Toolreach"] = false;
	["Fistreach"] = false;
	["Rpglock"] = false;
	["Spectating"] = false;
	["Annoying"] = false;
	["Autostomp"] = false;
	["AutoGrabMoneyInMagnitude"] = false;
}

-- // Preset default commands.
local cosbyCommands = {
	["ping"] = function(args)
		sendOutput("pong");
	end;

	["echo"] = function(...)
		local tabulatedTuple = {...};
		print(table.concat(tabulatedTuple, " "));
	end;
}

-- // Utility
	function split(s, d) 
		local content = {} 
		for v in s:gmatch("[^"..d.."]+") do 
			table.insert(content, v);
		end
		return content
	end;

	function getRoot(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
		return rootPart
	end

	function findPlayer(name)
		name = name:lower();
		if (name == 'me') then
			return game:GetService'Players'.LocalPlayer;
		end;
		for i, v in pairs(game:GetService'Players':GetPlayers()) do
			if (v.Name:lower():find(name) == 1) then
				return v;
			end;
		end;
	end;

	function TweenFramePosition(frame, endudim2, tweentime)
		local goal = {};
		goal.Position = endudim2;
		local info = TweenInfo.new(tweentime);        
		local a = TweenService:Create(frame, info, goal);
		a:Play();
	end;


-- // Compwnter's Utilities
local r = game.Workspace.Cashiers:GetChildren()
for s = 1, #r do
	local t = r[s]
	t.Name = "CASHIER"..s
end;
for u, v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA("Seat") then
		v:Destroy()
	end
end;
for w, x in pairs(game.Workspace.MAP.Map["Da Furniture"]:GetChildren()) do
	if x then
		if x.Name == "Part" then
			x.CanCollide = false
		end
	end
end;
for y, z in pairs(game.Workspace.MAP.Map["Ubi's Resturant"]:GetChildren()) do
	if z then
		if z.Name == "Part" then
			if z.Size ~= Vector3.new(48, 3.25, 80) then
				z.CanCollide = false
			end
		end
	end
end;
for A, B in pairs(game.Workspace.MAP.Map["Gas Station"]["Gas Station"]:GetChildren()) do
	if B then
		if B.Name == "Part" then
			if B.Size ~= Vector3.new(68, 1, 56) then
				B.CanCollide = false
			end
		end
	end
end;
function toTarget(d, C, D)
	local E = game:service"TweenService"
	local F = TweenInfo.new((C - d).Magnitude / 170, Enum.EasingStyle.Quad)
	local G = tick()
	local H, I = pcall(function()
		local H = E:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], F, {
			CFrame = D
		})
		H:Play()
	end)
	if not H then
		return I
	end
end;
function ToShoes(d, C, D)
	local E = game:service"TweenService"
	local F = TweenInfo.new((C - d).Magnitude / 50, Enum.EasingStyle.Quad)
	local G = tick()
	local H, I = pcall(function()
		local H = E:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], F, {
			CFrame = D
		})
		H:Play()
	end)
	if not H then
		return I
	end
end;
local function J(K, L)
	local M = (K.Position - L.Position).magnitude;
	if M <= 50 then
		fireclickdetector(L:FindFirstChild("ClickDetector"), 4)
		return M
	end
end;

function bag(name) -- // This is shit, but its meant to work for all exploits + it gets your target and only them (credits to krnlly cuz i kinda stole this from him but imrpoved it a bit.)
	if (game:GetService("Players")[name].Character.BodyEffects["K.O"].Value == false) then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop['[BrownBag] - $25'].Head.CFrame;
		wait(.30);
		fireclickdetector(game:GetService("Workspace").Ignored.Shop['[BrownBag] - $25'].ClickDetector);
		game:GetService("Players").LocalPlayer.Backpack:WaitForChild("[BrownBag]").Parent = game:GetService("Players").LocalPlayer.Character;
		repeat
			wait();
			getRoot(game:GetService("Players")[name].Character).CFrame = getRoot(game:GetService("Players").LocalPlayer.Character).CFrame + Vector3.new(1, 3, 0);
			game:GetService("Players").LocalPlayer.Character["[BrownBag]"]:Activate();
		until game:GetService("Players")[name].Character:FindFirstChild("Christmas_Sock");
		sendNotif("", "Successfully Bagged "..name, 15);
	else
		sendNotif("", name.." Is Currently Knocked.", 15);
	end;
end;

function info(name) -- // This is shit, but its meant to work for all exploits + it gets your target and only them (credits to krnlly cuz i kinda stole this from him but imrpoved it a bit.) (corpse)
	print("------------------")
	print(""..name.." Has:")
	print("------------------")
	for i, v in pairs(game:GetService("Players")[name].Backpack:GetDescendants()) do
		if v:IsA("Tool") then
			print(""..v.Name.."")
		end
	end
	print("------------------")
	print(""..name.." Infomation:")
	print("------------------")
	print("Account Age: "..game:GetService("Players")[name].AccountAge..".")
	print("User ID: "..game:GetService("Players")[name].UserId..".")
	print("Cash: $"..game:GetService("Players")[name].DataFolder.Currency.Value..".")
	print("Wanted: "..game:GetService("Players")[name].DataFolder.Information.Wanted.Value..".")
	print("Shoes Collected: "..game.Players.LocalPlayer.Character.BodyEffects.ShoesCollect.Value..".")
	print("Shirt Template: "..workspace.Players[name].Shirt.ShirtTemplate..".")
	print("Pants Template: "..workspace.Players[name].Pants.PantsTemplate..".")
	print("Crew ID: "..game:GetService("Players")[name].DataFolder.Information.Crew.Value..".")
	print("Sound ID: "..workspace.Players[name].LowerTorso.BOOMBOXSOUND.SoundId..".")
	print("------------------")
end;

function sendNotif(title, description, duration)
	local milf = coroutine.wrap(function()
		local notifSound = Instance.new("Sound", game.CoreGui);
		notifSound.SoundId = notifSettings.NotifSound;
		notifSound:Play();
		wait(4);
		notifSound:Destroy();
	end);
	milf()
	game.StarterGui:SetCore("SendNotification", {
		Title = notifSettings.NotifTitle..title;
		Text = description;
		Icon = notifSettings.NotifIcon;
		Duration = duration;
	})
end;

respawnPlr = function()
	local plr = game:GetService("Players").LocalPlayer
	local char = plr.Character
	local oldPos = char.HumanoidRootPart.CFrame;
	char:ClearAllChildren()
	local newChar = Instance.new("Model", workspace)
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
	game:service'Players'.LocalPlayer.Character:BreakJoints()
	wait(game:service'Players'.RespawnTime + 0.5)
	wait(0.30)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldPos
	wait(0.5)
end

function sendOutput(str)
	if not str then
		return
	end;
	wait(cosbySettings.ChatWaitTime);
	if str:match("\n") then
		for _, line in next, split(str, "\n") do
			if not cosbySettings.SilentMode then
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(cosbySettings.PrefixOfOutput..line, 'All');
			end
		end
	else
		if not cosbySettings.SilentMode then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(cosbySettings.PrefixOfOutput..str, 'All');
		end
	end
end;

function addCommand(args)
	cosbyCommands[args["Name"]] = args["Function"];
end

function runCommand(str)
	if not str then return end;
	str = string.sub(str, 1, #str):lower();
	local tbl_Split = split(str, " ");
	local str_Command = tbl_Split[1];
	local tbl_Args = {};
	for index, value in next, tbl_Split do
		if (index ~= 1) then
			table.insert(tbl_Args, value);
		end
	end
	(cosbyCommands[str_Command] or function(...)
	end)(unpack(tbl_Args));
end;

-- // Command Bar Stuff
InputBox.FocusLost:Connect(function(enter)
		if not enter then InputBox.Text = ''; return; end;
		runCommand(InputBox.Text);
		InputBox.Text = '';
end);

game:GetService('UserInputService').InputBegan:Connect(function(key, e)
	if (e) then return end;
	if (key.KeyCode == Enum.KeyCode.V) then
		InputBox:CaptureFocus();
		wait(.10);
		InputBox.Text = '';
	end;
end);

-- // Commands
do
	local localPlayer = game:GetService("Players").localPlayer;
	local lplayer = localPlayer
	local localCharacter = localPlayer.Character;

	-- // discord
	addCommand({
		["Name"] = "discord";
		["Function"] = function(plr)
			setclipboard("https://discord.gg/"..cosbySettings.Discord)
			sendNotif("", "Copied Discord Invite To Clipboard (https://discord.gg/"..cosbySettings.Discord..")", 15);
		end;
	});

	-- // to
	addCommand({
		["Name"] = "goto";
		["Function"] = function(plr)
			local target = findPlayer(plr);
			sendOutput(" Teleporting to "..tostring(game:GetService("Players")[target.Name])..'...');
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[target.Name].Character.HumanoidRootPart.CFrame;
		end;
	});

	addCommand({
		["Name"] = "to";
		["Function"] = function(plr)
			local target = findPlayer(plr);
			sendOutput(" Teleporting to "..tostring(game:GetService("Players")[target.Name])..'...');
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[target.Name].Character.HumanoidRootPart.CFrame;
		end;
	});

	addCommand({
		["Name"] = "teleport";
		["Function"] = function(plr)
			local target = findPlayer(plr);
			sendOutput(" Teleporting to "..tostring(game:GetService("Players")[target.Name])..'...');
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[target.Name].Character.HumanoidRootPart.CFrame;
		end;
	});

	addCommand({
		["Name"] = "tp";
		["Function"] = function(plr)
			local target = findPlayer(plr);
			sendOutput(" Teleporting to "..tostring(game:GetService("Players")[target.Name])..'...');
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[target.Name].Character.HumanoidRootPart.CFrame;
		end;
	});

	addCommand({
		["Name"] = "annoy";
		["Function"] = function(plr)
			local target = findPlayer(plr);
			if (loopVariables.Annoying == false) then
				loopVariables.Annoying = true;
				sendOutput(" Annoying "..tostring(game:GetService("Players")[target.Name])..'...');
			else
				loopVariables.Annoying = false;
				sendOutput(" Stopped Annoying "..tostring(game:GetService("Players")[target.Name])..'...');
			end;
			while true do
				wait()
				if loopVariables.Annoying == true then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[target.Name].Character.HumanoidRootPart.CFrame;
				end
			end
		end;
	});

	-- // cmds
	addCommand({
		["Name"] = "cmds";
		["Function"] = function(plr)
			for i, v in next, cosbyCommands do
				print(i);
			end;
			sendNotif("", "Printed Commands to Console (press F9)");
		end;
	});

	addCommand({
		["Name"] = "commands";
		["Function"] = function(plr)
			for i, v in next, cosbyCommands do
				print(i);
			end;
			sendNotif("", "Printed Commands to Console (press F9)");
		end;
	});

	addCommand({
		["Name"] = "hlp";
		["Function"] = function(plr)
			for i, v in next, cosbyCommands do
				print(i);
			end;
			sendNotif("", "Printed Commands to Console (press F9)");
		end;
	});

	addCommand({
		["Name"] = "help";
		["Function"] = function(plr)
			for i, v in next, cosbyCommands do
				print(i);
			end;
			sendNotif("", "Printed Commands to Console (press F9)");
		end;
	});

	-- // rejoin
	addCommand({
		["Name"] = "rejoin";
		["Function"] = function()
			if (#Players:GetPlayers() <= 1) then
				game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
			else
				game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer);
			end
		end;
	});

	addCommand({
		["Name"] = "rj";
		["Function"] = function()
			if (#Players:GetPlayers() <= 1) then
				game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
			else
				game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer);
			end
		end;
	});

	addCommand({
		["Name"] = "antibag";
		["Function"] = function() -- // Pretty crazy how this doesn't need a global variable
			if (loopVariables.Antibag == false) then
				loopVariables.Antibag = true;
				sendNotif("", "Antibag Enabled.", 15);
			else
				loopVariables.Antibag = false;
				sendNotif("", "Antibag Disabled.", 15);
			end;

			while loopVariables.Antibag do
				wait();
				pcall(function()
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("Christmas_Sock"):Destroy();
				end);
			end;
		end;
	});

	addCommand({
		["Name"] = "antislow";
		["Function"] = function()
			if (loopVariables.Antislow == false) then
				loopVariables.Antislow = true;
				sendNotif("", "Antislow Enabled.", 15);
			else
				loopVariables.Antislow = false;
				sendNotif("", "Antislow Disabled.", 15);
			end;

			game:GetService("Players").LocalPlayer.Character.BodyEffects.Movement.ChildAdded:Connect(function(child)
				wait(0.01)
				if (loopVariables.Antislow == true) then
					if (child.Name == "NoJumping" or child.Name == "ReduceWalk" or child.Name == "NoWalkSpeed") then 
						child:Destroy();
					end;
				end;
			end);
		end;
	});

	addCommand({
		["Name"] = "antistomp";
		["Function"] = function()
			if (loopVariables.Antistomp == false) then
				loopVariables.Antistomp = true;
				sendNotif("", "Antistomp Enabled.", 15);
			else
				loopVariables.Antistomp = false;
				sendNotif("", "Antistomp Disabled.", 15);
			end;
			pcall(function()
				game:GetService("RunService"):BindToRenderStep("rrrrrrrrrrr", 2000, function()
					pcall(function()
						if game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 30 and loopVariables.Antistomp == true then
							game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
							game:GetService("Players").LocalPlayer.Character.Humanoid:Destroy()
							workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character
							wait()
							local Model = Instance.new("Model", game:GetService("CorePackages"))
							Instance.new("Part", Model).Name = "Torso"
							Instance.new("Part", Model).Name = "Head"
							Instance.new("Humanoid", Model).Name = "Humanoid"
							game:GetService("Players").LocalPlayer.Character = Model
						end
					end)
				end)
			end)
		end;
	});

	addCommand({
		["Name"] = "antiafk";
		["Function"] = function()
			local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
			end)
		end;
	});

	-- // set prefix
	addCommand({
		["Name"] = "setprefix";
		["Function"] = function(str)
			cosbySettings.Prefix = str;
			for _, v in next, List:GetChildren() do
				if v:IsA("TextLabel") then
					v:Remove()
				end;
			end;

			for i, c in next, cosbyCommands do
				local a = Template:Clone();
				a.Name = i;
				a.Text = cosbySettings.Prefix..i;
				a.Parent = List;
				a.Visible = true;
			end;
			sendOutput(" Prefix Has Been Set To: "..cosbySettings.Prefix);
		end;
	});

	-- // Da Hood Chat Cash
	addCommand({
		["Name"] = "cash";
		["Function"] = function(str)
			local target = findPlayer(str);
			sendOutput(target.Name.." Has $"..tostring(Players[target.Name].DataFolder.Currency.Value));
			sendNotif("", target.Name.." Has $"..tostring(Players[target.Name].DataFolder.Currency.Value), 15);
		end;
	});

	addCommand({
		["Name"] = "info";
		["Function"] = function(str)
			info(findPlayer(str).Name);
			sendNotif("", "Info Printed To Console", 15);
		end;
	});

	addCommand({
		["Name"] = "information";
		["Function"] = function(str)
			info(findPlayer(str).Name);
			sendNotif("", "Info Printed To Console", 15);
		end;
	});

	-- // Chat Output
	addCommand({
		["Name"] = "output";
		["Function"] = function(str)
			cosbySettings.PrefixOfOutput = str.." ";
			sendOutput(" Output Set To: "..cosbySettings.PrefixOfOutput);
		end;
	});

	-- // prefix
	addCommand({
		["Name"] = "prefix";
		["Function"] = function(str)
			if cosbySettings.Prefix == "" then
				sendOutput(" No Prefix Is Set.");
			else
				sendOutput(" Prefix is: "..cosbySettings.Prefix);
			end
		end;
	});

	-- // silent
	addCommand({
		["Name"] = "silent";
		["Function"] = function(str)
			if (str == "on") then
				cosbySettings.SilentMode = true;
			elseif (str == "off") then
				cosbySettings.SilentMode = false;
				sendOutput("SilentMode has been disabled.");
			end
		end;
	});

	-- // walkspeed
	addCommand({
		["Name"] = "walkspeed";
		["Function"] = function(str)
			if (loopVariables.Walkspeed == false) then
				loopVariables.Walkspeed = true;
				Player.Character:FindFirstChildOfClass("Humanoid").Name = math.random(50, 200);
				Player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = str
				sendNotif("", "Set Walkspeed to: "..str, 15);
			else
				loopVariables.Walkspeed = false;
				Player.Character:FindFirstChildOfClass("Humanoid").Name = "Humanoid";
				Player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16;
				sendNotif("", "Set Walkspeed to default.", 15);
			end;
		end;
	});

	addCommand({
		["Name"] = "ws";
		["Function"] = function(str)
			if (loopVariables.Walkspeed == false) then
				loopVariables.Walkspeed = true;
				Player.Character:FindFirstChildOfClass("Humanoid").Name = math.random(50, 200);
				Player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = str
				sendNotif("", "Set Walkspeed to: "..str, 15);
			else
				loopVariables.Walkspeed = false;
				Player.Character:FindFirstChildOfClass("Humanoid").Name = "Humanoid";
				Player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16;
				sendNotif("", "Set Walkspeed to default.", 15);
			end;
		end;
	});

	-- // jumppower
	addCommand({
		["Name"] = "jumppower";
		["Function"] = function(str)
			if (loopVariables.Jumppower == false) then
				loopVariables.Jumppower = true;
				Player.Character:FindFirstChildOfClass("Humanoid").Name = math.random(50, 200);
				Player.Character:FindFirstChildOfClass("Humanoid").JumpPower = str
				sendNotif("", "Set Jumppower to: "..str, 15);
			else
				loopVariables.Jumppower = false;
				Player.Character:FindFirstChildOfClass("Humanoid").Name = "Humanoid";
				Player.Character:FindFirstChildOfClass("Humanoid").JumpPower = 16;
				sendNotif("", "Set Jumppower to default.", 15);
			end;
		end;
	});

	addCommand({
		["Name"] = "jp"; -- Just Playing
		["Function"] = function(str)
			if (loopVariables.Jumppower == false) then
				loopVariables.Jumppower = true;
				Player.Character:FindFirstChildOfClass("Humanoid").Name = math.random(50, 200);
				Player.Character:FindFirstChildOfClass("Humanoid").JumpPower = str
				sendNotif("CypherBrew", "Set Jumppower to: "..str, 15);
			else
				loopVariables.Jumppower = false;
				Player.Character:FindFirstChildOfClass("Humanoid").Name = "Humanoid";
				Player.Character:FindFirstChildOfClass("Humanoid").JumpPower = 50;
				sendNotif("CypherBrew", "Set Jumppower to default.", 15);
			end;
		end;
	});

	-- // godblock
	addCommand({
		["Name"] = "godblock";
		["Function"] = function()
			if (loopVariables.Godblock == false) then
				loopVariables.Godblock = true;
				sendNotif("CypherBrew", "Godblock Enabled.", 15);
				Player.Character:FindFirstChild("BodyEffects"):FindFirstChild("Defense"):Destroy();
			else
				loopVariables.Godblock = false;
				local shit = Instance.new("NumberValue", Player.Character:FindFirstChild("BodyEffects"));
				shit.Name = "Defense";
				sendNotif("CypherBrew", "Godblock Disabled.", 15);
			end;
		end;
	});

	-- // godbullet
	addCommand({
		["Name"] = "godbullet";
		["Function"] = function()
			if (loopVariables.Godbullet == false) then
				loopVariables.Godbullet = true;
				sendNotif("CypherBrew", "Godbullet Enabled.", 15);
				Player.Character:FindFirstChild("BodyEffects"):FindFirstChild("Defense"):Destroy();
				Player.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor"):Destroy();
			else
				loopVariables.Godbullet = false;
				local shit = Instance.new("NumberValue", Player.Character:FindFirstChild("BodyEffects"));
				shit.Name = "Defense";
				local shit = Instance.new("IntValue", Player.Character:FindFirstChild("BodyEffects"));
				shit.Name = "Armor";
				sendNotif("CypherBrew", "Godbullet Disabled.", 15);
			end;
		end;
	});

	-- // antiflash
	addCommand({
		["Name"] = "antiflash";
		["Function"] = function()
			if (loopVariables.Antiflash == false) then
				loopVariables.Antiflash = true;
				sendNotif("CypherBrew", "Antiflash Enabled.", 15);
			else
				loopVariables.Antiflash = false;
				sendNotif("CypherBrew", "Antiflash Disabled.", 15);
			end;

			while loopVariables.Antiflash do
				wait();
				pcall(function()
					Player.PlayerGui:FindFirstChild("MainScreenGui"):FindFirstChild("whiteScreen"):Destroy();
				end);
			end;
		end;
	});

	-- // freefists
	addCommand({
		["Name"] = "freefists";
		["Function"] = function()
			if (loopVariables.Freefists == false) then
				loopVariables.Freefists = true;
				sendNotif("CypherBrew", "Freefists Enabled.", 15);
				Player.Character:FindFirstChild("LeftHand")["LeftWrist"]:Destroy();
				Player.Character:FindFirstChild("RightHand")["RightWrist"]:Destroy();
				game:GetService("RunService").RenderStepped:Connect(function()
					if (loopVariables.Freefists == true) then
						Player.Character:FindFirstChild("LeftHand").CFrame = CFrame.new(Mouse.Hit.p);
						Player.Character:FindFirstChild("RightHand").CFrame = CFrame.new(Mouse.Hit.p);
					end;
				end);
			else
				loopVariables.Freefists = false;
				sendNotif("CypherBrew", "Freefists Disabled.", 15)
				local rightwrist = Instance.new("Motor6D");
				rightwrist.Name = "RightWrist";
				rightwrist.Parent = Player.Character.RightHand;
				rightwrist.C0 = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.C1 = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.Part0 = Player.Character.RightLowerArm;
				rightwrist.Part1 = Player.Character.RightHand;

				local leftwrist = Instance.new("Motor6D");
				leftwrist.Name = "LeftWrist";
				leftwrist.Parent = Player.Character.LeftHand;
				leftwrist.C0 = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.C1 = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.Part0 = Player.Character.LeftLowerArm;
				leftwrist.Part1 = Player.Character.LeftHand;
			end;
		end;
	});

	addCommand({
		["Name"] = "freefist";
		["Function"] = function()
			if (loopVariables.Freefists == false) then
				loopVariables.Freefists = true;
				sendNotif("CypherBrew", "Freefists Enabled.", 15);
				Player.Character:FindFirstChild("LeftHand")["LeftWrist"]:Destroy();
				Player.Character:FindFirstChild("RightHand")["RightWrist"]:Destroy();
				game:GetService("RunService").RenderStepped:Connect(function()
					if (loopVariables.Freefists == true) then
						Player.Character:FindFirstChild("LeftHand").CFrame = CFrame.new(Mouse.Hit.p);
						Player.Character:FindFirstChild("RightHand").CFrame = CFrame.new(Mouse.Hit.p);
					end;
				end);
			else
				loopVariables.Freefists = false;
				sendNotif("", "Freefists Disabled.", 15)
				local rightwrist = Instance.new("Motor6D");
				rightwrist.Name = "RightWrist";
				rightwrist.Parent = Player.Character.RightHand;
				rightwrist.C0 = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.C1 = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.Part0 = Player.Character.RightLowerArm;
				rightwrist.Part1 = Player.Character.RightHand;

				local leftwrist = Instance.new("Motor6D");
				leftwrist.Name = "LeftWrist";
				leftwrist.Parent = Player.Character.LeftHand;
				leftwrist.C0 = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.C1 = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.Part0 = Player.Character.LeftLowerArm;
				leftwrist.Part1 = Player.Character.LeftHand;
			end;
		end;
	});

	addCommand({
		["Name"] = "freefist";
		["Function"] = function()
			if (loopVariables.Freefists == false) then
				loopVariables.Freefists = true;
				sendNotif("CypherBrew", "Freefists Enabled.", 15);
				Player.Character:FindFirstChild("LeftHand")["LeftWrist"]:Destroy();
				Player.Character:FindFirstChild("RightHand")["RightWrist"]:Destroy();
				game:GetService("RunService").RenderStepped:Connect(function()
					if (loopVariables.Freefists == true) then
						Player.Character:FindFirstChild("LeftHand").CFrame = CFrame.new(Mouse.Hit.p);
						Player.Character:FindFirstChild("RightHand").CFrame = CFrame.new(Mouse.Hit.p);
					end;
				end);
			else
				loopVariables.Freefists = false;
				sendNotif("CypherBrew", "Freefists Disabled.", 15)
				local rightwrist = Instance.new("Motor6D");
				rightwrist.Name = "RightWrist";
				rightwrist.Parent = Player.Character.RightHand;
				rightwrist.C0 = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.C1 = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.Part0 = Player.Character.RightLowerArm;
				rightwrist.Part1 = Player.Character.RightHand;

				local leftwrist = Instance.new("Motor6D");
				leftwrist.Name = "LeftWrist";
				leftwrist.Parent = Player.Character.LeftHand;
				leftwrist.C0 = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.C1 = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.Part0 = Player.Character.LeftLowerArm;
				leftwrist.Part1 = Player.Character.LeftHand;
			end;
		end;
	});

	addCommand({
		["Name"] = "freefist";
		["Function"] = function()
			if (loopVariables.Freefists == false) then
				loopVariables.Freefists = true;
				sendNotif("CypherBrew", "Freefists Enabled.", 15);
				Player.Character:FindFirstChild("LeftHand")["LeftWrist"]:Destroy();
				Player.Character:FindFirstChild("RightHand")["RightWrist"]:Destroy();
				game:GetService("RunService").RenderStepped:Connect(function()
					if (loopVariables.Freefists == true) then
						Player.Character:FindFirstChild("LeftHand").CFrame = CFrame.new(Mouse.Hit.p);
						Player.Character:FindFirstChild("RightHand").CFrame = CFrame.new(Mouse.Hit.p);
					end;
				end);
			else
				loopVariables.Freefists = false;
				sendNotif("CypherBrew", "Freefists Disabled.", 15)
				local rightwrist = Instance.new("Motor6D");
				rightwrist.Name = "RightWrist";
				rightwrist.Parent = Player.Character.RightHand;
				rightwrist.C0 = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.C1 = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.Part0 = Player.Character.RightLowerArm;
				rightwrist.Part1 = Player.Character.RightHand;

				local leftwrist = Instance.new("Motor6D");
				leftwrist.Name = "LeftWrist";
				leftwrist.Parent = Player.Character.LeftHand;
				leftwrist.C0 = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.C1 = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.Part0 = Player.Character.LeftLowerArm;
				leftwrist.Part1 = Player.Character.LeftHand;
			end;
		end;
	});

	-- // refresh
	addCommand({
		["Name"] = "refresh";
		["Function"] = function()
			respawnPlr();
		end;
	});

	addCommand({
		["Name"] = "respawn";
		["Function"] = function()
			respawnPlr();
		end;
	});

	addCommand({
		["Name"] = "re";
		["Function"] = function()
			respawnPlr();
		end;
	});

	-- Knife & Lockpick Finder
	addCommand({
		["Name"] = "findtools";
		["Function"] = function()
			local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
			for h, i in pairs(game.Workspace.Ignored.ItemsDrop:GetChildren()) do
				if i.Name == "Part" then
					if i:FindFirstChild("[LockPicker]") or i:FindFirstChild("[Knife]") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i.CFrame;
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - i.Position).Magnitude <= 50 then
							wait()
						end
					end
				end
			end;
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
		end;
	});

	addCommand({
		["Name"] = "gettools";
		["Function"] = function()
			local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
			for h, i in pairs(game.Workspace.Ignored.ItemsDrop:GetChildren()) do
				if i.Name == "Part" then
					if i:FindFirstChild("[LockPicker]") or i:FindFirstChild("[Knife]") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i.CFrame;
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - i.Position).Magnitude <= 50 then
							wait()
						end
					end
				end
			end;
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
		end;
	});

	addCommand({
		["Name"] = "tools";
		["Function"] = function()
			local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
			for h, i in pairs(game.Workspace.Ignored.ItemsDrop:GetChildren()) do
				if i.Name == "Part" then
					if i:FindFirstChild("[LockPicker]") or i:FindFirstChild("[Knife]") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i.CFrame;
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - i.Position).Magnitude <= 50 then
							wait()
						end
					end
				end
			end;
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
		end;
	});

	addCommand({
		["Name"] = "splitgrenade";
		["Function"] = function()

			local LocalPlayer = game:GetService("Players").LocalPlayer
			local char = LocalPlayer.Character
			local Ignored = game.workspace.Ignored
			local backpack = LocalPlayer.Backpack
			local x = 0
			local Grenade = "[Grenade]"
			local DroppedGrenade = "Handle"
			for i, v in pairs(backpack:GetChildren()) do
				if v.Name == Grenade then
					v.Parent = char
				end
			end
			for i, v in pairs(char:GetChildren()) do
				if v.Name == Grenade then
					v:Activate()
					v:Activate()
				end
			end
			wait (1)
			for i, v in pairs(Ignored:GetChildren()) do
				if v.Name == DroppedGrenade then
					x = x + 1
					v.Name = DroppedGrenade..x
				end
			end
			wait(1)
			x = 0
			for i, player in pairs(game.Players:GetPlayers()) do
				x = x + 1
				local launch = Ignored:WaitForChild(DroppedGrenade..x)
				if LocalPlayer.Name == player.Name then
					do
						launch.Position = Vector3.new(0, 1000, 0)
					end
				else
					do
						game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
						game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge, math.huge) * math.huge
						launch.Position = player.Character.HumanoidRootPart.Position
						wait (0.02)
					end

				end
			end
		end;
	});

	addCommand({
		["Name"] = "grenadesplit";
		["Function"] = function()

			local LocalPlayer = game:GetService("Players").LocalPlayer
			local char = LocalPlayer.Character
			local Ignored = game.workspace.Ignored
			local backpack = LocalPlayer.Backpack
			local x = 0
			local Grenade = "[Grenade]"
			local DroppedGrenade = "Handle"
			for i, v in pairs(backpack:GetChildren()) do
				if v.Name == Grenade then
					v.Parent = char
				end
			end
			for i, v in pairs(char:GetChildren()) do
				if v.Name == Grenade then
					v:Activate()
					v:Activate()
				end
			end
			wait (1)
			for i, v in pairs(Ignored:GetChildren()) do
				if v.Name == DroppedGrenade then
					x = x + 1
					v.Name = DroppedGrenade..x
				end
			end
			wait(1)
			x = 0
			for i, player in pairs(game.Players:GetPlayers()) do
				x = x + 1
				local launch = Ignored:WaitForChild(DroppedGrenade..x)
				if LocalPlayer.Name == player.Name then
					do
						launch.Position = Vector3.new(0, 1000, 0)
					end
				else
					do
						game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
						game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge, math.huge) * math.huge
						launch.Position = player.Character.HumanoidRootPart.Position
						wait (0.02)
					end

				end
			end
		end;
	});

	addCommand({
		["Name"] = "dupebat";
		["Function"] = function()
			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -2, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -4, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character


			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -6, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -8, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -10, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -12, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -14, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -16, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -18, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -22, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -25, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -28, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -30, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -32, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -35, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -38, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -42, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -45, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character
		end;
	});

	addCommand({
		["Name"] = "batdupe";
		["Function"] = function()
			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -2, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -4, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character


			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -6, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -8, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -10, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -12, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -14, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -16, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -18, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -22, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -25, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -28, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -30, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -32, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -35, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -38, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -42, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(0, -45, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(0, 100, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character
		end;
	});

	addCommand({
		["Name"] = "katana";
		["Function"] = function()
			game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(1, 0, 0.1)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(2, 0, 0.1)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 

			game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(3, 0, 0.1)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 

			game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(4, 0, 0.1)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
			game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
		end;
	});

	addCommand({
		["Name"] = "nuke";
		["Function"] = function()
			pcall(function()
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.Name == '[Grenade]' then
						v.Parent = game.Players.LocalPlayer.Character
					end
				end
			end)
			wait(.9)
			local targetpos = CFrame.new(108.995865, -26.7500305, -276.529877)
			local plr = game.Players.LocalPlayer
			local pos = plr.Character.HumanoidRootPart.Position
			if not game.Players.LocalPlayer.Character:FindFirstChild("[Grenade]") then
				plr.Character.HumanoidRootPart.CFrame = targetpos
				local cd = game:GetService("Workspace").Ignored.Shop["[Grenade] - $700"]:FindFirstChild("ClickDetector")
				wait(.9)
				fireclickdetector(cd)
				wait(.4)
				game.Players.LocalPlayer.Backpack:FindFirstChild("[Grenade]").Parent = plr.Character
				wait(.9)
				fireclickdetector(cd)
				wait(.4)
				game.Players.LocalPlayer.Backpack:FindFirstChild("[Grenade]").Parent = plr.Character
				wait(.9)
				fireclickdetector(cd)
				wait(.4)
				game.Players.LocalPlayer.Backpack:FindFirstChild("[Grenade]").Parent = plr.Character
				wait(.9)
				fireclickdetector(cd)
				wait(.4)
				game.Players.LocalPlayer.Backpack:FindFirstChild("[Grenade]").Parent = plr.Character
				wait(.9)
				fireclickdetector(cd)
				wait(.4)
				game.Players.LocalPlayer.Backpack:FindFirstChild("[Grenade]").Parent = plr.Character
				wait(.9)
				fireclickdetector(cd)
				wait(.4)
				game.Players.LocalPlayer.Backpack:FindFirstChild("[Grenade]").Parent = plr.Character
				wait(.9)
				fireclickdetector(cd)
				wait(.4)
				game.Players.LocalPlayer.Backpack:FindFirstChild("[Grenade]").Parent = plr.Character
				wait(.9)
				fireclickdetector(cd)
				wait(.4)
				game.Players.LocalPlayer.Backpack:FindFirstChild("[Grenade]").Parent = plr.Character
				wait(.9)
				local oh1 = CFrame.new(-411.605194, 21.7499943, -332.942078)
				local oh2 = game:GetService("Players")
				local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


				oh3.CFrame = oh1

				-- end of script
				local oh1 = CFrame.new(-396.677094, 51.750145, -336.327148)
				local oh2 = game:GetService("Players")
				local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


				oh3.CFrame = oh1

				-- end of script
				local oh1 = CFrame.new(-408.277466, 77.8071213, -369.336456)
				local oh2 = game:GetService("Players")
				local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


				oh3.CFrame = oh1

				-- end of script
				local oh1 = CFrame.new(-396.90979, 61.7791367, -381.694397)
				local oh2 = game:GetService("Players")
				local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


				oh3.CFrame = oh1

				-- end of script
			end
			local LocalPlayer = game:GetService("Players").LocalPlayer
			local char = LocalPlayer.Character
			local Ignored = game.workspace.Ignored
			local backpack = LocalPlayer.Backpack
			local x = 0
			local Grenade = "[Grenade]"
			local DroppedGrenade = "Handle"
			for i, v in pairs(backpack:GetChildren()) do
				if v.Name == Grenade then
					v.Parent = char
				end
			end
			for i, v in pairs(char:GetChildren()) do
				if v.Name == Grenade then
					v:Activate()
					v:Activate()
				end
			end
			wait (1)
			for i, v in pairs(Ignored:GetChildren()) do
				if v.Name == DroppedGrenade then
					x = x + 1
					v.Name = DroppedGrenade..x
				end
			end
			wait(1)
			x = 0
			for i, player in pairs(game.Players:GetPlayers()) do
				x = x + 1
				local launch = Ignored:WaitForChild(DroppedGrenade..x)
				if LocalPlayer.Name == player.Name then
					do
						launch.Position = Vector3.new(0, 1000, 0)
					end
				else
					do
						game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
						game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge, math.huge) * math.huge
						launch.Position = player.Character.HumanoidRootPart.Position
						wait (0.02)
					end

				end
			end
		end;
	});

	addCommand({
		["Name"] = "waves";
		["Function"] = function()

			local Part = Instance.new("Part",workspace)
			Part.Name = "Part"
			Part.Anchored = false
			Part.CanCollide = false
			Part.Transparency = 1
			local Part1= Instance.new("Part",workspace)
			Part1.Name = "Part1"
			Part1.Anchored = true
			Part1.CanCollide = false
			Part1.Transparency = 1

			local Weld = Instance.new("Weld", Part1)
			Weld.Part0 = Part1
			Weld.Part1 = Part
			Weld.C0 = CFrame.new(0, 0, 10000)
			pcall(function()
				if game:GetService("Players").LocalPlayer.Character.RightHand:FindFirstChildOfClass("Model") then
					game:GetService("Players").LocalPlayer.Character.RightHand.Model.RightWrist:Destroy()
				end
				game:GetService("Players").LocalPlayer.Character.RightHand.RightWrist:Destroy()
			end)
			local laugh = 0
			while true do
				wait()
				laugh = laugh+200
				Part1.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, laugh, math.pi/-2)
				local lol = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
				game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = CFrame.new(Part.CFrame.X ,Part.CFrame.Y+2, Part.CFrame.Z)
				game:GetService("Players").LocalPlayer.Character.RightHand.Massless = true
				game:GetService("Players").LocalPlayer.Character.RightHand.Size = Vector3.new(0, 0, 0)

			end

			local lol = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			game:GetService("Players").LocalPlayer.Character.RightHand.Size = Vector3.new(1, 0.5, 1)
			for i = 1, 10 do
				game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = lol.CFrame
				wait(0.05)
			end
		end;
	});

	addCommand({
		["Name"] = "fistwave";
		["Function"] = function()

			local Part = Instance.new("Part",workspace)
			Part.Name = "Part"
			Part.Anchored = false
			Part.CanCollide = false
			Part.Transparency = 1
			local Part1= Instance.new("Part",workspace)
			Part1.Name = "Part1"
			Part1.Anchored = true
			Part1.CanCollide = false
			Part1.Transparency = 1

			local Weld = Instance.new("Weld", Part1)
			Weld.Part0 = Part1
			Weld.Part1 = Part
			Weld.C0 = CFrame.new(0, 0, 10000)
			pcall(function()
				if game:GetService("Players").LocalPlayer.Character.RightHand:FindFirstChildOfClass("Model") then
					game:GetService("Players").LocalPlayer.Character.RightHand.Model.RightWrist:Destroy()
				end
				game:GetService("Players").LocalPlayer.Character.RightHand.RightWrist:Destroy()
			end)
			local laugh = 0
			while true do
				wait()
				laugh = laugh+200
				Part1.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, laugh, math.pi/-2)
				local lol = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
				game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = CFrame.new(Part.CFrame.X ,Part.CFrame.Y+2, Part.CFrame.Z)
				game:GetService("Players").LocalPlayer.Character.RightHand.Massless = true
				game:GetService("Players").LocalPlayer.Character.RightHand.Size = Vector3.new(0, 0, 0)

			end

			local lol = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			game:GetService("Players").LocalPlayer.Character.RightHand.Size = Vector3.new(1, 0.5, 1)
			for i = 1, 10 do
				game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = lol.CFrame
				wait(0.05)
			end
		end;
	});


	-- Female [Creates Brests]
	addCommand({
		["Name"] = "female";
		["Function"] = function()
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripPos = Vector3.new(1.5, 1.5, 0.3)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripUp = Vector3.new(0, 0, 90)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripPos = Vector3.new(0, 1.5, 0.3)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripUp = Vector3.new(0, 0, 90)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Backpack["[Taco]"].GripPos = Vector3.new(0.8, 1.4, 2)
			game.Players.LocalPlayer.Backpack["[Taco]"].GripForward = Vector3.new(4, 0, 0)
			game.Players.LocalPlayer.Backpack["[Taco]"].GripRight = Vector3.new(3, 0, 3)
			game.Players.LocalPlayer.Backpack["[Taco]"].GripUp = Vector3.new(1, 0, 90)
			game.Players.LocalPlayer.Backpack["[Taco]"].Parent = game.Players.LocalPlayer.Character
		end;
	});

	-- Male [Creates a PP]
	addCommand({
		["Name"] = "male";
		["Function"] = function()
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripPos = Vector3.new(1.5, -0.5, -1)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripUp = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripPos = Vector3.new(1.5, -1.5, -1)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].GripUp = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Hamburger]"].Parent = game.Players.LocalPlayer.Character

			game.Players.LocalPlayer.Backpack["[Bat]"].GripPos = Vector3.new(2, -1, 0.6)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripForward = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripRight = Vector3.new(0, 0, 0)
			game.Players.LocalPlayer.Backpack["[Bat]"].GripUp = Vector3.new(2, 0, 2)
			game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character
		end;
	});

	-- // target
	addCommand({
		["Name"] = "target";
		["Function"] = function(str)
			local target;
			if (str) then
				target = findPlayer(str);
			end;
			if (loopVariables.Targetting == false) then
				loopVariables.Targetting = true
				for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightHand"):GetChildren() do
					if (v.Name == "RightWrist") then
						v:Destroy();
					end;
				end;
				for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftHand"):GetChildren() do
					if (v.Name == "LeftWrist") then
						v:Destroy();
					end;
				end;
				sendNotif("CypherBrew", "Now Targetting "..target.Name..".", 15);
				local connection;
				connection = game:GetService("RunService").RenderStepped:Connect(function()
					if (loopVariables.Targetting == true) then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightHand").CFrame = game:GetService("Players")[target.Name].Character:FindFirstChild("LowerTorso").CFrame;
						game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftHand").CFrame = game:GetService("Players")[target.Name].Character:FindFirstChild("LowerTorso").CFrame;
					else
						loopVariables.Targetting = false;
						sendNotif("CypherBrew", "Stopped Targetting "..target.Name..".", 15);
						local rightwrist = Instance.new("Motor6D");
						rightwrist.Name = "RightWrist";
						rightwrist.Parent = game:GetService("Players").LocalPlayer.Character.RightHand;
						rightwrist.C0 = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
						rightwrist.C1 = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
						rightwrist.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm;
						rightwrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand;

						local leftwrist = Instance.new("Motor6D");
						leftwrist.Name = "LeftWrist";
						leftwrist.Parent = game:GetService("Players").LocalPlayer.Character.LeftHand;
						leftwrist.C0 = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
						leftwrist.C1 = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
						leftwrist.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm;
						leftwrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand;
						connection:Disconnect()
					end;
				end);
			else
				loopVariables.Targetting = false;
				sendNotif("CypherBrew", "Stopped Targetting "..target.Name..".", 15);
			end;
		end;
	});

	-- // unban
	addCommand({
		["Name"] = "unban";
		["Function"] = function()
			local localPlayer = game:GetService('Players').LocalPlayer;
			local localCharacter = localPlayer.Character;
			localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
			localCharacter:ClearAllChildren()
			local newCharacter = localPlayer.CharacterAdded:Wait();
			local spoofFolder = Instance.new('Folder');
			spoofFolder.Name = 'FULLY_LOADED_CHAR';
			spoofFolder.Parent = newCharacter;
			newCharacter:WaitForChild('BodyEffects').Dead:Destroy();
			local spoofValue = Instance.new('BoolValue', newCharacter.BodyEffects);
			spoofValue.Name = 'Dead';
		end;
	})

	-- // exploit info
	addCommand({
		["Name"] = "exploitinfo";
		["Function"] = function()
			sendNotif("[CypherBrew]", "Check Exploit Functions on console / printed functions", 15);
			local Globals = {
				getconnections,
				getgc,
				getinstances,
				getnilinstances,
				getscripts,
				getloadedmodules,
				fireclickdetector,
				firetouchinterest,
				isnetworkowner,
				gethiddenproperty,
				sethiddenproperty,
				setsimulationradius,
				getsenv,
				getcallingscript,
				getrawmetatable,
				setrawmetatable,
				setreadonly,
				isreadonly,
				hookfunction,
				newcclosure,
				checkcaller,
				decompile,
				setfflag,
				getnamecallmethod,
				setnamecallmethod,
				getspecialinfo,
				saveinstance,
				drawing,
				debug,
				debug.getconstants,
				debug.getconstant,
				debug.setconstant,
				debug.getupvalues,
				debug.getupvalue,
				debug.setupvalue,
				debug.getprotos,
				debug.getproto,
				debug.setproto,
				debug.getstack,
				debug.setstack,
				debug.setmetatable,
				debug.getregistry,
				debug.getinfo
			}

			local GlobalsNames = {
				"getconnections",
				"getgc",
				"getinstances",
				"getnilinstances",
				"getscripts",
				"getloadedmodules",
				"fireclickdetector",
				"firetouchinterest",
				"isnetworkowner",
				"gethiddenproperty",
				"sethiddenproperty",
				"setsimulationradius",
				"getsenv",
				"getcallingscript",
				"getrawmetatable",
				"setrawmetatable",
				"setreadonly",
				"isreadonly",
				"hookfunction",
				"newcclosure",
				"checkcaller",
				"decompile",
				"setfflag",
				"getnamecallmethod",
				"setnamecallmethod",
				"getspecialinfo",
				"saveinstance",
				"drawingtable",
				"debugtable",
				"debug.getconstants",
				"debug.getconstant",
				"debug.setconstant",
				"debug.getupvalues",
				"debug.getupvalue",
				"debug.setupvalue",
				"debug.getprotos",
				"debug.getproto",
				"debug.setproto",
				"debug.getstack",
				"debug.setstack",
				"debug.setmetatable",
				"debug.getregistry",
				"debug.getinfo"
			}

			for i, v in pairs(GlobalsNames) do
				if Globals[i] then
					print(v.." | Supported")
				else
					print(v.." | Not Supported")
				end
			end
			-- Checks what functions your executor has pretty much u can check what it has
		end;
	})

	addCommand({
		["Name"] = "exploitinformation";
		["Function"] = function()
			sendNotif("[CypherBrew]", "Check Exploit Functions on console / printed functions", 15);
			local Globals = {
				getconnections,
				getgc,
				getinstances,
				getnilinstances,
				getscripts,
				getloadedmodules,
				fireclickdetector,
				firetouchinterest,
				isnetworkowner,
				gethiddenproperty,
				sethiddenproperty,
				setsimulationradius,
				getsenv,
				getcallingscript,
				getrawmetatable,
				setrawmetatable,
				setreadonly,
				isreadonly,
				hookfunction,
				newcclosure,
				checkcaller,
				decompile,
				setfflag,
				getnamecallmethod,
				setnamecallmethod,
				getspecialinfo,
				saveinstance,
				drawing,
				debug,
				debug.getconstants,
				debug.getconstant,
				debug.setconstant,
				debug.getupvalues,
				debug.getupvalue,
				debug.setupvalue,
				debug.getprotos,
				debug.getproto,
				debug.setproto,
				debug.getstack,
				debug.setstack,
				debug.setmetatable,
				debug.getregistry,
				debug.getinfo
			}

			local GlobalsNames = {
				"getconnections",
				"getgc",
				"getinstances",
				"getnilinstances",
				"getscripts",
				"getloadedmodules",
				"fireclickdetector",
				"firetouchinterest",
				"isnetworkowner",
				"gethiddenproperty",
				"sethiddenproperty",
				"setsimulationradius",
				"getsenv",
				"getcallingscript",
				"getrawmetatable",
				"setrawmetatable",
				"setreadonly",
				"isreadonly",
				"hookfunction",
				"newcclosure",
				"checkcaller",
				"decompile",
				"setfflag",
				"getnamecallmethod",
				"setnamecallmethod",
				"getspecialinfo",
				"saveinstance",
				"drawingtable",
				"debugtable",
				"debug.getconstants",
				"debug.getconstant",
				"debug.setconstant",
				"debug.getupvalues",
				"debug.getupvalue",
				"debug.setupvalue",
				"debug.getprotos",
				"debug.getproto",
				"debug.setproto",
				"debug.getstack",
				"debug.setstack",
				"debug.setmetatable",
				"debug.getregistry",
				"debug.getinfo"
			}

			for i, v in pairs(GlobalsNames) do
				if Globals[i] then
					print(v.." | Supported")
				else
					print(v.." | Not Supported")
				end
			end
			-- Checks what functions your executor has pretty much u can check what it has
		end;
	});
end;










	-- // Finish up
do 
	sendNotif("CypherBrew Has Encrypted Your Data.");
	sendNotif("Version: " .. cosbySettings.Version);
    sendNotif("Loaded!", "Credits to Owners: SploitGodZ, Command Handler Made By Bill Cosby, Keybind is: " .. cosbySettings.Hotkey);
    sendNotif("Info.", "Press V To Open The Command Prompt.");
end;

local bitch = {
	163721789,
	15427717,
	201454243,
	822999,
	63794379,
	17260230,
	28357488,
	93101606,
	8195210,
	89473551,
	16917269,
	85989579,
	1553950697,
	476537893,
	155627580,
	31163456,
	7200829,
	25717070,
	201454243,
	15427717,
	63794379,
	16138978,
	60660789,
	17260230,
	16138978,
	1161411094,
	9125623,
	11319153,
	34758833,
	194109750,
	35616559,
	1257271138,
	28885841,
	23558830,
	25717070,
}

for l, c in pairs(game.Players:GetChildren()) do
	for i, v in pairs(bitch) do
		if c.UserId == v then
			game.Players.LocalPlayer:Kick("Admin joined! Phew, that was a close one! Saved by CypherBrew!")
		end
	end
end
game.Players.PlayerAdded:Connect(function(plr)
	for i, v in pairs(bitch) do
		if plr.UserId == v then
			game.Players.LocalPlayer:Kick("Admin joined! Phew, that was a close one! Saved by CypherBrew!")
		end
	end
end)

local a = getrawmetatable(game)
local sucks = a.__namecall
local player = game.Players.LocalPlayer
setreadonly(a, false)
a.__namecall = newcclosure(function(name, ...)
	local tabs = {
		...
	}
	if getnamecallmethod() == "FireServer" and tostring(name) == "MainEvent" then
		if tabs[1] == "CHECKER_1" or tabs[1] == "TeleportDetect" or tabs[1] == "OneMoreTime" then
			return wait(9e9)
		end
	end
	if getnamecallmethod() == "Kick" then
		return wait(9e9)
	end
	return sucks(name, unpack(tabs))
end)
setreadonly(a, true)
