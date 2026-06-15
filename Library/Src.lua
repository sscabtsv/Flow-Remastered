-- Beautified to reserve file size :>
-- srry :(
getgenv().GG = {Language={CheckboxEnabled="Enabled",CheckboxDisabled="Disabled",SliderValue="Value",DropdownSelect="Select",DropdownNone="None",DropdownSelected="Selected",ButtonClick="Click",TextboxEnter="Enter",ModuleEnabled="Enabled",ModuleDisabled="Disabled",TabGeneral="General",TabSettings="Settings",Loading="Loading...",Error="Error",Success="Success"}};
local SelectedLanguage = GG.Language;
local Themes = {Midnight={Background=Color3.fromRGB(10, 11, 14),ModuleBackground=Color3.fromRGB(18, 22, 32),Accent=Color3.fromRGB(130, 100, 255),SecondaryAccent=Color3.fromRGB(190, 170, 255),Text=Color3.fromRGB(240, 240, 255),TextDark=Color3.fromRGB(160, 160, 185),Highlight=Color3.fromRGB(90, 60, 220),Stroke=Color3.fromRGB(60, 60, 90)},Rose={Background=Color3.fromRGB(14, 10, 12),ModuleBackground=Color3.fromRGB(28, 18, 24),Accent=Color3.fromRGB(255, 100, 150),SecondaryAccent=Color3.fromRGB(255, 180, 210),Text=Color3.fromRGB(255, 245, 250),TextDark=Color3.fromRGB(200, 170, 185),Highlight=Color3.fromRGB(200, 50, 100),Stroke=Color3.fromRGB(80, 40, 60)},Sapphire={Background=Color3.fromRGB(8, 12, 20),ModuleBackground=Color3.fromRGB(14, 22, 40),Accent=Color3.fromRGB(60, 140, 255),SecondaryAccent=Color3.fromRGB(140, 200, 255),Text=Color3.fromRGB(230, 240, 255),TextDark=Color3.fromRGB(150, 175, 220),Highlight=Color3.fromRGB(30, 100, 220),Stroke=Color3.fromRGB(30, 55, 100)},Emerald={Background=Color3.fromRGB(8, 14, 12),ModuleBackground=Color3.fromRGB(14, 26, 22),Accent=Color3.fromRGB(50, 220, 140),SecondaryAccent=Color3.fromRGB(130, 255, 200),Text=Color3.fromRGB(230, 255, 245),TextDark=Color3.fromRGB(140, 195, 175),Highlight=Color3.fromRGB(20, 170, 100),Stroke=Color3.fromRGB(25, 70, 55)},Obsidian={Background=Color3.fromRGB(8, 8, 10),ModuleBackground=Color3.fromRGB(15, 15, 20),Accent=Color3.fromRGB(200, 180, 120),SecondaryAccent=Color3.fromRGB(240, 220, 160),Text=Color3.fromRGB(245, 242, 235),TextDark=Color3.fromRGB(180, 170, 145),Highlight=Color3.fromRGB(160, 130, 70),Stroke=Color3.fromRGB(50, 45, 35)},Glacier={Background=Color3.fromRGB(10, 14, 20),ModuleBackground=Color3.fromRGB(18, 26, 38),Accent=Color3.fromRGB(130, 210, 240),SecondaryAccent=Color3.fromRGB(190, 235, 255),Text=Color3.fromRGB(235, 248, 255),TextDark=Color3.fromRGB(155, 195, 220),Highlight=Color3.fromRGB(80, 175, 225),Stroke=Color3.fromRGB(35, 70, 100)},Crimson={Background=Color3.fromRGB(12, 8, 8),ModuleBackground=Color3.fromRGB(24, 14, 14),Accent=Color3.fromRGB(220, 55, 75),SecondaryAccent=Color3.fromRGB(255, 120, 140),Text=Color3.fromRGB(255, 238, 240),TextDark=Color3.fromRGB(200, 160, 165),Highlight=Color3.fromRGB(170, 30, 50),Stroke=Color3.fromRGB(80, 30, 35)},Amber={Background=Color3.fromRGB(12, 10, 6),ModuleBackground=Color3.fromRGB(24, 20, 12),Accent=Color3.fromRGB(255, 175, 50),SecondaryAccent=Color3.fromRGB(255, 215, 120),Text=Color3.fromRGB(255, 248, 230),TextDark=Color3.fromRGB(210, 185, 130),Highlight=Color3.fromRGB(210, 135, 20),Stroke=Color3.fromRGB(80, 60, 20)},Cyber={Background=Color3.fromRGB(6, 6, 10),ModuleBackground=Color3.fromRGB(12, 12, 20),Accent=Color3.fromRGB(0, 240, 160),SecondaryAccent=Color3.fromRGB(60, 255, 220),Text=Color3.fromRGB(230, 255, 250),TextDark=Color3.fromRGB(120, 195, 185),Highlight=Color3.fromRGB(255, 50, 200),Stroke=Color3.fromRGB(20, 65, 55)},Neon={Background=Color3.fromRGB(5, 4, 10),ModuleBackground=Color3.fromRGB(12, 10, 22),Accent=Color3.fromRGB(255, 30, 130),SecondaryAccent=Color3.fromRGB(130, 60, 255),Text=Color3.fromRGB(255, 250, 255),TextDark=Color3.fromRGB(185, 165, 210),Highlight=Color3.fromRGB(200, 0, 255),Stroke=Color3.fromRGB(70, 30, 80)},Sunset={Background=Color3.fromRGB(14, 8, 10),ModuleBackground=Color3.fromRGB(28, 16, 20),Accent=Color3.fromRGB(255, 110, 70),SecondaryAccent=Color3.fromRGB(255, 175, 80),Text=Color3.fromRGB(255, 245, 235),TextDark=Color3.fromRGB(215, 175, 155),Highlight=Color3.fromRGB(220, 65, 30),Stroke=Color3.fromRGB(90, 40, 30)},Sakura={Background=Color3.fromRGB(14, 10, 12),ModuleBackground=Color3.fromRGB(28, 18, 24),Accent=Color3.fromRGB(255, 175, 200),SecondaryAccent=Color3.fromRGB(255, 215, 228),Text=Color3.fromRGB(255, 245, 248),TextDark=Color3.fromRGB(215, 180, 195),Highlight=Color3.fromRGB(230, 110, 160),Stroke=Color3.fromRGB(80, 45, 65)},Monochrome={Background=Color3.fromRGB(10, 10, 10),ModuleBackground=Color3.fromRGB(18, 18, 18),Accent=Color3.fromRGB(210, 210, 210),SecondaryAccent=Color3.fromRGB(255, 255, 255),Text=Color3.fromRGB(250, 250, 250),TextDark=Color3.fromRGB(155, 155, 155),Highlight=Color3.fromRGB(120, 120, 120),Stroke=Color3.fromRGB(45, 45, 45)},Ash={Background=Color3.fromRGB(12, 13, 15),ModuleBackground=Color3.fromRGB(22, 24, 28),Accent=Color3.fromRGB(160, 200, 255),SecondaryAccent=Color3.fromRGB(200, 225, 255),Text=Color3.fromRGB(240, 242, 248),TextDark=Color3.fromRGB(160, 168, 185),Highlight=Color3.fromRGB(100, 150, 230),Stroke=Color3.fromRGB(45, 50, 65)},Forest={Background=Color3.fromRGB(8, 12, 10),ModuleBackground=Color3.fromRGB(14, 22, 18),Accent=Color3.fromRGB(80, 210, 100),SecondaryAccent=Color3.fromRGB(155, 245, 165),Text=Color3.fromRGB(235, 255, 238),TextDark=Color3.fromRGB(150, 200, 160),Highlight=Color3.fromRGB(45, 160, 65),Stroke=Color3.fromRGB(28, 65, 38)},Ocean={Background=Color3.fromRGB(6, 12, 18),ModuleBackground=Color3.fromRGB(10, 22, 36),Accent=Color3.fromRGB(30, 200, 255),SecondaryAccent=Color3.fromRGB(120, 225, 255),Text=Color3.fromRGB(225, 248, 255),TextDark=Color3.fromRGB(135, 185, 215),Highlight=Color3.fromRGB(10, 155, 230),Stroke=Color3.fromRGB(18, 60, 95)},Lavender={Background=Color3.fromRGB(12, 10, 18),ModuleBackground=Color3.fromRGB(22, 18, 36),Accent=Color3.fromRGB(175, 155, 240),SecondaryAccent=Color3.fromRGB(215, 200, 255),Text=Color3.fromRGB(248, 245, 255),TextDark=Color3.fromRGB(190, 180, 220),Highlight=Color3.fromRGB(135, 110, 215),Stroke=Color3.fromRGB(60, 48, 90)},Coffee={Background=Color3.fromRGB(12, 10, 8),ModuleBackground=Color3.fromRGB(24, 19, 14),Accent=Color3.fromRGB(205, 150, 90),SecondaryAccent=Color3.fromRGB(235, 200, 150),Text=Color3.fromRGB(255, 248, 238),TextDark=Color3.fromRGB(200, 175, 145),Highlight=Color3.fromRGB(165, 105, 50),Stroke=Color3.fromRGB(65, 48, 30)},Mint={Background=Color3.fromRGB(8, 14, 12),ModuleBackground=Color3.fromRGB(14, 26, 22),Accent=Color3.fromRGB(80, 230, 195),SecondaryAccent=Color3.fromRGB(155, 255, 230),Text=Color3.fromRGB(230, 255, 248),TextDark=Color3.fromRGB(140, 200, 185),Highlight=Color3.fromRGB(35, 190, 160),Stroke=Color3.fromRGB(25, 72, 60)},Pink={Background=Color3.fromRGB(14, 8, 12),ModuleBackground=Color3.fromRGB(28, 14, 24),Accent=Color3.fromRGB(255, 120, 190),SecondaryAccent=Color3.fromRGB(255, 185, 220),Text=Color3.fromRGB(255, 240, 248),TextDark=Color3.fromRGB(215, 170, 200),Highlight=Color3.fromRGB(220, 60, 150),Stroke=Color3.fromRGB(90, 35, 70)},Purple={Background=Color3.fromRGB(10, 7, 16),ModuleBackground=Color3.fromRGB(20, 14, 32),Accent=Color3.fromRGB(160, 120, 240),SecondaryAccent=Color3.fromRGB(205, 170, 255),Text=Color3.fromRGB(245, 240, 255),TextDark=Color3.fromRGB(185, 165, 225),Highlight=Color3.fromRGB(120, 75, 210),Stroke=Color3.fromRGB(58, 38, 95)},Abyss={Background=Color3.fromRGB(4, 4, 8),ModuleBackground=Color3.fromRGB(8, 8, 16),Accent=Color3.fromRGB(80, 180, 255),SecondaryAccent=Color3.fromRGB(140, 210, 255),Text=Color3.fromRGB(220, 235, 255),TextDark=Color3.fromRGB(120, 150, 200),Highlight=Color3.fromRGB(40, 130, 230),Stroke=Color3.fromRGB(20, 35, 65)},Vanta={Background=Color3.fromRGB(3, 3, 3),ModuleBackground=Color3.fromRGB(8, 8, 8),Accent=Color3.fromRGB(255, 255, 255),SecondaryAccent=Color3.fromRGB(200, 200, 200),Text=Color3.fromRGB(255, 255, 255),TextDark=Color3.fromRGB(130, 130, 130),Highlight=Color3.fromRGB(160, 160, 160),Stroke=Color3.fromRGB(28, 28, 28)},Coral={Background=Color3.fromRGB(14, 8, 6),ModuleBackground=Color3.fromRGB(28, 14, 12),Accent=Color3.fromRGB(255, 120, 95),SecondaryAccent=Color3.fromRGB(255, 180, 160),Text=Color3.fromRGB(255, 245, 242),TextDark=Color3.fromRGB(215, 175, 165),Highlight=Color3.fromRGB(220, 75, 50),Stroke=Color3.fromRGB(90, 35, 28)},Arctic={Background=Color3.fromRGB(10, 14, 18),ModuleBackground=Color3.fromRGB(18, 26, 34),Accent=Color3.fromRGB(180, 230, 255),SecondaryAccent=Color3.fromRGB(220, 245, 255),Text=Color3.fromRGB(240, 250, 255),TextDark=Color3.fromRGB(160, 195, 220),Highlight=Color3.fromRGB(100, 190, 235),Stroke=Color3.fromRGB(40, 75, 105)},Void={Background=Color3.fromRGB(5, 3, 10),ModuleBackground=Color3.fromRGB(10, 6, 20),Accent=Color3.fromRGB(200, 50, 255),SecondaryAccent=Color3.fromRGB(230, 130, 255),Text=Color3.fromRGB(248, 240, 255),TextDark=Color3.fromRGB(175, 145, 210),Highlight=Color3.fromRGB(155, 0, 220),Stroke=Color3.fromRGB(65, 22, 90)},Dusk={Background=Color3.fromRGB(10, 8, 14),ModuleBackground=Color3.fromRGB(20, 16, 28),Accent=Color3.fromRGB(200, 140, 255),SecondaryAccent=Color3.fromRGB(255, 180, 220),Text=Color3.fromRGB(250, 245, 255),TextDark=Color3.fromRGB(185, 165, 210),Highlight=Color3.fromRGB(155, 90, 230),Stroke=Color3.fromRGB(65, 45, 90)},Lava={Background=Color3.fromRGB(12, 5, 4),ModuleBackground=Color3.fromRGB(24, 10, 8),Accent=Color3.fromRGB(255, 80, 40),SecondaryAccent=Color3.fromRGB(255, 155, 60),Text=Color3.fromRGB(255, 242, 235),TextDark=Color3.fromRGB(210, 160, 140),Highlight=Color3.fromRGB(210, 40, 10),Stroke=Color3.fromRGB(95, 28, 18)},Steel={Background=Color3.fromRGB(10, 12, 14),ModuleBackground=Color3.fromRGB(20, 24, 28),Accent=Color3.fromRGB(140, 175, 210),SecondaryAccent=Color3.fromRGB(185, 210, 235),Text=Color3.fromRGB(230, 238, 245),TextDark=Color3.fromRGB(150, 168, 190),Highlight=Color3.fromRGB(90, 130, 175),Stroke=Color3.fromRGB(42, 55, 70)},Toxic={Background=Color3.fromRGB(6, 10, 5),ModuleBackground=Color3.fromRGB(10, 18, 8),Accent=Color3.fromRGB(130, 255, 60),SecondaryAccent=Color3.fromRGB(190, 255, 120),Text=Color3.fromRGB(235, 255, 228),TextDark=Color3.fromRGB(140, 205, 120),Highlight=Color3.fromRGB(85, 210, 20),Stroke=Color3.fromRGB(28, 68, 18)},Blush={Background=Color3.fromRGB(14, 10, 11),ModuleBackground=Color3.fromRGB(28, 18, 20),Accent=Color3.fromRGB(255, 155, 170),SecondaryAccent=Color3.fromRGB(255, 200, 210),Text=Color3.fromRGB(255, 245, 247),TextDark=Color3.fromRGB(215, 175, 182),Highlight=Color3.fromRGB(230, 90, 115),Stroke=Color3.fromRGB(90, 40, 50)},Dark={Background=Color3.fromRGB(14, 14, 16),ModuleBackground=Color3.fromRGB(24, 24, 28),Accent=Color3.fromRGB(100, 150, 255),SecondaryAccent=Color3.fromRGB(160, 195, 255),Text=Color3.fromRGB(245, 245, 252),TextDark=Color3.fromRGB(150, 155, 175),Highlight=Color3.fromRGB(60, 110, 230),Stroke=Color3.fromRGB(50, 52, 70)},Light={Background=Color3.fromRGB(242, 243, 248),ModuleBackground=Color3.fromRGB(255, 255, 255),Accent=Color3.fromRGB(60, 120, 255),SecondaryAccent=Color3.fromRGB(30, 80, 220),Text=Color3.fromRGB(20, 20, 35),TextDark=Color3.fromRGB(90, 95, 120),Highlight=Color3.fromRGB(40, 95, 240),Stroke=Color3.fromRGB(200, 205, 220)},Glass={Background=Color3.fromRGB(18, 20, 28),ModuleBackground=Color3.fromRGB(30, 32, 44),Accent=Color3.fromRGB(120, 180, 255),SecondaryAccent=Color3.fromRGB(180, 215, 255),Text=Color3.fromRGB(240, 244, 255),TextDark=Color3.fromRGB(155, 165, 200),Highlight=Color3.fromRGB(80, 145, 240),Stroke=Color3.fromRGB(80, 90, 130)}};
local ThemeMeta = {Midnight={category="Dark",desc="Deep violet dark"},Rose={category="Dark",desc="Warm crimson bloom"},Sapphire={category="Dark",desc="Cool electric blue"},Emerald={category="Dark",desc="Rich jewel green"},Obsidian={category="Premium",desc="Gold on jet black"},Glacier={category="Premium",desc="Icy arctic blue"},Crimson={category="Premium",desc="Dramatic deep red"},Amber={category="Premium",desc="Warm amber glow"},Cyber={category="Neon",desc="Terminal matrix green"},Neon={category="Neon",desc="Synthwave vibes"},Sunset={category="Neon",desc="Warm dusk orange"},Sakura={category="Pastel",desc="Soft cherry blossom"},Monochrome={category="Minimal",desc="Pure grayscale"},Ash={category="Minimal",desc="Cool blue-grey"},Forest={category="Nature",desc="Deep woodland green"},Ocean={category="Nature",desc="Oceanic deep blue"},Lavender={category="Pastel",desc="Soft lilac dream"},Coffee={category="Warm",desc="Rich espresso tones"},Mint={category="Pastel",desc="Cool minty fresh"},Pink={category="Pastel",desc="Vibrant hot pink"},Purple={category="Dark",desc="Royal amethyst"},Abyss={category="Dark",desc="Bottomless deep blue"},Vanta={category="Minimal",desc="Absolute black"},Coral={category="Warm",desc="Vibrant coral reef"},Arctic={category="Nature",desc="Frozen tundra white"},Void={category="Neon",desc="Ultraviolet darkness"},Dusk={category="Pastel",desc="Twilight purple haze"},Lava={category="Neon",desc="Molten fire red"},Steel={category="Minimal",desc="Industrial blue-grey"},Toxic={category="Neon",desc="Radioactive lime"},Blush={category="Pastel",desc="Warm rosy pink"},Dark={category="Minimal",desc="Clean dark default"},Light={category="Minimal",desc="Bright light mode"},Glass={category="Premium",desc="Translucent glass panel"}};
function convertStringToTable(inputString)
	local result = {};
	for value in string.gmatch(inputString, "([^,]+)") do
		local trimmedValue = value:match("^%s*(.-)%s*$");
		table.insert(result, trimmedValue);
	end
	return result;
end
function convertTableToString(inputTable)
	return table.concat(inputTable, ", ");
end
local UserInputService = cloneref(game:GetService("UserInputService"));
local ContentProvider = cloneref(game:GetService("ContentProvider"));
local TweenService = cloneref(game:GetService("TweenService"));
local HttpService = cloneref(game:GetService("HttpService"));
local TextService = cloneref(game:GetService("TextService"));
local RunService = cloneref(game:GetService("RunService"));
local Lighting = cloneref(game:GetService("Lighting"));
local Players = cloneref(game:GetService("Players"));
local CoreGui = cloneref(game:GetService("CoreGui"));
local Debris = cloneref(game:GetService("Debris"));
local mouse = Players.LocalPlayer:GetMouse();
local OldGui = CoreGui:FindFirstChild("Flow");
if OldGui then
	Debris:AddItem(OldGui, 0);
end
if not isfolder("Flow") then
	makefolder("Flow");
end
if not isfolder("Flow/Configs") then
	makefolder("Flow/Configs");
end
if not isfolder("Flow/Themes") then
	makefolder("Flow/Themes");
end
local Connections = setmetatable({disconnect=function(self, connection)
	if not self[connection] then
		return;
	end
	self[connection]:Disconnect();
	self[connection] = nil;
end,disconnect_all=function(self)
	for _, value in self do
		if (typeof(value) == "function") then
			continue;
		end
		value:Disconnect();
	end
end}, Connections);
local Util = setmetatable({map=function(self, value, in_minimum, in_maximum, out_minimum, out_maximum)
	return (((value - in_minimum) * (out_maximum - out_minimum)) / (in_maximum - in_minimum)) + out_minimum;
end,viewport_point_to_world=function(self, location, distance)
	local unit_ray = workspace.CurrentCamera:ScreenPointToRay(location.X, location.Y);
	return unit_ray.Origin + (unit_ray.Direction * distance);
end,get_offset=function(self)
	local viewport_size_Y = workspace.CurrentCamera.ViewportSize.Y;
	return self:map(viewport_size_Y, 0, 2560, 8, 56);
end}, Util);
local Tween = {smooth=TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),fast=TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),slow=TweenInfo.new(0.65, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),spring=TweenInfo.new(0.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out),fade=TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),snap=TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),snap_in=TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.In),slide=TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),slide_out=TweenInfo.new(0.38, Enum.EasingStyle.Quint, Enum.EasingDirection.In),instant=TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),bounce=TweenInfo.new(0.6, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out)};
local AcrylicBlur = {};
AcrylicBlur.__index = AcrylicBlur;
AcrylicBlur.new = function(object)
	local self = setmetatable({_object=object,_folder=nil,_frame=nil,_root=nil}, AcrylicBlur);
	self:setup();
	return self;
end;
AcrylicBlur.create_folder = function(self)
	local old_folder = workspace.CurrentCamera:FindFirstChild("AcrylicBlur");
	if old_folder then
		Debris:AddItem(old_folder, 0);
	end
	local folder = Instance.new("Folder");
	folder.Name = "AcrylicBlur";
	folder.Parent = workspace.CurrentCamera;
	self._folder = folder;
end;
AcrylicBlur.create_depth_of_fields = function(self)
	local dof = Lighting:FindFirstChild("AcrylicBlur") or Instance.new("DepthOfFieldEffect");
	dof.FarIntensity = 0;
	dof.FocusDistance = 0.05;
	dof.InFocusRadius = 0.1;
	dof.NearIntensity = 1;
	dof.Name = "AcrylicBlur";
	dof.Parent = Lighting;
	for _, object in Lighting:GetChildren() do
		if not object:IsA("DepthOfFieldEffect") then
			continue;
		end
		if (object == dof) then
			continue;
		end
		Connections[object] = object:GetPropertyChangedSignal("FarIntensity"):Connect(function()
			object.FarIntensity = 0;
		end);
		object.FarIntensity = 0;
	end
end;
AcrylicBlur.create_frame = function(self)
	local frame = Instance.new("Frame");
	frame.Size = UDim2.new(1, 0, 1, 0);
	frame.Position = UDim2.new(0.5, 0, 0.5, 0);
	frame.AnchorPoint = Vector2.new(0.5, 0.5);
	frame.BackgroundTransparency = 1;
	frame.Parent = self._object;
	self._frame = frame;
end;
AcrylicBlur.create_root = function(self)
	local part = Instance.new("Part");
	part.Name = "Root";
	part.Color = Color3.new(0, 0, 0);
	part.Material = Enum.Material.Glass;
	part.Size = Vector3.new(1, 1, 0);
	part.Anchored = true;
	part.CanCollide = false;
	part.CanQuery = false;
	part.Locked = true;
	part.CastShadow = false;
	part.Transparency = 0.98;
	part.Parent = self._folder;
	local specialMesh = Instance.new("SpecialMesh");
	specialMesh.MeshType = Enum.MeshType.Brick;
	specialMesh.Offset = Vector3.new(0, 0, -0.000001);
	specialMesh.Parent = part;
	self._root = part;
end;
AcrylicBlur.setup = function(self)
	self:create_depth_of_fields();
	self:create_folder();
	self:create_root();
	self:create_frame();
	self:render(0.001);
	self:check_quality_level();
end;
AcrylicBlur.render = function(self, distance)
	local positions = {top_left=Vector2.new(),top_right=Vector2.new(),bottom_right=Vector2.new()};
	local function update_positions(size, position)
		positions.top_left = position;
		positions.top_right = position + Vector2.new(size.X, 0);
		positions.bottom_right = position + size;
	end
	local function update()
		local tl = positions.top_left;
		local tr = positions.top_right;
		local br = positions.bottom_right;
		local tl3 = Util:viewport_point_to_world(tl, distance);
		local tr3 = Util:viewport_point_to_world(tr, distance);
		local br3 = Util:viewport_point_to_world(br, distance);
		local w = (tr3 - tl3).Magnitude;
		local h = (tr3 - br3).Magnitude;
		if not self._root then
			return;
		end
		self._root.CFrame = CFrame.fromMatrix((tl3 + br3) / 2, workspace.CurrentCamera.CFrame.XVector, workspace.CurrentCamera.CFrame.YVector, workspace.CurrentCamera.CFrame.ZVector);
		self._root.Mesh.Scale = Vector3.new(w, h, 0);
	end
	local function on_change()
		local offset = Util:get_offset();
		local size = self._frame.AbsoluteSize - Vector2.new(offset, offset);
		local position = self._frame.AbsolutePosition + Vector2.new(offset / 2, offset / 2);
		update_positions(size, position);
		task.spawn(update);
	end
	Connections['cframe_update'] = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(update);
	Connections['viewport_size_update'] = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(update);
	Connections['field_of_view_update'] = workspace.CurrentCamera:GetPropertyChangedSignal("FieldOfView"):Connect(update);
	Connections['frame_absolute_position'] = self._frame:GetPropertyChangedSignal("AbsolutePosition"):Connect(on_change);
	Connections['frame_absolute_size'] = self._frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(on_change);
	task.spawn(update);
end;
AcrylicBlur.check_quality_level = function(self)
	local game_settings = UserSettings().GameSettings;
	local quality_level = game_settings.SavedQualityLevel.Value;
	if (quality_level < 8) then
		self:change_visiblity(false);
	end
	Connections['quality_level'] = game_settings:GetPropertyChangedSignal("SavedQualityLevel"):Connect(function()
		local ql = UserSettings().GameSettings.SavedQualityLevel.Value;
		self:change_visiblity(ql >= 8);
	end);
end;
AcrylicBlur.change_visiblity = function(self, state)
	self._root.Transparency = (state and 0.98) or 1;
end;
local Config = setmetatable({save=function(self, file_name, config)
	local ok, err = pcall(function()
		local flags = HttpService:JSONEncode(config);
		writefile("Flow/" .. file_name .. ".json", flags);
	end);
	if not ok then
		warn("Failed to save config:", err);
	end
end,load=function(self, file_name, config)
	local ok, result = pcall(function()
		if not isfile("Flow/" .. file_name .. ".json") then
			self:save(file_name, config);
			return;
		end
		local flags = readfile("Flow/" .. file_name .. ".json");
		if not flags then
			self:save(file_name, config);
			return;
		end
		return HttpService:JSONDecode(flags);
	end);
	if not ok then
		warn("Failed to load config:", result);
	end
	if not result then
		result = {_flags={},_keybinds={},_library={},_theme="Midnight"};
	end
	return result;
end,save_named=function(self, config_name, config_data)
	local ok, err = pcall(function()
		local encoded = HttpService:JSONEncode(config_data);
		writefile("Flow/Configs/" .. config_name .. ".json", encoded);
	end);
	if not ok then
		warn("Failed to save named config:", err);
	end
	return ok;
end,load_named=function(self, config_name)
	local ok, result = pcall(function()
		local path = "Flow/Configs/" .. config_name .. ".json";
		if not isfile(path) then
			return nil;
		end
		local raw = readfile(path);
		if not raw then
			return nil;
		end
		return HttpService:JSONDecode(raw);
	end);
	if not ok then
		warn("Failed to load named config:", result);
	end
	return result;
end,delete_named=function(self, config_name)
	local ok, err = pcall(function()
		local path = "Flow/Configs/" .. config_name .. ".json";
		if isfile(path) then
			delfile(path);
		end
	end);
	if not ok then
		warn("Failed to delete named config:", err);
	end
	return ok;
end,list_named=function(self)
	local configs = {};
	local ok, err = pcall(function()
		local files = listfiles("Flow/Configs");
		for _, path in ipairs(files) do
			local name = path:match("([^/\\]+)%.json$");
			if name then
				table.insert(configs, name);
			end
		end
	end);
	if not ok then
		warn("Failed to list configs:", err);
	end
	return configs;
end,save_theme=function(self, theme_name, theme_data)
	local ok, err = pcall(function()
		local encoded = HttpService:JSONEncode({Background={theme_data.Background.R,theme_data.Background.G,theme_data.Background.B},ModuleBackground={theme_data.ModuleBackground.R,theme_data.ModuleBackground.G,theme_data.ModuleBackground.B},Accent={theme_data.Accent.R,theme_data.Accent.G,theme_data.Accent.B},SecondaryAccent={theme_data.SecondaryAccent.R,theme_data.SecondaryAccent.G,theme_data.SecondaryAccent.B},Text={theme_data.Text.R,theme_data.Text.G,theme_data.Text.B},TextDark={theme_data.TextDark.R,theme_data.TextDark.G,theme_data.TextDark.B},Highlight={theme_data.Highlight.R,theme_data.Highlight.G,theme_data.Highlight.B},Stroke={theme_data.Stroke.R,theme_data.Stroke.G,theme_data.Stroke.B}});
		writefile("Flow/Themes/" .. theme_name .. ".json", encoded);
	end);
	if not ok then
		warn("Failed to save theme:", err);
	end
	return ok;
end,load_theme=function(self, theme_name)
	local ok, result = pcall(function()
		local path = "Flow/Themes/" .. theme_name .. ".json";
		if not isfile(path) then
			return nil;
		end
		local raw = readfile(path);
		if not raw then
			return nil;
		end
		local data = HttpService:JSONDecode(raw);
		local function toC3(t)
			return Color3.fromRGB(math.floor(t[1] * 255), math.floor(t[2] * 255), math.floor(t[3] * 255));
		end
		return {Background=toC3(data.Background),ModuleBackground=toC3(data.ModuleBackground),Accent=toC3(data.Accent),SecondaryAccent=toC3(data.SecondaryAccent),Text=toC3(data.Text),TextDark=toC3(data.TextDark),Highlight=toC3(data.Highlight),Stroke=toC3(data.Stroke)};
	end);
	if not ok then
		warn("Failed to load theme:", result);
	end
	return result;
end,list_themes=function(self)
	local themes = {};
	local ok, err = pcall(function()
		local files = listfiles("Flow/Themes");
		for _, path in ipairs(files) do
			local name = path:match("([^/\\]+)%.json$");
			if name then
				table.insert(themes, name);
			end
		end
	end);
	if not ok then
		warn("Failed to list themes:", err);
	end
	return themes;
end,delete_theme=function(self, theme_name)
	local ok, err = pcall(function()
		local path = "Flow/Themes/" .. theme_name .. ".json";
		if isfile(path) then
			delfile(path);
		end
	end);
	if not ok then
		warn("Failed to delete theme:", err);
	end
	return ok;
end}, Config);
local Library = {_config=Config:load(game.GameId),_choosing_keybind=false,_device=nil,_ui_open=true,_ui_scale=1,_ui_loaded=false,_active_instance=nil,_ui=nil,_dragging=false,_drag_start=nil,_container_position=nil,_current_theme="Midnight",_themed_elements={Modules={},Strokes={},ActiveToggles={},SliderDrags={},Notifications={},AccentButtons={},DropdownHighlights={},ProgressFills={},StatusDots={},ColorSwatches={}},_search_registry={},_notification_settings={enabled=true,duration=5},_blur_enabled=true,_blur_instance=nil,_animation_speed="Normal"};
Library.__index = Library;
local NotificationContainer = Instance.new("Frame");
NotificationContainer.Name = "NotificationContainer";
NotificationContainer.Size = UDim2.new(0, 320, 0, 0);
NotificationContainer.Position = UDim2.new(0, 20, 1, -20);
NotificationContainer.AnchorPoint = Vector2.new(0, 1);
NotificationContainer.BackgroundTransparency = 1;
NotificationContainer.ClipsDescendants = false;
NotificationContainer.ZIndex = 100;
NotificationContainer.AutomaticSize = Enum.AutomaticSize.Y;
NotificationContainer.Parent = CoreGui:FindFirstChild("RobloxGui") or CoreGui;
local NotificationListLayout = Instance.new("UIListLayout");
NotificationListLayout.FillDirection = Enum.FillDirection.Vertical;
NotificationListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
NotificationListLayout.Padding = UDim.new(0, 10);
NotificationListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom;
NotificationListLayout.Parent = NotificationContainer;
local function UpdateNotificationContainer()
	local vp = workspace.CurrentCamera.ViewportSize;
	local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled;
	if isMobile then
		NotificationContainer.Size = UDim2.new(0, math.min(260, vp.X * 0.65), 0, 0);
		NotificationContainer.Position = UDim2.new(0, 12, 1, -80);
	else
		NotificationContainer.Size = UDim2.new(0, math.min(320, vp.X * 0.22), 0, 0);
		NotificationContainer.Position = UDim2.new(0, 20, 1, -20);
	end
end
UpdateNotificationContainer();
Connections['notification_viewport'] = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateNotificationContainer);
local ActiveNotifications = {};
local function DismissNotification(entry)
	if entry._dismissed then
		return;
	end
	entry._dismissed = true;
	TweenService:Create(entry.InnerFrame, Tween.slide_out, {Position=UDim2.new(-1, -20, 0, 0),BackgroundTransparency=1}):Play();
	TweenService:Create(entry.UIStroke, Tween.fade, {Transparency=1}):Play();
	TweenService:Create(entry.Title, Tween.fade, {TextTransparency=1}):Play();
	TweenService:Create(entry.Body, Tween.fade, {TextTransparency=1}):Play();
	TweenService:Create(entry.AccentBar, Tween.fade, {BackgroundTransparency=1}):Play();
	task.delay(0.4, function()
		local _nlist2 = (Library._active_instance and Library._active_instance._themed_elements.Notifications) or Library._themed_elements.Notifications;
		for i, v in ipairs(_nlist2) do
			if (v.Frame == entry.InnerFrame) then
				table.remove(_nlist2, i);
				break;
			end
		end
		for i, v in ipairs(ActiveNotifications) do
			if (v == entry) then
				table.remove(ActiveNotifications, i);
				break;
			end
		end
		entry.Root:Destroy();
	end);
end
local NotifIcons = {success="rbxassetid://107819132007001",error="rbxassetid://107819132007001",warning="rbxassetid://107819132007001",info="rbxassetid://107819132007001",loading="rbxassetid://107819132007001"};
local NotifAccentColors = {success=Color3.fromRGB(60, 210, 120),error=Color3.fromRGB(230, 65, 75),warning=Color3.fromRGB(255, 185, 45),info=Color3.fromRGB(80, 160, 255),loading=Color3.fromRGB(160, 120, 255),default=nil};
Library.SendNotification = function(settings)
	if not Library._notification_settings.enabled then
		return;
	end
	local theme = Themes[Library._current_theme] or Themes.Midnight;
	local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled;
	local notifType = (settings.type or "default"):lower();
	local accentColor = NotifAccentColors[notifType] or theme.Accent;
	while #ActiveNotifications >= 3 do
		DismissNotification(ActiveNotifications[1]);
		table.remove(ActiveNotifications, 1);
	end
	local Notification = Instance.new("Frame");
	Notification.Size = UDim2.new(1, 0, 0, 0);
	Notification.BackgroundTransparency = 1;
	Notification.BorderSizePixel = 0;
	Notification.Name = "Notification";
	Notification.AutomaticSize = Enum.AutomaticSize.Y;
	Notification.Parent = NotificationContainer;
	local InnerFrame = Instance.new("Frame");
	InnerFrame.Size = UDim2.new(1, 0, 0, 0);
	InnerFrame.BackgroundColor3 = theme.ModuleBackground;
	InnerFrame.BackgroundTransparency = 0.06;
	InnerFrame.BorderSizePixel = 0;
	InnerFrame.Name = "InnerFrame";
	InnerFrame.AutomaticSize = Enum.AutomaticSize.Y;
	InnerFrame.ZIndex = 101;
	InnerFrame.Parent = Notification;
	local InnerCorner = Instance.new("UICorner");
	InnerCorner.CornerRadius = UDim.new(0, 10);
	InnerCorner.Parent = InnerFrame;
	local UIStroke = Instance.new("UIStroke");
	UIStroke.Color = theme.Stroke;
	UIStroke.Transparency = 0.2;
	UIStroke.Thickness = 1;
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	UIStroke.Parent = InnerFrame;
	local AccentBar = Instance.new("Frame");
	AccentBar.Name = "AccentBar";
	AccentBar.Size = UDim2.new(0, 3, 1, -16);
	AccentBar.Position = UDim2.new(0, 8, 0, 8);
	AccentBar.BackgroundColor3 = accentColor;
	AccentBar.BorderSizePixel = 0;
	AccentBar.ZIndex = 102;
	AccentBar.Parent = InnerFrame;
	local ABCorner = Instance.new("UICorner");
	ABCorner.CornerRadius = UDim.new(1, 0);
	ABCorner.Parent = AccentBar;
	local ContentFrame = Instance.new("Frame");
	ContentFrame.Name = "ContentFrame";
	ContentFrame.Size = UDim2.new(1, -20, 0, 0);
	ContentFrame.Position = UDim2.new(0, 18, 0, 0);
	ContentFrame.BackgroundTransparency = 1;
	ContentFrame.AutomaticSize = Enum.AutomaticSize.Y;
	ContentFrame.ZIndex = 102;
	ContentFrame.Parent = InnerFrame;
	local CPad = Instance.new("UIPadding");
	CPad.PaddingTop = UDim.new(0, 12);
	CPad.PaddingBottom = UDim.new(0, 12);
	CPad.PaddingRight = UDim.new(0, 10);
	CPad.Parent = ContentFrame;
	local CLayout = Instance.new("UIListLayout");
	CLayout.Padding = UDim.new(0, 3);
	CLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	CLayout.Parent = ContentFrame;
	local Title = Instance.new("TextLabel");
	Title.Name = "Title";
	Title.Text = settings.title or "Notification";
	Title.TextColor3 = theme.Text;
	Title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Title.TextSize = (isMobile and 12) or 13;
	Title.Size = UDim2.new(1, 0, 0, 0);
	Title.AutomaticSize = Enum.AutomaticSize.Y;
	Title.BackgroundTransparency = 1;
	Title.TextXAlignment = Enum.TextXAlignment.Left;
	Title.TextWrapped = true;
	Title.LayoutOrder = 1;
	Title.TextTransparency = 1;
	Title.ZIndex = 103;
	Title.Parent = ContentFrame;
	local Body = Instance.new("TextLabel");
	Body.Name = "Body";
	Body.Text = settings.text or "";
	Body.TextColor3 = theme.TextDark;
	Body.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Body.TextSize = (isMobile and 10) or 11;
	Body.Size = UDim2.new(1, 0, 0, 0);
	Body.AutomaticSize = Enum.AutomaticSize.Y;
	Body.BackgroundTransparency = 1;
	Body.TextXAlignment = Enum.TextXAlignment.Left;
	Body.TextWrapped = true;
	Body.LayoutOrder = 2;
	Body.TextTransparency = 1;
	Body.ZIndex = 103;
	Body.Parent = ContentFrame;
	local ProgressClip = Instance.new("Frame");
	ProgressClip.Size = UDim2.new(1, 0, 0, 2);
	ProgressClip.AnchorPoint = Vector2.new(0, 1);
	ProgressClip.Position = UDim2.new(0, 0, 1, 0);
	ProgressClip.BackgroundTransparency = 1;
	ProgressClip.ClipsDescendants = true;
	ProgressClip.BorderSizePixel = 0;
	ProgressClip.ZIndex = 102;
	ProgressClip.Parent = InnerFrame;
	local ProgressBarFill = Instance.new("Frame");
	ProgressBarFill.Name = "ProgressBar";
	ProgressBarFill.Size = UDim2.new(1, 0, 1, 0);
	ProgressBarFill.BackgroundColor3 = accentColor;
	ProgressBarFill.BackgroundTransparency = 0.15;
	ProgressBarFill.BorderSizePixel = 0;
	ProgressBarFill.ZIndex = 102;
	ProgressBarFill.Parent = ProgressClip;
	local PBCorner = Instance.new("UICorner");
	PBCorner.CornerRadius = UDim.new(0, 2);
	PBCorner.Parent = ProgressBarFill;
	local _notif_list = (Library._active_instance and Library._active_instance._themed_elements.Notifications) or Library._themed_elements.Notifications;
	table.insert(_notif_list, {Frame=InnerFrame,Stroke=UIStroke,Accent=AccentBar,Title=Title,Body=Body});
	local entry = {Root=Notification,InnerFrame=InnerFrame,UIStroke=UIStroke,AccentBar=AccentBar,Title=Title,Body=Body,_dismissed=false};
	table.insert(ActiveNotifications, entry);
	InnerFrame.Position = UDim2.new(-1, -20, 0, 0);
	InnerFrame.BackgroundTransparency = 0.6;
	AccentBar.BackgroundTransparency = 1;
	TweenService:Create(InnerFrame, Tween.slide, {Position=UDim2.new(0, 0, 0, 0),BackgroundTransparency=0.06}):Play();
	task.delay(0.08, function()
		TweenService:Create(AccentBar, Tween.smooth, {BackgroundTransparency=0}):Play();
		TweenService:Create(Title, Tween.smooth, {TextTransparency=0}):Play();
	end);
	task.delay(0.16, function()
		TweenService:Create(Body, Tween.smooth, {TextTransparency=0}):Play();
	end);
	local duration = settings.duration or Library._notification_settings.duration or 5;
	TweenService:Create(ProgressClip, TweenInfo.new(duration, Enum.EasingStyle.Linear), {Size=UDim2.new(0, 0, 0, 2)}):Play();
	task.delay(duration, function()
		if entry._dismissed then
			return;
		end
		DismissNotification(entry);
	end);
end;
Library.apply_theme = function(self, theme_name)
	if not Themes[theme_name] then
		return;
	end
	local theme = Themes[theme_name];
	self._current_theme = theme_name;
	Library._config._theme = theme_name;
	Config:save(game.GameId, Library._config);
	local elements = self._themed_elements;
	local ti = Tween.smooth;
	if elements.Container then
		TweenService:Create(elements.Container, ti, {BackgroundColor3=theme.Background}):Play();
	end
	if elements.ContainerStroke then
		TweenService:Create(elements.ContainerStroke, ti, {Color=theme.Stroke}):Play();
	end
	if (elements.SearchBarFrame and elements.SearchBarFrame.Parent) then
		local sbStroke = elements.SearchBarFrame:FindFirstChildWhichIsA("UIStroke");
		if sbStroke then
			TweenService:Create(sbStroke, ti, {Color=theme.Text}):Play();
		end
		local sb = elements.SearchBarFrame:FindFirstChildWhichIsA("TextBox");
		if sb then
			sb.PlaceholderColor3 = theme.TextDark;
		end
	end
	for _, module in ipairs(elements.Modules) do
		if (module and module.Parent) then
			TweenService:Create(module, ti, {BackgroundColor3=theme.ModuleBackground}):Play();
		end
	end
	if elements.Pin then
		TweenService:Create(elements.Pin, ti, {BackgroundColor3=theme.Accent}):Play();
	end
	for _, stroke in ipairs(elements.Strokes) do
		if (stroke and stroke.Parent) then
			TweenService:Create(stroke, ti, {Color=theme.Stroke}):Play();
		end
	end
	for _, toggle_data in ipairs(elements.ActiveToggles) do
		if (toggle_data.Toggle and toggle_data.Toggle.Parent) then
			TweenService:Create(toggle_data.Toggle, ti, {BackgroundColor3=theme.Accent}):Play();
		end
		if (toggle_data.Circle and toggle_data.Circle.Parent) then
			TweenService:Create(toggle_data.Circle, ti, {BackgroundColor3=theme.SecondaryAccent}):Play();
		end
	end
	for _, drag in ipairs(elements.SliderDrags) do
		if (drag and drag.Parent) then
			TweenService:Create(drag, ti, {BackgroundColor3=theme.Accent}):Play();
		end
	end
	for _, btn in ipairs(elements.AccentButtons) do
		if (btn and btn.Parent) then
			TweenService:Create(btn, ti, {BackgroundColor3=theme.Accent}):Play();
		end
	end
	for _, dh in ipairs(elements.DropdownHighlights) do
		if (dh.Highlight and dh.Highlight.Parent) then
			dh.Highlight.BackgroundColor3 = theme.Accent;
		end
		if (dh.Dot and dh.Dot.Parent) then
			dh.Dot.BackgroundColor3 = theme.Accent;
		end
	end
	for _, notif_data in ipairs(elements.Notifications) do
		if (notif_data.Frame and notif_data.Frame.Parent) then
			TweenService:Create(notif_data.Frame, ti, {BackgroundColor3=theme.ModuleBackground}):Play();
		end
		if (notif_data.Stroke and notif_data.Stroke.Parent) then
			TweenService:Create(notif_data.Stroke, ti, {Color=theme.Stroke}):Play();
		end
		if (notif_data.Accent and notif_data.Accent.Parent) then
			TweenService:Create(notif_data.Accent, ti, {BackgroundColor3=theme.Accent}):Play();
		end
		if (notif_data.Title and notif_data.Title.Parent) then
			TweenService:Create(notif_data.Title, ti, {TextColor3=theme.Text}):Play();
		end
		if (notif_data.Body and notif_data.Body.Parent) then
			TweenService:Create(notif_data.Body, ti, {TextColor3=theme.TextDark}):Play();
		end
	end
	for _, pf in ipairs(elements.ProgressFills) do
		if (pf and pf.Parent) then
			TweenService:Create(pf, ti, {BackgroundColor3=theme.Accent}):Play();
		end
	end
	for _, sd in ipairs(elements.StatusDots) do
		if (sd and sd.Parent) then
			TweenService:Create(sd, ti, {BackgroundColor3=theme.Accent}):Play();
		end
	end
	if (elements.SearchResults and elements.SearchResults.Parent) then
		TweenService:Create(elements.SearchResults, ti, {BackgroundColor3=theme.Background}):Play();
	end
	if (elements.SearchResultStroke and elements.SearchResultStroke.Parent) then
		TweenService:Create(elements.SearchResultStroke, ti, {Color=theme.Accent}):Play();
	end
end;
Library.new = function(title)
	local self = setmetatable({_loaded=false,_tab=0,_title=(title or "Flow"),_themed_elements={Modules={},Strokes={},ActiveToggles={},SliderDrags={},Notifications={},AccentButtons={},DropdownHighlights={},ProgressFills={},StatusDots={},ColorSwatches={}},_search_registry={}}, Library);
	self:create_ui();
	Library._active_instance = self;
	return self;
end;
Library.get_screen_scale = function(self)
	local vp_x = workspace.CurrentCamera.ViewportSize.X;
	self._ui_scale = vp_x / 1400;
end;
Library.get_device = function(self)
	local device = "Unknown";
	if (not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled) then
		device = "PC";
	elseif UserInputService.TouchEnabled then
		device = "Mobile";
	elseif UserInputService.GamepadEnabled then
		device = "Console";
	end
	self._device = device;
end;
Library.removed = function(self, action)
	self._ui.AncestryChanged:Once(action);
end;
Library.flag_type = function(self, flag, flag_type)
	if not Library._config._flags[flag] then
		return;
	end
	return typeof(Library._config._flags[flag]) == flag_type;
end;
Library.remove_table_value = function(self, __table, table_value)
	for index, value in __table do
		if (value ~= table_value) then
			continue;
		end
		table.remove(__table, index);
	end
end;
Library.register_element = function(self, entry)
	table.insert(self._search_registry, entry);
end;
Library.search_elements = function(self, query)
	if (not query or (query == "")) then
		return {};
	end
	local q = query:lower();
	local results = {};
	for _, entry in ipairs(self._search_registry) do
		local title = (entry.element_title or ""):lower();
		local mod = (entry.module_name or ""):lower();
		local tab = (entry.tab_name or ""):lower();
		local etype = (entry.element_type or ""):lower();
		if (title:find(q, 1, true) or mod:find(q, 1, true) or tab:find(q, 1, true) or etype:find(q, 1, true)) then
			table.insert(results, entry);
		end
	end
	return results;
end;
Library.create_ui = function(self)
	local OldGui = CoreGui:FindFirstChild("Flow");
	if OldGui then
		Debris:AddItem(OldGui, 0);
	end
	local FlowGui = Instance.new("ScreenGui");
	FlowGui.ResetOnSpawn = false;
	FlowGui.Name = "Flow";
	FlowGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	FlowGui.Parent = CoreGui;
	local Container = Instance.new("Frame");
	Container.ClipsDescendants = true;
	Container.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Container.AnchorPoint = Vector2.new(0.5, 0.5);
	Container.Name = "Container";
	Container.BackgroundTransparency = 0.04;
	Container.BackgroundColor3 = Themes[Library._current_theme].Background;
	Container.Position = UDim2.new(0.5, 0, 0.5, 0);
	Container.Size = UDim2.new(0, 0, 0, 0);
	Container.Active = true;
	Container.BorderSizePixel = 0;
	Container.Parent = FlowGui;
	self._themed_elements.Container = Container;
	local UICorner = Instance.new("UICorner");
	UICorner.CornerRadius = UDim.new(0, 12);
	UICorner.Parent = Container;
	local UIStroke = Instance.new("UIStroke");
	UIStroke.Color = Themes[Library._current_theme].Stroke;
	UIStroke.Transparency = 0.35;
	UIStroke.Thickness = 1;
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	UIStroke.Parent = Container;
	self._themed_elements.ContainerStroke = UIStroke;
	table.insert(self._themed_elements.Strokes, UIStroke);
	local Handler = Instance.new("Frame");
	Handler.BackgroundTransparency = 1;
	Handler.Name = "Handler";
	Handler.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Handler.Size = UDim2.new(0, 698, 0, 479);
	Handler.BorderSizePixel = 0;
	Handler.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Handler.Parent = Container;
	local Tabs = Instance.new("ScrollingFrame");
	Tabs.ScrollBarImageTransparency = 1;
	Tabs.ScrollBarThickness = 0;
	Tabs.Name = "Tabs";
	Tabs.Size = UDim2.new(0, 129, 0, 401);
	Tabs.Selectable = false;
	Tabs.AutomaticCanvasSize = Enum.AutomaticSize.XY;
	Tabs.BackgroundTransparency = 1;
	Tabs.Position = UDim2.new(0.026097271591424942, 0, 0.1111111119389534, 0);
	Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Tabs.BorderSizePixel = 0;
	Tabs.CanvasSize = UDim2.new(0, 0, 0.5, 0);
	Tabs.Parent = Handler;
	local TabListLayout = Instance.new("UIListLayout");
	TabListLayout.Padding = UDim.new(0, 4);
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Parent = Tabs;
	local ClientName = Instance.new("TextLabel");
	ClientName.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	ClientName.TextColor3 = Color3.fromRGB(255, 255, 255);
	ClientName.TextTransparency = 0.15;
	ClientName.Text = self._title;
	ClientName.Name = "ClientName";
	ClientName.Size = UDim2.new(0, 40, 0, 13);
	ClientName.AnchorPoint = Vector2.new(0, 0.5);
	ClientName.Position = UDim2.new(0.056, 0, 0.055, 0);
	ClientName.BackgroundTransparency = 1;
	ClientName.TextXAlignment = Enum.TextXAlignment.Left;
	ClientName.BorderSizePixel = 0;
	ClientName.TextSize = 13;
	ClientName.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	ClientName.Parent = Handler;
	local TitleGradient = Instance.new("UIGradient");
	TitleGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))});
	TitleGradient.Parent = ClientName;
	local Pin = Instance.new("Frame");
	Pin.Name = "Pin";
	Pin.Position = UDim2.new(0.026, 0, 0.136, 0);
	Pin.BorderColor3 = Themes[Library._current_theme].Accent;
	Pin.Size = UDim2.new(0, 2, 0, 16);
	Pin.BorderSizePixel = 0;
	Pin.BackgroundColor3 = Themes[Library._current_theme].Accent;
	Pin.Parent = Handler;
	self._themed_elements.Pin = Pin;
	local PinCorner = Instance.new("UICorner");
	PinCorner.CornerRadius = UDim.new(1, 0);
	PinCorner.Parent = Pin;
	local PinGlow = Instance.new("Frame");
	PinGlow.Name = "Glow";
	PinGlow.Size = UDim2.new(3, 0, 1, 0);
	PinGlow.AnchorPoint = Vector2.new(0.5, 0.5);
	PinGlow.Position = UDim2.new(0.5, 0, 0.5, 0);
	PinGlow.BackgroundColor3 = Themes[Library._current_theme].Accent;
	PinGlow.BackgroundTransparency = 0.85;
	PinGlow.BorderSizePixel = 0;
	PinGlow.ZIndex = 0;
	PinGlow.Parent = Pin;
	local PGCorner = Instance.new("UICorner");
	PGCorner.CornerRadius = UDim.new(1, 0);
	PGCorner.Parent = PinGlow;
	local Icon = Instance.new("ImageLabel");
	Icon.ImageColor3 = Color3.fromRGB(255, 255, 255);
	Icon.ScaleType = Enum.ScaleType.Fit;
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Icon.AnchorPoint = Vector2.new(0, 0.5);
	Icon.Image = "rbxassetid://107819132007001";
	Icon.BackgroundTransparency = 1;
	Icon.Position = UDim2.new(0.025, 0, 0.055, 0);
	Icon.Name = "Icon";
	Icon.Size = UDim2.new(0, 18, 0, 18);
	Icon.BorderSizePixel = 0;
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Icon.Parent = Handler;
	local SearchBarFrame = Instance.new("Frame");
	SearchBarFrame.Name = "SearchBarFrame";
	SearchBarFrame.Size = UDim2.new(0, 248, 0, 22);
	SearchBarFrame.AnchorPoint = Vector2.new(1, 0.5);
	SearchBarFrame.Position = UDim2.new(1, -40, 0, 26);
	SearchBarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	SearchBarFrame.BackgroundTransparency = 0.91;
	SearchBarFrame.BorderSizePixel = 0;
	SearchBarFrame.ZIndex = 5;
	SearchBarFrame.Parent = Handler;
	local SBFCorner = Instance.new("UICorner");
	SBFCorner.CornerRadius = UDim.new(0, 5);
	SBFCorner.Parent = SearchBarFrame;
	local SBFStroke = Instance.new("UIStroke");
	SBFStroke.Color = Color3.fromRGB(255, 255, 255);
	SBFStroke.Transparency = 0.82;
	SBFStroke.Thickness = 1;
	SBFStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	SBFStroke.Parent = SearchBarFrame;
	local SBIcon = Instance.new("ImageLabel");
	SBIcon.Image = "rbxassetid://79095934438045";
	SBIcon.ImageColor3 = Color3.fromRGB(160, 165, 195);
	SBIcon.ImageTransparency = 0.3;
	SBIcon.Size = UDim2.new(0, 11, 0, 11);
	SBIcon.AnchorPoint = Vector2.new(0, 0.5);
	SBIcon.Position = UDim2.new(0, 7, 0.5, 0);
	SBIcon.BackgroundTransparency = 1;
	SBIcon.ScaleType = Enum.ScaleType.Fit;
	SBIcon.ZIndex = 6;
	SBIcon.Parent = SearchBarFrame;
	local SearchBox = Instance.new("TextBox");
	SearchBox.Name = "SearchBox";
	SearchBox.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	SearchBox.TextColor3 = Color3.fromRGB(230, 235, 255);
	SearchBox.PlaceholderColor3 = Color3.fromRGB(110, 115, 148);
	SearchBox.PlaceholderText = "Search...";
	SearchBox.Text = "";
	SearchBox.TextSize = 11;
	SearchBox.Size = UDim2.new(1, -24, 1, 0);
	SearchBox.Position = UDim2.new(0, 22, 0, 0);
	SearchBox.BackgroundTransparency = 1;
	SearchBox.BorderSizePixel = 0;
	SearchBox.TextXAlignment = Enum.TextXAlignment.Left;
	SearchBox.ClearTextOnFocus = false;
	SearchBox.ZIndex = 6;
	SearchBox.Parent = SearchBarFrame;
	local SBClear = Instance.new("TextButton");
	SBClear.Text = "×";
	SBClear.TextColor3 = Color3.fromRGB(160, 165, 195);
	SBClear.TextSize = 13;
	SBClear.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	SBClear.Size = UDim2.new(0, 18, 1, 0);
	SBClear.AnchorPoint = Vector2.new(1, 0.5);
	SBClear.Position = UDim2.new(1, -2, 0.5, 0);
	SBClear.BackgroundTransparency = 1;
	SBClear.AutoButtonColor = false;
	SBClear.Visible = false;
	SBClear.ZIndex = 7;
	SBClear.Parent = SearchBarFrame;
	local SearchResults = Instance.new("Frame");
	SearchResults.Name = "SearchResults";
	SearchResults.Size = UDim2.new(0, 290, 0, 0);
	SearchResults.AnchorPoint = Vector2.new(1, 0);
	SearchResults.Position = UDim2.new(1, -4, 0, 52);
	SearchResults.BackgroundColor3 = Themes[Library._current_theme].Background;
	SearchResults.BackgroundTransparency = 0.04;
	SearchResults.BorderSizePixel = 0;
	SearchResults.ClipsDescendants = true;
	SearchResults.Visible = false;
	SearchResults.ZIndex = 30;
	SearchResults.AutomaticSize = Enum.AutomaticSize.None;
	SearchResults.Parent = Container;
	local SRCorner = Instance.new("UICorner");
	SRCorner.CornerRadius = UDim.new(0, 8);
	SRCorner.Parent = SearchResults;
	local SRStroke = Instance.new("UIStroke");
	SRStroke.Color = Themes[Library._current_theme].Accent;
	SRStroke.Transparency = 0.55;
	SRStroke.Thickness = 1;
	SRStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	SRStroke.Parent = SearchResults;
	local SRScroll = Instance.new("ScrollingFrame");
	SRScroll.Name = "Scroll";
	SRScroll.Size = UDim2.new(1, 0, 1, 0);
	SRScroll.BackgroundTransparency = 1;
	SRScroll.ScrollBarThickness = 2;
	SRScroll.ScrollBarImageColor3 = Themes[Library._current_theme].Accent;
	SRScroll.ScrollBarImageTransparency = 0.4;
	SRScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	SRScroll.CanvasSize = UDim2.new(0, 0, 0, 0);
	SRScroll.BorderSizePixel = 0;
	SRScroll.ZIndex = 31;
	SRScroll.Parent = SearchResults;
	local SRLayout = Instance.new("UIListLayout");
	SRLayout.Padding = UDim.new(0, 3);
	SRLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	SRLayout.Parent = SRScroll;
	local SRPad = Instance.new("UIPadding");
	SRPad.PaddingTop = UDim.new(0, 6);
	SRPad.PaddingBottom = UDim.new(0, 6);
	SRPad.PaddingLeft = UDim.new(0, 6);
	SRPad.PaddingRight = UDim.new(0, 6);
	SRPad.Parent = SRScroll;
	local SRHint = Instance.new("TextLabel");
	SRHint.Name = "Hint";
	SRHint.Text = "No results";
	SRHint.TextColor3 = Color3.fromRGB(110, 115, 148);
	SRHint.TextSize = 10;
	SRHint.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	SRHint.Size = UDim2.new(1, 0, 0, 28);
	SRHint.BackgroundTransparency = 1;
	SRHint.TextXAlignment = Enum.TextXAlignment.Center;
	SRHint.Visible = false;
	SRHint.ZIndex = 32;
	SRHint.Parent = SRScroll;
	self._themed_elements.SearchResults = SearchResults;
	self._themed_elements.SearchResultStroke = SRStroke;
	self._themed_elements.SearchBarFrame = SearchBarFrame;
	local _lastQuery = "";
	local _resultRows = {};
	local function clearResults()
		for _, r in ipairs(_resultRows) do
			if (r and r.Parent) then
				r:Destroy();
			end
		end
		_resultRows = {};
		SRHint.Visible = false;
	end
	local function highlightElement(entry)
		local ok, frame = pcall(function()
			return entry.get_frame_fn();
		end);
		if (not ok or not frame or not frame.Parent) then
			return;
		end
		local pulse = Instance.new("UIStroke");
		pulse.Color = Themes[Library._current_theme].Accent;
		pulse.Transparency = 0;
		pulse.Thickness = 2;
		pulse.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		pulse.Parent = frame;
		TweenService:Create(pulse, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {Transparency=0}):Play();
		task.delay(0.6, function()
			TweenService:Create(pulse, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {Transparency=1}):Play();
			task.delay(0.55, function()
				if pulse.Parent then
					pulse:Destroy();
				end
			end);
		end);
	end
	local function jumpToEntry(entry)
		if entry.switch_tab_fn then
			pcall(entry.switch_tab_fn);
		end
		if entry.open_module_fn then
			pcall(entry.open_module_fn);
		end
		local ok, frame = pcall(function()
			return entry.get_frame_fn();
		end);
		if (ok and frame and frame.Parent) then
			task.delay(0.12, function()
				local cur = frame.Parent;
				while cur and not cur:IsA("ScrollingFrame") do
					cur = cur.Parent;
				end
				if (cur and cur:IsA("ScrollingFrame")) then
					local relPos = (frame.AbsolutePosition.Y - cur.AbsolutePosition.Y) + cur.CanvasPosition.Y;
					TweenService:Create(cur, Tween.fast, {CanvasPosition=Vector2.new(0, math.max(0, relPos - 20))}):Play();
				end
			end);
		end
		task.delay(0.2, function()
			highlightElement(entry);
		end);
	end
	local function buildResults(query)
		clearResults();
		if (query == "") then
			SearchResults.Visible = false;
			return;
		end
		local results = self:search_elements(query);
		if (#results == 0) then
			SRHint.Text = 'No results for "' .. query .. '"';
			SRHint.Visible = true;
			local targetH = 40;
			TweenService:Create(SearchResults, Tween.fast, {Size=UDim2.new(0, 290, 0, targetH)}):Play();
			SearchResults.Visible = true;
			return;
		end
		local theme = Themes[Library._current_theme] or Themes['Midnight'];
		for idx, entry in ipairs(results) do
			local Row = Instance.new("TextButton");
			Row.Name = "R_" .. idx;
			Row.Size = UDim2.new(1, 0, 0, 44);
			Row.BackgroundColor3 = theme.ModuleBackground;
			Row.BackgroundTransparency = 0.3;
			Row.BorderSizePixel = 0;
			Row.Text = "";
			Row.AutoButtonColor = false;
			Row.LayoutOrder = idx;
			Row.ZIndex = 32;
			Row.Parent = SRScroll;
			table.insert(_resultRows, Row);
			local RCorner = Instance.new("UICorner");
			RCorner.CornerRadius = UDim.new(0, 5);
			RCorner.Parent = Row;
			local Badge = Instance.new("TextLabel");
			Badge.Text = (entry.element_type or ""):upper();
			Badge.TextSize = 8;
			Badge.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Badge.TextColor3 = theme.Accent;
			Badge.BackgroundColor3 = theme.Accent;
			Badge.BackgroundTransparency = 0.85;
			Badge.Size = UDim2.new(0, 0, 0, 11);
			Badge.AutomaticSize = Enum.AutomaticSize.X;
			Badge.Position = UDim2.new(0, 8, 0, 4);
			Badge.TextXAlignment = Enum.TextXAlignment.Center;
			Badge.ZIndex = 33;
			Badge.Parent = Row;
			local BadgeCorner = Instance.new("UICorner");
			BadgeCorner.CornerRadius = UDim.new(0, 3);
			BadgeCorner.Parent = Badge;
			local BadgePad = Instance.new("UIPadding");
			BadgePad.PaddingLeft = UDim.new(0, 4);
			BadgePad.PaddingRight = UDim.new(0, 4);
			BadgePad.Parent = Badge;
			local RTitle = Instance.new("TextLabel");
			RTitle.Text = entry.element_title or "(untitled)";
			RTitle.TextSize = 12;
			RTitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			RTitle.TextColor3 = Color3.fromRGB(238, 242, 255);
			RTitle.TextTransparency = 0;
			RTitle.BackgroundTransparency = 1;
			RTitle.Size = UDim2.new(1, -36, 0, 13);
			RTitle.Position = UDim2.new(0, 8, 0, 16);
			RTitle.TextXAlignment = Enum.TextXAlignment.Left;
			RTitle.TextTruncate = Enum.TextTruncate.AtEnd;
			RTitle.ZIndex = 33;
			RTitle.Parent = Row;
			local Crumb = Instance.new("TextLabel");
			Crumb.Text = (entry.tab_name or "?") .. "  ›  " .. (entry.module_name or "?");
			Crumb.TextSize = 9;
			Crumb.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Crumb.TextColor3 = Color3.fromRGB(110, 115, 148);
			Crumb.BackgroundTransparency = 1;
			Crumb.Size = UDim2.new(1, -36, 0, 10);
			Crumb.Position = UDim2.new(0, 8, 0, 30);
			Crumb.TextXAlignment = Enum.TextXAlignment.Left;
			Crumb.TextTruncate = Enum.TextTruncate.AtEnd;
			Crumb.ZIndex = 33;
			Crumb.Parent = Row;
			local Arrow = Instance.new("TextLabel");
			Arrow.Text = "→";
			Arrow.TextSize = 14;
			Arrow.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Arrow.TextColor3 = theme.Accent;
			Arrow.TextTransparency = 0.5;
			Arrow.BackgroundTransparency = 1;
			Arrow.Size = UDim2.new(0, 22, 1, 0);
			Arrow.AnchorPoint = Vector2.new(1, 0.5);
			Arrow.Position = UDim2.new(1, -6, 0.5, 0);
			Arrow.ZIndex = 33;
			Arrow.Parent = Row;
			Row.MouseEnter:Connect(function()
				TweenService:Create(Row, Tween.snap, {BackgroundTransparency=0.05}):Play();
				TweenService:Create(Arrow, Tween.snap, {TextTransparency=0}):Play();
			end);
			Row.MouseLeave:Connect(function()
				TweenService:Create(Row, Tween.snap, {BackgroundTransparency=0.3}):Play();
				TweenService:Create(Arrow, Tween.snap, {TextTransparency=0.5}):Play();
			end);
			Row.MouseButton1Click:Connect(function()
				SearchBox.Text = "";
				SBClear.Visible = false;
				SearchResults.Visible = false;
				clearResults();
				task.spawn(function()
					jumpToEntry(entry);
				end);
			end);
		end
		local rowH = (math.min(#results, 7) * 47) + 12;
		TweenService:Create(SearchResults, Tween.fast, {Size=UDim2.new(0, 290, 0, rowH)}):Play();
		SearchResults.Visible = true;
	end
	SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
		local q = SearchBox.Text;
		SBClear.Visible = q ~= "";
		if (q == _lastQuery) then
			return;
		end
		_lastQuery = q;
		buildResults(q);
		if (q ~= "") then
			TweenService:Create(SearchBarFrame, Tween.snap, {BackgroundTransparency=0.8}):Play();
			TweenService:Create(SBFStroke, Tween.snap, {Transparency=0.55}):Play();
		else
			TweenService:Create(SearchBarFrame, Tween.snap, {BackgroundTransparency=0.91}):Play();
			TweenService:Create(SBFStroke, Tween.snap, {Transparency=0.82}):Play();
		end
	end);
	SearchBox.Focused:Connect(function()
		TweenService:Create(SearchBarFrame, Tween.snap, {BackgroundTransparency=0.82}):Play();
		TweenService:Create(SBFStroke, Tween.snap, {Transparency=0.45}):Play();
		if (SearchBox.Text ~= "") then
			buildResults(SearchBox.Text);
		end
	end);
	SearchBox.FocusLost:Connect(function()
		TweenService:Create(SearchBarFrame, Tween.snap, {BackgroundTransparency=0.91}):Play();
		TweenService:Create(SBFStroke, Tween.snap, {Transparency=0.82}):Play();
		task.delay(0.18, function()
			if not SearchBox:IsFocused() then
				SearchResults.Visible = false;
			end
		end);
	end);
	SBClear.MouseButton1Click:Connect(function()
		SearchBox.Text = "";
		_lastQuery = "";
		SBClear.Visible = false;
		clearResults();
		SearchResults.Visible = false;
		SearchBox:CaptureFocus();
	end);
	Connections['search_shortcut'] = UserInputService.InputBegan:Connect(function(input, process)
		if process then
			return;
		end
		if ((input.KeyCode == Enum.KeyCode.F) and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)) then
			SearchBox:CaptureFocus();
		end
		if (input.KeyCode == Enum.KeyCode.Escape) then
			if (SearchBox:IsFocused() or SearchResults.Visible) then
				SearchBox.Text = "";
				_lastQuery = "";
				SBClear.Visible = false;
				SearchResults.Visible = false;
				clearResults();
			end
		end
	end);
	local UIScale = Instance.new("UIScale");
	UIScale.Parent = Container;
	self._ui = FlowGui;
	local function on_drag(input, process)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			self._dragging = true;
			self._drag_start = input.Position;
			self._container_position = Container.Position;
			Connections['container_input_ended'] = input.Changed:Connect(function()
				if (input.UserInputState ~= Enum.UserInputState.End) then
					return;
				end
				Connections:disconnect("container_input_ended");
				self._dragging = false;
			end);
		end
	end
	local function update_drag(input)
		local delta = input.Position - self._drag_start;
		local position = UDim2.new(self._container_position.X.Scale, self._container_position.X.Offset + delta.X, self._container_position.Y.Scale, self._container_position.Y.Offset + delta.Y);
		TweenService:Create(Container, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position=position}):Play();
	end
	local function drag(input, process)
		if not self._dragging then
			return;
		end
		if ((input.UserInputType == Enum.UserInputType.MouseMovement) or (input.UserInputType == Enum.UserInputType.Touch)) then
			update_drag(input);
		end
	end
	Connections['container_input_began'] = Container.InputBegan:Connect(on_drag);
	Connections['input_changed'] = UserInputService.InputChanged:Connect(drag);
	self:removed(function()
		self._ui = nil;
		Connections:disconnect_all();
	end);
	self.Update1Run = function(self, a)
		if (a == "nil") then
			Container.BackgroundTransparency = 0.04;
		else
			pcall(function()
				Container.BackgroundTransparency = tonumber(a);
			end);
		end
	end;
	self.UIVisiblity = function(self)
		FlowGui.Enabled = not FlowGui.Enabled;
	end;
	self.change_visiblity = function(self, state)
		local Is_Mobile = UserInputService.TouchEnabled;
		if not Is_Mobile then
			Container.Visible = state;
		end
		local _divider = self._internal and self._internal.Divider;
		if state then
			if _divider then
				_divider.Visible = true;
			end
			Pin.Visible = true;
			Tabs.Visible = true;
			SearchBarFrame.Visible = true;
			if self._active_left_section then
				self._active_left_section.Visible = true;
			end
			if self._active_right_section then
				self._active_right_section.Visible = true;
			end
			TweenService:Create(Container, Tween.slow, {Size=UDim2.fromOffset(698, 479)}):Play();
		else
			if _divider then
				_divider.Visible = false;
			end
			Pin.Visible = false;
			Tabs.Visible = false;
			SearchBarFrame.Visible = false;
			if SearchResults then
				SearchResults.Visible = false;
			end
			if SearchBox then
				SearchBox.Text = "";
			end
			if self._active_left_section then
				self._active_left_section.Visible = false;
			end
			if self._active_right_section then
				self._active_right_section.Visible = false;
			end
			local titleParams = Instance.new("GetTextBoundsParams");
			titleParams.Text = self._title;
			titleParams.Font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			titleParams.Size = 13;
			titleParams.Width = 10000;
			local titleBounds = TextService:GetTextBoundsAsync(titleParams);
			local minWidth = math.max(104.5, 18 + 14 + 6 + titleBounds.X + 14 + 24 + 10);
			TweenService:Create(Container, Tween.slow, {Size=UDim2.fromOffset(minWidth, 52)}):Play();
		end
	end;
	self.load = function(self)
		local content = {};
		for _, object in FlowGui:GetDescendants() do
			if not object:IsA("ImageLabel") then
				continue;
			end
			table.insert(content, object);
		end
		ContentProvider:PreloadAsync(content);
		self:get_device();
		if ((self._device == "Mobile") or (self._device == "Unknown")) then
			self:get_screen_scale();
			UIScale.Scale = self._ui_scale;
			Connections['ui_scale'] = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
				self:get_screen_scale();
				UIScale.Scale = self._ui_scale;
			end);
		end
		TweenService:Create(Container, Tween.slow, {Size=UDim2.fromOffset(698, 479)}):Play();
		self:create_settings_tab();
		local blurInst = AcrylicBlur.new(Container);
		self._blur_instance = blurInst;
		self._ui_loaded = true;
		if (Library._config._theme and Themes[Library._config._theme]) then
			self:apply_theme(Library._config._theme);
		end
	end;
	self.update_tabs = function(self, tab)
		for index, object in Tabs:GetChildren() do
			if (object.Name ~= "Tab") then
				continue;
			end
			if (object == tab) then
				if (object.BackgroundTransparency ~= 0.5) then
					local offset = object.LayoutOrder * (0.113 / 1.3);
					TweenService:Create(Pin, Tween.spring, {Position=UDim2.fromScale(0.026, 0.135 + offset)}):Play();
					TweenService:Create(object, Tween.smooth, {BackgroundTransparency=0.5}):Play();
					TweenService:Create(object.TextLabel, Tween.smooth, {TextTransparency=0.1,TextColor3=Color3.fromRGB(255, 255, 255)}):Play();
					TweenService:Create(object.TextLabel.UIGradient, Tween.smooth, {Offset=Vector2.new(1, 0)}):Play();
					TweenService:Create(object.Icon, Tween.smooth, {ImageTransparency=0.1,ImageColor3=Color3.fromRGB(255, 255, 255)}):Play();
				end
				continue;
			end
			if (object.BackgroundTransparency ~= 1) then
				TweenService:Create(object, Tween.smooth, {BackgroundTransparency=1}):Play();
				TweenService:Create(object.TextLabel, Tween.smooth, {TextTransparency=0.65,TextColor3=Color3.fromRGB(255, 255, 255)}):Play();
				TweenService:Create(object.TextLabel.UIGradient, Tween.smooth, {Offset=Vector2.new(0, 0)}):Play();
				TweenService:Create(object.Icon, Tween.smooth, {ImageTransparency=0.75,ImageColor3=Color3.fromRGB(255, 255, 255)}):Play();
			end
		end
	end;
	self.update_sections = function(self, left_section, right_section)
		local _sects = self._internal and self._internal.Sections;
		if not _sects then
			return;
		end
		for _, object in _sects:GetChildren() do
			if ((object == left_section) or (object == right_section)) then
				object.Visible = true;
				continue;
			end
			object.Visible = false;
		end
		self._active_left_section = left_section;
		self._active_right_section = right_section;
	end;
	self.create_theme_dropdown = function(self, parent_module)
		local theme_names = {};
		for name, _ in pairs(Themes) do
			table.insert(theme_names, name);
		end
		table.sort(theme_names);
		parent_module:create_dropdown({title="UI Theme",flag="SelectedTheme",options=theme_names,multi_dropdown=false,maximum_options=#theme_names,callback=function(selected_theme)
			self:apply_theme(selected_theme);
			local meta = ThemeMeta[selected_theme];
			local desc = (meta and meta.desc) or selected_theme;
			Library.SendNotification({title=("Theme · " .. selected_theme),text=desc,duration=2.5});
		end});
	end;
	Connections['library_visiblity'] = UserInputService.InputBegan:Connect(function(input, process)
		if (input.KeyCode ~= Enum.KeyCode.RightShift) then
			return;
		end
		self._ui_open = not self._ui_open;
		self:change_visiblity(self._ui_open);
	end);
	local Divider = Instance.new("Frame");
	Divider.Name = "Divider";
	Divider.BackgroundTransparency = 0.7;
	Divider.Position = UDim2.new(0.235, 0, 0, 0);
	Divider.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Divider.Size = UDim2.new(0, 1, 0, 479);
	Divider.BorderSizePixel = 0;
	Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Divider.Parent = Handler;
	local Sections = Instance.new("Folder");
	Sections.Name = "Sections";
	Sections.Parent = Handler;
	local Minimize = Instance.new("TextButton");
	Minimize.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Minimize.TextColor3 = Color3.fromRGB(0, 0, 0);
	Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Minimize.Text = "";
	Minimize.AutoButtonColor = false;
	Minimize.Name = "Minimize";
	Minimize.BackgroundTransparency = 1;
	Minimize.Position = UDim2.new(0.020057305693626404, 0, 0.02922755666077137, 0);
	Minimize.Size = UDim2.new(0, 24, 0, 24);
	Minimize.BorderSizePixel = 0;
	Minimize.TextSize = 14;
	Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Minimize.Parent = Handler;
	Minimize.MouseButton1Click:Connect(function()
		self._ui_open = not self._ui_open;
		self:change_visiblity(self._ui_open);
	end);
	self._internal = {Container=Container,Sections=Sections,Tabs=Tabs,Divider=Divider};
end;
Library.create_tab = function(self, title, icon)
	local lib = self;
	local TabManager = {};
	local LayoutOrderModule = 0;
	local font_params = Instance.new("GetTextBoundsParams");
	font_params.Text = title;
	font_params.Font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	font_params.Size = 13;
	font_params.Width = 10000;
	local font_size = TextService:GetTextBoundsAsync(font_params);
	local Sections = self._internal.Sections;
	local Tabs = self._internal.Tabs;
	local first_tab = not Tabs:FindFirstChild("Tab");
	local Pin = self._internal.Pin;
	local Tab = Instance.new("TextButton");
	Tab.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Tab.TextColor3 = Color3.fromRGB(0, 0, 0);
	Tab.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Tab.Text = "";
	Tab.AutoButtonColor = false;
	Tab.BackgroundTransparency = 1;
	Tab.Name = "Tab";
	Tab.Size = UDim2.new(0, 129, 0, 38);
	Tab.BorderSizePixel = 0;
	Tab.TextSize = 14;
	Tab.BackgroundColor3 = Color3.fromRGB(22, 28, 38);
	Tab.Parent = Tabs;
	Tab.LayoutOrder = self._tab;
	local TabCorner = Instance.new("UICorner");
	TabCorner.CornerRadius = UDim.new(0, 7);
	TabCorner.Parent = Tab;
	local TextLabel = Instance.new("TextLabel");
	TextLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
	TextLabel.TextTransparency = 0.65;
	TextLabel.Text = title;
	TextLabel.Size = UDim2.new(0, font_size.X, 0, 16);
	TextLabel.AnchorPoint = Vector2.new(0, 0.5);
	TextLabel.Position = UDim2.new(0.24, 0, 0.5, 0);
	TextLabel.BackgroundTransparency = 1;
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TextLabel.BorderSizePixel = 0;
	TextLabel.TextSize = 13;
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	TextLabel.Parent = Tab;
	local TabGrad = Instance.new("UIGradient");
	TabGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.7, Color3.fromRGB(155, 155, 155)),ColorSequenceKeypoint.new(1, Color3.fromRGB(58, 58, 58))});
	TabGrad.Parent = TextLabel;
	local TabIcon = Instance.new("ImageLabel");
	TabIcon.ScaleType = Enum.ScaleType.Fit;
	TabIcon.ImageTransparency = 0.75;
	TabIcon.BorderColor3 = Color3.fromRGB(0, 0, 0);
	TabIcon.AnchorPoint = Vector2.new(0, 0.5);
	TabIcon.BackgroundTransparency = 1;
	TabIcon.Position = UDim2.new(0.1, 0, 0.5, 0);
	TabIcon.Name = "Icon";
	TabIcon.Image = icon or "";
	TabIcon.Size = UDim2.new(0, 12, 0, 12);
	TabIcon.BorderSizePixel = 0;
	TabIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	TabIcon.Parent = Tab;
	Tab.MouseEnter:Connect(function()
		if (Tab.BackgroundTransparency ~= 0.5) then
			TweenService:Create(Tab, Tween.fast, {BackgroundTransparency=0.85}):Play();
		end
	end);
	Tab.MouseLeave:Connect(function()
		if (Tab.BackgroundTransparency ~= 0.5) then
			TweenService:Create(Tab, Tween.fast, {BackgroundTransparency=1}):Play();
		end
	end);
	local function makeSection(name, xPos)
		local S = Instance.new("ScrollingFrame");
		S.Name = name;
		S.AutomaticCanvasSize = Enum.AutomaticSize.XY;
		S.ScrollBarThickness = 0;
		S.Size = UDim2.new(0, 243, 0, 420);
		S.Selectable = false;
		S.AnchorPoint = Vector2.new(0, 0);
		S.ScrollBarImageTransparency = 1;
		S.BackgroundTransparency = 1;
		S.Position = UDim2.new(xPos, 0, 0, 42);
		S.BorderColor3 = Color3.fromRGB(0, 0, 0);
		S.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		S.BorderSizePixel = 0;
		S.CanvasSize = UDim2.new(0, 0, 0.5, 0);
		S.Visible = false;
		S.Parent = Sections;
		local L = Instance.new("UIListLayout");
		L.Padding = UDim.new(0, 10);
		L.HorizontalAlignment = Enum.HorizontalAlignment.Center;
		L.SortOrder = Enum.SortOrder.LayoutOrder;
		L.Parent = S;
		local P = Instance.new("UIPadding");
		P.PaddingTop = UDim.new(0, 10);
		P.Parent = S;
		return S;
	end
	local LeftSection = makeSection("LeftSection", 0.2594326436519623);
	local RightSection = makeSection("RightSection", 0.6290000081062317);
	self._tab += 1
	if first_tab then
		self:update_tabs(Tab, LeftSection, RightSection);
		self:update_sections(LeftSection, RightSection);
	end
	Tab.MouseButton1Click:Connect(function()
		self:update_tabs(Tab, LeftSection, RightSection);
		self:update_sections(LeftSection, RightSection);
	end);
	local function switch_to_this_tab()
		self:update_tabs(Tab, LeftSection, RightSection);
		self:update_sections(LeftSection, RightSection);
	end
	TabManager.create_label = function(self, settings)
		local targetSection = ((settings.section == "right") and RightSection) or LeftSection;
		local LabelFrame = Instance.new("Frame");
		LabelFrame.Name = "IndependentLabel";
		LabelFrame.BackgroundColor3 = Themes[Library._current_theme].ModuleBackground;
		LabelFrame.BackgroundTransparency = 0.45;
		LabelFrame.Size = UDim2.new(0, 241, 0, 0);
		LabelFrame.AutomaticSize = Enum.AutomaticSize.Y;
		LabelFrame.BorderSizePixel = 0;
		LabelFrame.Parent = targetSection;
		table.insert(lib._themed_elements.Modules, LabelFrame);
		local LFCorner = Instance.new("UICorner");
		LFCorner.CornerRadius = UDim.new(0, 7);
		LFCorner.Parent = LabelFrame;
		local LFStroke = Instance.new("UIStroke");
		LFStroke.Color = Themes[Library._current_theme].Stroke;
		LFStroke.Transparency = 0.4;
		LFStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		LFStroke.Parent = LabelFrame;
		table.insert(lib._themed_elements.Strokes, LFStroke);
		local LFPad = Instance.new("UIPadding");
		LFPad.PaddingTop = UDim.new(0, 12);
		LFPad.PaddingBottom = UDim.new(0, 12);
		LFPad.PaddingLeft = UDim.new(0, 14);
		LFPad.PaddingRight = UDim.new(0, 14);
		LFPad.Parent = LabelFrame;
		local LFLayout = Instance.new("UIListLayout");
		LFLayout.Padding = UDim.new(0, 6);
		LFLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		LFLayout.Parent = LabelFrame;
		local TitleLabel = nil;
		if settings.title then
			TitleLabel = Instance.new("TextLabel");
			TitleLabel.Name = "Title";
			TitleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			TitleLabel.TextColor3 = Themes[Library._current_theme].Text;
			TitleLabel.TextTransparency = 0.1;
			TitleLabel.TextSize = 13;
			TitleLabel.Text = settings.title;
			TitleLabel.Size = UDim2.new(1, 0, 0, 0);
			TitleLabel.AutomaticSize = Enum.AutomaticSize.Y;
			TitleLabel.BackgroundTransparency = 1;
			TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TitleLabel.TextWrapped = true;
			TitleLabel.LayoutOrder = 1;
			TitleLabel.Parent = LabelFrame;
			if settings.rich then
				TitleLabel.RichText = true;
			end
		end
		local BodyLabel = nil;
		if settings.text then
			BodyLabel = Instance.new("TextLabel");
			BodyLabel.Name = "Body";
			BodyLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			BodyLabel.TextColor3 = Themes[Library._current_theme].TextDark;
			BodyLabel.TextTransparency = 0.2;
			BodyLabel.TextSize = 11;
			BodyLabel.Text = settings.text;
			BodyLabel.Size = UDim2.new(1, 0, 0, 0);
			BodyLabel.AutomaticSize = Enum.AutomaticSize.Y;
			BodyLabel.BackgroundTransparency = 1;
			BodyLabel.TextXAlignment = Enum.TextXAlignment.Left;
			BodyLabel.TextWrapped = true;
			BodyLabel.LayoutOrder = 2;
			BodyLabel.Parent = LabelFrame;
			if settings.rich then
				BodyLabel.RichText = true;
			end
		end
		local LabelManager = {};
		LabelManager.SetText = function(self, newText)
			if BodyLabel then
				BodyLabel.Text = newText;
			end
		end;
		LabelManager.SetTitle = function(self, newTitle)
			if TitleLabel then
				TitleLabel.Text = newTitle;
			end
		end;
		LabelManager.Set = function(self, newSettings)
			if (newSettings.title and TitleLabel) then
				TitleLabel.Text = newSettings.title;
				if newSettings.rich then
					TitleLabel.RichText = true;
				end
			end
			if (newSettings.text and BodyLabel) then
				BodyLabel.Text = newSettings.text;
				if newSettings.rich then
					BodyLabel.RichText = true;
				end
			end
		end;
		LabelManager.Destroy = function(self)
			lib:remove_table_value(lib._themed_elements.Modules, LabelFrame);
			lib:remove_table_value(lib._themed_elements.Strokes, LFStroke);
			LabelFrame:Destroy();
		end;
		lib:register_element({tab_name=title,module_name="(tab-level)",element_type="label",element_title=(settings.title or settings.text or "Label"),get_frame_fn=function()
			return LabelFrame;
		end,jump_fn=nil,switch_tab_fn=switch_to_this_tab,open_module_fn=nil});
		return LabelManager;
	end;
	TabManager.create_button = function(self, settings)
		local targetSection = ((settings.section == "right") and RightSection) or LeftSection;
		local ButtonFrame = Instance.new("Frame");
		ButtonFrame.Name = "IndependentButton";
		ButtonFrame.BackgroundColor3 = Themes[Library._current_theme].ModuleBackground;
		ButtonFrame.BackgroundTransparency = 0.45;
		ButtonFrame.Size = UDim2.new(0, 241, 0, 0);
		ButtonFrame.AutomaticSize = Enum.AutomaticSize.Y;
		ButtonFrame.BorderSizePixel = 0;
		ButtonFrame.Parent = targetSection;
		table.insert(lib._themed_elements.Modules, ButtonFrame);
		local BFCorner = Instance.new("UICorner");
		BFCorner.CornerRadius = UDim.new(0, 7);
		BFCorner.Parent = ButtonFrame;
		local BFStroke = Instance.new("UIStroke");
		BFStroke.Color = Themes[Library._current_theme].Stroke;
		BFStroke.Transparency = 0.4;
		BFStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		BFStroke.Parent = ButtonFrame;
		table.insert(lib._themed_elements.Strokes, BFStroke);
		local BFPad = Instance.new("UIPadding");
		BFPad.PaddingTop = UDim.new(0, 12);
		BFPad.PaddingBottom = UDim.new(0, 12);
		BFPad.PaddingLeft = UDim.new(0, 14);
		BFPad.PaddingRight = UDim.new(0, 14);
		BFPad.Parent = ButtonFrame;
		local BFLayout = Instance.new("UIListLayout");
		BFLayout.Padding = UDim.new(0, 8);
		BFLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		BFLayout.Parent = ButtonFrame;
		local TitleLabel = nil;
		if settings.title then
			TitleLabel = Instance.new("TextLabel");
			TitleLabel.Name = "Title";
			TitleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			TitleLabel.TextColor3 = Themes[Library._current_theme].Text;
			TitleLabel.TextTransparency = 0.1;
			TitleLabel.TextSize = 13;
			TitleLabel.Text = settings.title;
			TitleLabel.Size = UDim2.new(1, 0, 0, 0);
			TitleLabel.AutomaticSize = Enum.AutomaticSize.Y;
			TitleLabel.BackgroundTransparency = 1;
			TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TitleLabel.TextWrapped = true;
			TitleLabel.LayoutOrder = 1;
			TitleLabel.Parent = ButtonFrame;
			if settings.rich then
				TitleLabel.RichText = true;
			end
		end
		local DescLabel = nil;
		if settings.description then
			DescLabel = Instance.new("TextLabel");
			DescLabel.Name = "Description";
			DescLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			DescLabel.TextColor3 = Themes[Library._current_theme].TextDark;
			DescLabel.TextTransparency = 0.2;
			DescLabel.TextSize = 11;
			DescLabel.Text = settings.description;
			DescLabel.Size = UDim2.new(1, 0, 0, 0);
			DescLabel.AutomaticSize = Enum.AutomaticSize.Y;
			DescLabel.BackgroundTransparency = 1;
			DescLabel.TextXAlignment = Enum.TextXAlignment.Left;
			DescLabel.TextWrapped = true;
			DescLabel.LayoutOrder = 2;
			DescLabel.Parent = ButtonFrame;
		end
		local Button = Instance.new("TextButton");
		Button.Name = "Button";
		Button.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		Button.TextColor3 = Themes[Library._current_theme].Text;
		Button.Text = settings.buttonText or SelectedLanguage.ButtonClick or "Click";
		Button.TextSize = 12;
		Button.Size = UDim2.new(1, 0, 0, 34);
		Button.BackgroundColor3 = Themes[Library._current_theme].Accent;
		Button.BackgroundTransparency = 0.25;
		Button.BorderSizePixel = 0;
		Button.AutoButtonColor = false;
		Button.LayoutOrder = 3;
		Button.Parent = ButtonFrame;
		table.insert(lib._themed_elements.AccentButtons, Button);
		local BtnCorner = Instance.new("UICorner");
		BtnCorner.CornerRadius = UDim.new(0, 6);
		BtnCorner.Parent = Button;
		Button.MouseEnter:Connect(function()
			TweenService:Create(Button, Tween.fast, {BackgroundTransparency=0.05}):Play();
		end);
		Button.MouseLeave:Connect(function()
			TweenService:Create(Button, Tween.fast, {BackgroundTransparency=0.25}):Play();
		end);
		Button.MouseButton1Down:Connect(function()
			TweenService:Create(Button, Tween.snap_in, {BackgroundTransparency=0.5,Size=UDim2.new(1, -4, 0, 32)}):Play();
		end);
		Button.MouseButton1Up:Connect(function()
			TweenService:Create(Button, Tween.spring, {BackgroundTransparency=0.05,Size=UDim2.new(1, 0, 0, 34)}):Play();
		end);
		Button.MouseButton1Click:Connect(function()
			if settings.callback then
				settings.callback();
			end
		end);
		local ButtonManager = {};
		ButtonManager.SetTitle = function(self, t)
			if TitleLabel then
				TitleLabel.Text = t;
			end
		end;
		ButtonManager.SetDescription = function(self, d)
			if DescLabel then
				DescLabel.Text = d;
			end
		end;
		ButtonManager.SetButtonText = function(self, t)
			Button.Text = t;
		end;
		ButtonManager.SetCallback = function(self, cb)
			settings.callback = cb;
		end;
		ButtonManager.Destroy = function(self)
			lib:remove_table_value(lib._themed_elements.Modules, ButtonFrame);
			lib:remove_table_value(lib._themed_elements.Strokes, BFStroke);
			ButtonFrame:Destroy();
		end;
		lib:register_element({tab_name=title,module_name="(tab-level)",element_type="button",element_title=(settings.title or settings.buttonText or "Button"),get_frame_fn=function()
			return ButtonFrame;
		end,jump_fn=nil,switch_tab_fn=switch_to_this_tab,open_module_fn=nil});
		return ButtonManager;
	end;
	TabManager.create_module = function(self, settings)
		local LayoutOrderModule = 0;
		local ModuleManager = {_state=false,_dropdownSize=0};
		if (settings.section == "right") then
			settings.section = RightSection;
		else
			settings.section = LeftSection;
		end
		local Module = Instance.new("Frame");
		Module.ClipsDescendants = false;
		Module.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Module.BackgroundTransparency = 0.45;
		Module.Position = UDim2.new(0.00411522621, 0, 0, 0);
		Module.Name = "Module";
		Module.Size = UDim2.new(0, 241, 0, 0);
		Module.AutomaticSize = Enum.AutomaticSize.Y;
		Module.BorderSizePixel = 0;
		Module.BackgroundColor3 = Themes[Library._current_theme].ModuleBackground;
		Module.Parent = settings.section;
		table.insert(lib._themed_elements.Modules, Module);
		local MListLayout = Instance.new("UIListLayout");
		MListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		MListLayout.Parent = Module;
		local MCorner = Instance.new("UICorner");
		MCorner.CornerRadius = UDim.new(0, 8);
		MCorner.Parent = Module;
		local MStroke = Instance.new("UIStroke");
		MStroke.Color = Themes[Library._current_theme].Stroke;
		MStroke.Transparency = 0.4;
		MStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		MStroke.Parent = Module;
		table.insert(lib._themed_elements.Strokes, MStroke);
		local Header = Instance.new("TextButton");
		Header.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		Header.TextColor3 = Color3.fromRGB(0, 0, 0);
		Header.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Header.Text = "";
		Header.AutoButtonColor = false;
		Header.BackgroundTransparency = 1;
		Header.Name = "Header";
		Header.Size = UDim2.new(0, 241, 0, 93);
		Header.BorderSizePixel = 0;
		Header.TextSize = 14;
		Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Header.Parent = Module;
		Header.MouseEnter:Connect(function()
			TweenService:Create(Module, Tween.fast, {BackgroundTransparency=0.35}):Play();
		end);
		Header.MouseLeave:Connect(function()
			TweenService:Create(Module, Tween.fast, {BackgroundTransparency=0.45}):Play();
		end);
		local ModIcon = Instance.new("ImageLabel");
		ModIcon.ImageColor3 = Color3.fromRGB(255, 255, 255);
		ModIcon.ScaleType = Enum.ScaleType.Fit;
		ModIcon.ImageTransparency = 0.65;
		ModIcon.BorderColor3 = Color3.fromRGB(0, 0, 0);
		ModIcon.AnchorPoint = Vector2.new(0, 0.5);
		ModIcon.Image = "rbxassetid://79095934438045";
		ModIcon.BackgroundTransparency = 1;
		ModIcon.Position = UDim2.new(0.071, 0, 0.82, 0);
		ModIcon.Name = "Icon";
		ModIcon.Size = UDim2.new(0, 15, 0, 15);
		ModIcon.BorderSizePixel = 0;
		ModIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		ModIcon.Parent = Header;
		local ModuleName = Instance.new("TextLabel");
		ModuleName.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		ModuleName.TextColor3 = Color3.fromRGB(255, 255, 255);
		ModuleName.TextTransparency = 0.1;
		if not settings.rich then
			ModuleName.Text = settings.title or "Module";
		else
			ModuleName.RichText = true;
			ModuleName.Text = settings.richtext or "<font color='rgb(255,0,0)'>Flow</font>";
		end
		ModuleName.Name = "ModuleName";
		ModuleName.Size = UDim2.new(0, 205, 0, 13);
		ModuleName.AnchorPoint = Vector2.new(0, 0.5);
		ModuleName.Position = UDim2.new(0.073, 0, 0.24, 0);
		ModuleName.BackgroundTransparency = 1;
		ModuleName.TextXAlignment = Enum.TextXAlignment.Left;
		ModuleName.BorderSizePixel = 0;
		ModuleName.TextSize = 13;
		ModuleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		ModuleName.Parent = Header;
		local Description = Instance.new("TextLabel");
		Description.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		Description.TextColor3 = Color3.fromRGB(255, 255, 255);
		Description.TextTransparency = 0.6;
		Description.Text = settings.description or "";
		Description.Name = "Description";
		Description.Size = UDim2.new(0, 205, 0, 13);
		Description.AnchorPoint = Vector2.new(0, 0.5);
		Description.Position = UDim2.new(0.073, 0, 0.42, 0);
		Description.BackgroundTransparency = 1;
		Description.TextXAlignment = Enum.TextXAlignment.Left;
		Description.BorderSizePixel = 0;
		Description.TextSize = 10;
		Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Description.Parent = Header;
		local Toggle = Instance.new("Frame");
		Toggle.Name = "Toggle";
		Toggle.BackgroundTransparency = 0.65;
		Toggle.Position = UDim2.new(0.82, 0, 0.757, 0);
		Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Toggle.Size = UDim2.new(0, 28, 0, 14);
		Toggle.BorderSizePixel = 0;
		Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		Toggle.Parent = Header;
		local TCorner = Instance.new("UICorner");
		TCorner.CornerRadius = UDim.new(1, 0);
		TCorner.Parent = Toggle;
		local Circle = Instance.new("Frame");
		Circle.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Circle.AnchorPoint = Vector2.new(0, 0.5);
		Circle.BackgroundTransparency = 0.1;
		Circle.Position = UDim2.new(0, 1, 0.5, 0);
		Circle.Name = "Circle";
		Circle.Size = UDim2.new(0, 12, 0, 12);
		Circle.BorderSizePixel = 0;
		Circle.BackgroundColor3 = Color3.fromRGB(66, 80, 115);
		Circle.Parent = Toggle;
		local CCorner = Instance.new("UICorner");
		CCorner.CornerRadius = UDim.new(1, 0);
		CCorner.Parent = Circle;
		local Keybind = Instance.new("Frame");
		Keybind.Name = "Keybind";
		Keybind.BackgroundTransparency = 0.65;
		Keybind.Position = UDim2.new(0.15, 0, 0.735, 0);
		Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Keybind.Size = UDim2.new(0, 33, 0, 15);
		Keybind.BorderSizePixel = 0;
		Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Keybind.Parent = Header;
		local KBCorner = Instance.new("UICorner");
		KBCorner.CornerRadius = UDim.new(0, 4);
		KBCorner.Parent = Keybind;
		local KeybindLabel = Instance.new("TextLabel");
		KeybindLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
		KeybindLabel.TextColor3 = Color3.fromRGB(209, 222, 255);
		KeybindLabel.Text = "None";
		KeybindLabel.AnchorPoint = Vector2.new(0.5, 0.5);
		KeybindLabel.Size = UDim2.new(0, 25, 0, 13);
		KeybindLabel.BackgroundTransparency = 1;
		KeybindLabel.TextXAlignment = Enum.TextXAlignment.Left;
		KeybindLabel.Position = UDim2.new(0.5, 0, 0.5, 0);
		KeybindLabel.TextSize = 10;
		KeybindLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		KeybindLabel.Parent = Keybind;
		local Divider = Instance.new("Frame");
		Divider.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Divider.AnchorPoint = Vector2.new(0.5, 0);
		Divider.BackgroundTransparency = 0.65;
		Divider.Position = UDim2.new(0.5, 0, 0.62, 0);
		Divider.Name = "Divider";
		Divider.Size = UDim2.new(0, 241, 0, 1);
		Divider.BorderSizePixel = 0;
		Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Divider.Parent = Header;
		local Divider2 = Instance.new("Frame");
		Divider2.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Divider2.AnchorPoint = Vector2.new(0.5, 0);
		Divider2.BackgroundTransparency = 0.65;
		Divider2.Position = UDim2.new(0.5, 0, 1, 0);
		Divider2.Name = "Divider";
		Divider2.Size = UDim2.new(0, 241, 0, 1);
		Divider2.BorderSizePixel = 0;
		Divider2.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Divider2.Parent = Header;
		local Options = Instance.new("Frame");
		Options.Name = "Options";
		Options.BackgroundTransparency = 1;
		Options.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Options.Size = UDim2.new(0, 241, 0, 0);
		Options.AutomaticSize = Enum.AutomaticSize.Y;
		Options.BorderSizePixel = 0;
		Options.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Options.Visible = false;
		Options.Parent = Module;
		local OptPad = Instance.new("UIPadding");
		OptPad.PaddingTop = UDim.new(0, 8);
		OptPad.PaddingBottom = UDim.new(0, 12);
		OptPad.Parent = Options;
		local OptLayout = Instance.new("UIListLayout");
		OptLayout.Padding = UDim.new(0, 6);
		OptLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
		OptLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		OptLayout.Parent = Options;
		ModuleManager.change_state = function(self, state)
			self._state = state;
			local toggle_data = {Toggle=Toggle,Circle=Circle};
			if self._state then
				Options.Visible = true;
				TweenService:Create(Toggle, Tween.smooth, {BackgroundColor3=Themes[Library._current_theme].Accent,BackgroundTransparency=0}):Play();
				TweenService:Create(Circle, Tween.spring, {BackgroundColor3=Themes[Library._current_theme].SecondaryAccent,Position=UDim2.fromScale(0.52, 0.5),Size=UDim2.fromOffset(13, 13)}):Play();
				table.insert(lib._themed_elements.ActiveToggles, toggle_data);
			else
				Options.Visible = false;
				TweenService:Create(Toggle, Tween.smooth, {BackgroundColor3=Color3.fromRGB(0, 0, 0),BackgroundTransparency=0.65}):Play();
				TweenService:Create(Circle, Tween.spring, {BackgroundColor3=Color3.fromRGB(66, 80, 115),Position=UDim2.fromScale(0.04, 0.5),Size=UDim2.fromOffset(12, 12)}):Play();
				for i, v in ipairs(lib._themed_elements.ActiveToggles) do
					if (v.Toggle == Toggle) then
						table.remove(lib._themed_elements.ActiveToggles, i);
						break;
					end
				end
			end
			Library._config._flags[settings.flag] = self._state;
			Config:save(game.GameId, Library._config);
			settings.callback(self._state);
		end;
		ModuleManager.connect_keybind = function(self)
			if not Library._config._keybinds[settings.flag] then
				return;
			end
			Connections[settings.flag .. "_keybind"] = UserInputService.InputBegan:Connect(function(input, process)
				if process then
					return;
				end
				if (tostring(input.KeyCode) ~= Library._config._keybinds[settings.flag]) then
					return;
				end
				self:change_state(not self._state);
			end);
		end;
		ModuleManager.scale_keybind = function(self, empty)
			if (Library._config._keybinds[settings.flag] and not empty) then
				local kb_str = string.gsub(tostring(Library._config._keybinds[settings.flag]), "Enum.KeyCode.", "");
				local fp = Instance.new("GetTextBoundsParams");
				fp.Text = kb_str;
				fp.Font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold);
				fp.Size = 10;
				fp.Width = 10000;
				local fs = TextService:GetTextBoundsAsync(fp);
				Keybind.Size = UDim2.fromOffset(fs.X + 8, 15);
				KeybindLabel.Size = UDim2.fromOffset(fs.X, 13);
			else
				Keybind.Size = UDim2.fromOffset(31, 15);
				KeybindLabel.Size = UDim2.fromOffset(25, 13);
			end
		end;
		if Library:flag_type(settings.flag, "boolean") then
			ModuleManager._state = true;
			settings.callback(ModuleManager._state);
			Toggle.BackgroundColor3 = Themes[Library._current_theme].Accent;
			Toggle.BackgroundTransparency = 0;
			Circle.BackgroundColor3 = Themes[Library._current_theme].SecondaryAccent;
			Circle.Position = UDim2.fromScale(0.52, 0.5);
			Circle.Size = UDim2.fromOffset(13, 13);
			Options.Visible = true;
			table.insert(lib._themed_elements.ActiveToggles, {Toggle=Toggle,Circle=Circle});
		end
		if Library._config._keybinds[settings.flag] then
			local kb_str = string.gsub(tostring(Library._config._keybinds[settings.flag]), "Enum.KeyCode.", "");
			KeybindLabel.Text = kb_str;
			ModuleManager:connect_keybind();
			ModuleManager:scale_keybind();
		end
		Connections[settings.flag .. "_input_began"] = Header.InputBegan:Connect(function(input)
			if Library._choosing_keybind then
				return;
			end
			if (input.UserInputType ~= Enum.UserInputType.MouseButton3) then
				return;
			end
			Library._choosing_keybind = true;
			Connections['keybind_choose_start'] = UserInputService.InputBegan:Connect(function(input, process)
				if process then
					return;
				end
				if ((input == Enum.UserInputState) or (input == Enum.UserInputType)) then
					return;
				end
				if (input.KeyCode == Enum.KeyCode.Unknown) then
					return;
				end
				if (input.KeyCode == Enum.KeyCode.Backspace) then
					ModuleManager:scale_keybind(true);
					Library._config._keybinds[settings.flag] = nil;
					Config:save(game.GameId, Library._config);
					KeybindLabel.Text = "None";
					if Connections[settings.flag .. "_keybind"] then
						Connections[settings.flag .. "_keybind"]:Disconnect();
						Connections[settings.flag .. "_keybind"] = nil;
					end
					Connections['keybind_choose_start']:Disconnect();
					Connections['keybind_choose_start'] = nil;
					Library._choosing_keybind = false;
					return;
				end
				Connections['keybind_choose_start']:Disconnect();
				Connections['keybind_choose_start'] = nil;
				Library._config._keybinds[settings.flag] = tostring(input.KeyCode);
				Config:save(game.GameId, Library._config);
				if Connections[settings.flag .. "_keybind"] then
					Connections[settings.flag .. "_keybind"]:Disconnect();
					Connections[settings.flag .. "_keybind"] = nil;
				end
				ModuleManager:connect_keybind();
				ModuleManager:scale_keybind();
				Library._choosing_keybind = false;
				local kb_str = string.gsub(tostring(Library._config._keybinds[settings.flag]), "Enum.KeyCode.", "");
				KeybindLabel.Text = kb_str;
			end);
		end);
		Header.MouseButton1Click:Connect(function()
			ModuleManager:change_state(not ModuleManager._state);
		end);
		local function open_this_module()
			if not ModuleManager._state then
				ModuleManager:change_state(true);
			end
		end
		ModuleManager.create_label = function(self, settings)
			LayoutOrderModule = LayoutOrderModule + 1;
			local LabelFrame = Instance.new("Frame");
			LabelFrame.Name = "ModuleLabel";
			LabelFrame.BackgroundColor3 = Color3.fromRGB(28, 35, 48);
			LabelFrame.BackgroundTransparency = 0.05;
			LabelFrame.Size = UDim2.new(0, 207, 0, 0);
			LabelFrame.AutomaticSize = Enum.AutomaticSize.Y;
			LabelFrame.BorderSizePixel = 0;
			LabelFrame.Parent = Options;
			LabelFrame.LayoutOrder = LayoutOrderModule;
			local LCorner = Instance.new("UICorner");
			LCorner.CornerRadius = UDim.new(0, 5);
			LCorner.Parent = LabelFrame;
			local LPad = Instance.new("UIPadding");
			LPad.PaddingTop = UDim.new(0, 8);
			LPad.PaddingBottom = UDim.new(0, 8);
			LPad.PaddingLeft = UDim.new(0, 10);
			LPad.PaddingRight = UDim.new(0, 10);
			LPad.Parent = LabelFrame;
			local LLayout = Instance.new("UIListLayout");
			LLayout.Padding = UDim.new(0, 4);
			LLayout.SortOrder = Enum.SortOrder.LayoutOrder;
			LLayout.Parent = LabelFrame;
			local TitleLabel = nil;
			if settings.title then
				TitleLabel = Instance.new("TextLabel");
				TitleLabel.Name = "Title";
				TitleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				TitleLabel.TextColor3 = Color3.fromRGB(215, 215, 215);
				TitleLabel.TextSize = 12;
				TitleLabel.Text = settings.title;
				TitleLabel.Size = UDim2.new(1, 0, 0, 0);
				TitleLabel.AutomaticSize = Enum.AutomaticSize.Y;
				TitleLabel.BackgroundTransparency = 1;
				TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
				TitleLabel.TextWrapped = true;
				TitleLabel.LayoutOrder = 1;
				TitleLabel.Parent = LabelFrame;
				if settings.rich then
					TitleLabel.RichText = true;
				end
			end
			local BodyLabel = nil;
			if settings.text then
				BodyLabel = Instance.new("TextLabel");
				BodyLabel.Name = "Body";
				BodyLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				BodyLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
				BodyLabel.TextSize = 11;
				BodyLabel.Text = settings.text;
				BodyLabel.Size = UDim2.new(1, 0, 0, 0);
				BodyLabel.AutomaticSize = Enum.AutomaticSize.Y;
				BodyLabel.BackgroundTransparency = 1;
				BodyLabel.TextXAlignment = Enum.TextXAlignment.Left;
				BodyLabel.TextWrapped = true;
				BodyLabel.LayoutOrder = 2;
				BodyLabel.Parent = LabelFrame;
				if settings.rich then
					BodyLabel.RichText = true;
				end
			end
			LabelFrame.MouseEnter:Connect(function()
				TweenService:Create(LabelFrame, Tween.fast, {BackgroundColor3=Color3.fromRGB(38, 46, 62)}):Play();
			end);
			LabelFrame.MouseLeave:Connect(function()
				TweenService:Create(LabelFrame, Tween.fast, {BackgroundColor3=Color3.fromRGB(28, 35, 48)}):Play();
			end);
			local LabelManager = {};
			LabelManager.SetText = function(self, t)
				if BodyLabel then
					BodyLabel.Text = t;
				end
			end;
			LabelManager.SetTitle = function(self, t)
				if TitleLabel then
					TitleLabel.Text = t;
				end
			end;
			LabelManager.Set = function(self, ns)
				if (ns.title and TitleLabel) then
					TitleLabel.Text = ns.title;
					if ns.rich then
						TitleLabel.RichText = true;
					end
				end
				if (ns.text and BodyLabel) then
					BodyLabel.Text = ns.text;
					if ns.rich then
						BodyLabel.RichText = true;
					end
				end
			end;
			lib:register_element({tab_name=title,module_name=(settings_module_title or "Module"),element_type="label",element_title=(settings.title or settings.text or "Label"),get_frame_fn=function()
				return LabelFrame;
			end,jump_fn=nil,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
			return LabelManager;
		end;
		ModuleManager.create_button = function(self, settings)
			LayoutOrderModule = LayoutOrderModule + 1;
			local ButtonFrame = Instance.new("Frame");
			ButtonFrame.Name = "ModuleButton";
			ButtonFrame.BackgroundColor3 = Color3.fromRGB(28, 35, 48);
			ButtonFrame.BackgroundTransparency = 0.05;
			ButtonFrame.Size = UDim2.new(0, 207, 0, 0);
			ButtonFrame.AutomaticSize = Enum.AutomaticSize.Y;
			ButtonFrame.BorderSizePixel = 0;
			ButtonFrame.Parent = Options;
			ButtonFrame.LayoutOrder = LayoutOrderModule;
			local BCorner = Instance.new("UICorner");
			BCorner.CornerRadius = UDim.new(0, 5);
			BCorner.Parent = ButtonFrame;
			local BPad = Instance.new("UIPadding");
			BPad.PaddingTop = UDim.new(0, 8);
			BPad.PaddingBottom = UDim.new(0, 8);
			BPad.PaddingLeft = UDim.new(0, 10);
			BPad.PaddingRight = UDim.new(0, 10);
			BPad.Parent = ButtonFrame;
			local BLayout = Instance.new("UIListLayout");
			BLayout.Padding = UDim.new(0, 6);
			BLayout.SortOrder = Enum.SortOrder.LayoutOrder;
			BLayout.Parent = ButtonFrame;
			local TitleLabel = nil;
			if settings.title then
				TitleLabel = Instance.new("TextLabel");
				TitleLabel.Name = "Title";
				TitleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				TitleLabel.TextColor3 = Color3.fromRGB(215, 215, 215);
				TitleLabel.TextSize = 12;
				TitleLabel.Text = settings.title;
				TitleLabel.Size = UDim2.new(1, 0, 0, 0);
				TitleLabel.AutomaticSize = Enum.AutomaticSize.Y;
				TitleLabel.BackgroundTransparency = 1;
				TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
				TitleLabel.TextWrapped = true;
				TitleLabel.LayoutOrder = 1;
				TitleLabel.Parent = ButtonFrame;
				if settings.rich then
					TitleLabel.RichText = true;
				end
			end
			local DescLabel = nil;
			if settings.description then
				DescLabel = Instance.new("TextLabel");
				DescLabel.Name = "Description";
				DescLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				DescLabel.TextColor3 = Color3.fromRGB(175, 175, 175);
				DescLabel.TextSize = 10;
				DescLabel.Text = settings.description;
				DescLabel.Size = UDim2.new(1, 0, 0, 0);
				DescLabel.AutomaticSize = Enum.AutomaticSize.Y;
				DescLabel.BackgroundTransparency = 1;
				DescLabel.TextXAlignment = Enum.TextXAlignment.Left;
				DescLabel.TextWrapped = true;
				DescLabel.LayoutOrder = 2;
				DescLabel.Parent = ButtonFrame;
			end
			local Button = Instance.new("TextButton");
			Button.Name = "Button";
			Button.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Button.TextColor3 = Color3.fromRGB(255, 255, 255);
			Button.Text = settings.buttonText or SelectedLanguage.ButtonClick or "Click";
			Button.TextSize = 11;
			Button.Size = UDim2.new(1, 0, 0, 30);
			Button.BackgroundColor3 = Themes[Library._current_theme].Accent;
			Button.BackgroundTransparency = 0.25;
			Button.BorderSizePixel = 0;
			Button.AutoButtonColor = false;
			Button.LayoutOrder = 3;
			Button.Parent = ButtonFrame;
			table.insert(lib._themed_elements.AccentButtons, Button);
			local BtnCorner = Instance.new("UICorner");
			BtnCorner.CornerRadius = UDim.new(0, 5);
			BtnCorner.Parent = Button;
			Button.MouseEnter:Connect(function()
				TweenService:Create(ButtonFrame, Tween.fast, {BackgroundColor3=Color3.fromRGB(38, 46, 62)}):Play();
				TweenService:Create(Button, Tween.fast, {BackgroundTransparency=0.05}):Play();
			end);
			Button.MouseLeave:Connect(function()
				TweenService:Create(ButtonFrame, Tween.fast, {BackgroundColor3=Color3.fromRGB(28, 35, 48)}):Play();
				TweenService:Create(Button, Tween.fast, {BackgroundTransparency=0.25}):Play();
			end);
			Button.MouseButton1Down:Connect(function()
				TweenService:Create(Button, Tween.snap_in, {BackgroundTransparency=0.5,Size=UDim2.new(1, -2, 0, 28)}):Play();
			end);
			Button.MouseButton1Up:Connect(function()
				TweenService:Create(Button, Tween.spring, {BackgroundTransparency=0.05,Size=UDim2.new(1, 0, 0, 30)}):Play();
			end);
			Button.MouseButton1Click:Connect(function()
				if settings.callback then
					settings.callback();
				end
			end);
			local BM = {};
			BM.SetTitle = function(self, t)
				if TitleLabel then
					TitleLabel.Text = t;
				end
			end;
			BM.SetDescription = function(self, d)
				if DescLabel then
					DescLabel.Text = d;
				end
			end;
			BM.SetButtonText = function(self, t)
				Button.Text = t;
			end;
			BM.SetCallback = function(self, cb)
				settings.callback = cb;
			end;
			lib:register_element({tab_name=title,module_name=(settings.flag or "Module"),element_type="button",element_title=(settings.title or settings.buttonText or "Button"),get_frame_fn=function()
				return ButtonFrame;
			end,jump_fn=nil,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
			return BM;
		end;
		ModuleManager.create_paragraph = function(self, settings)
			LayoutOrderModule = LayoutOrderModule + 1;
			local ParagraphManager = {};
			local Paragraph = Instance.new("Frame");
			Paragraph.BackgroundColor3 = Color3.fromRGB(28, 35, 48);
			Paragraph.BackgroundTransparency = 0.05;
			Paragraph.Size = UDim2.new(0, 207, 0, 0);
			Paragraph.AutomaticSize = Enum.AutomaticSize.Y;
			Paragraph.BorderSizePixel = 0;
			Paragraph.Name = "Paragraph";
			Paragraph.Parent = Options;
			Paragraph.LayoutOrder = LayoutOrderModule;
			local PCorner = Instance.new("UICorner");
			PCorner.CornerRadius = UDim.new(0, 5);
			PCorner.Parent = Paragraph;
			local PPad = Instance.new("UIPadding");
			PPad.PaddingTop = UDim.new(0, 7);
			PPad.PaddingBottom = UDim.new(0, 9);
			PPad.PaddingLeft = UDim.new(0, 8);
			PPad.PaddingRight = UDim.new(0, 8);
			PPad.Parent = Paragraph;
			local PLayout = Instance.new("UIListLayout");
			PLayout.Padding = UDim.new(0, 4);
			PLayout.SortOrder = Enum.SortOrder.LayoutOrder;
			PLayout.Parent = Paragraph;
			local PTitle = Instance.new("TextLabel");
			PTitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			PTitle.TextColor3 = Color3.fromRGB(215, 215, 215);
			PTitle.Text = settings.title or "Title";
			PTitle.Size = UDim2.new(1, 0, 0, 0);
			PTitle.AutomaticSize = Enum.AutomaticSize.Y;
			PTitle.BackgroundTransparency = 1;
			PTitle.TextXAlignment = Enum.TextXAlignment.Left;
			PTitle.TextSize = 12;
			PTitle.LayoutOrder = 1;
			PTitle.TextWrapped = true;
			PTitle.Parent = Paragraph;
			local PBody = Instance.new("TextLabel");
			PBody.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			PBody.TextColor3 = Color3.fromRGB(255, 255, 255);
			if not settings.rich then
				PBody.Text = settings.text or "Text";
			else
				PBody.RichText = true;
				PBody.Text = settings.richtext or "<font color='rgb(255,0,0)'>Flow</font>";
			end
			PBody.Size = UDim2.new(1, 0, 0, 0);
			PBody.AutomaticSize = Enum.AutomaticSize.Y;
			PBody.BackgroundTransparency = 1;
			PBody.TextXAlignment = Enum.TextXAlignment.Left;
			PBody.TextSize = 11;
			PBody.TextWrapped = true;
			PBody.LayoutOrder = 2;
			PBody.Parent = Paragraph;
			Paragraph.MouseEnter:Connect(function()
				TweenService:Create(Paragraph, Tween.fast, {BackgroundColor3=Color3.fromRGB(38, 46, 62)}):Play();
			end);
			Paragraph.MouseLeave:Connect(function()
				TweenService:Create(Paragraph, Tween.fast, {BackgroundColor3=Color3.fromRGB(28, 35, 48)}):Play();
			end);
			ParagraphManager.SetTitle = function(self, t)
				PTitle.Text = t;
			end;
			ParagraphManager.SetText = function(self, t)
				PBody.Text = t;
			end;
			ParagraphManager.Set = function(self, ns)
				if ns.title then
					PTitle.Text = ns.title;
				end
				if ns.text then
					PBody.Text = ns.text;
				end
				if ns.rich then
					PBody.RichText = true;
				end
			end;
			return ParagraphManager;
		end;
		ModuleManager.create_text = function(self, settings)
			LayoutOrderModule = LayoutOrderModule + 1;
			local TextManager = {};
			local TextFrame = Instance.new("Frame");
			TextFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			TextFrame.BackgroundTransparency = 0.1;
			TextFrame.Size = UDim2.new(0, 207, 0, 0);
			TextFrame.AutomaticSize = Enum.AutomaticSize.Y;
			TextFrame.BorderSizePixel = 0;
			TextFrame.Name = "Text";
			TextFrame.Parent = Options;
			TextFrame.LayoutOrder = LayoutOrderModule;
			local TFCorner = Instance.new("UICorner");
			TFCorner.CornerRadius = UDim.new(0, 5);
			TFCorner.Parent = TextFrame;
			local TFPad = Instance.new("UIPadding");
			TFPad.PaddingTop = UDim.new(0, 5);
			TFPad.PaddingBottom = UDim.new(0, 5);
			TFPad.PaddingLeft = UDim.new(0, 6);
			TFPad.PaddingRight = UDim.new(0, 6);
			TFPad.Parent = TextFrame;
			local Body = Instance.new("TextLabel");
			Body.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Body.TextColor3 = Color3.fromRGB(255, 255, 255);
			if not settings.rich then
				Body.Text = settings.text or "";
			else
				Body.RichText = true;
				Body.Text = settings.richtext or "";
			end
			Body.Size = UDim2.new(1, 0, 0, 0);
			Body.AutomaticSize = Enum.AutomaticSize.Y;
			Body.BackgroundTransparency = 1;
			Body.TextXAlignment = Enum.TextXAlignment.Left;
			Body.TextSize = 10;
			Body.TextWrapped = true;
			Body.Parent = TextFrame;
			TextManager.Set = function(self, ns)
				if not ns.rich then
					Body.Text = ns.text or "";
				else
					Body.RichText = true;
					Body.Text = ns.richtext or "";
				end
			end;
			return TextManager;
		end;
		ModuleManager.create_textbox = function(self, settings)
			LayoutOrderModule = LayoutOrderModule + 1;
			local TextboxManager = {_text=""};
			local Label = Instance.new("TextLabel");
			Label.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			Label.TextColor3 = Color3.fromRGB(255, 255, 255);
			Label.TextTransparency = 0.2;
			Label.Text = settings.title or "Enter text";
			Label.Size = UDim2.new(0, 207, 0, 13);
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BorderSizePixel = 0;
			Label.TextSize = 10;
			Label.LayoutOrder = LayoutOrderModule;
			Label.Parent = Options;
			LayoutOrderModule = LayoutOrderModule + 1;
			local Textbox = Instance.new("TextBox");
			Textbox.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Textbox.TextColor3 = Color3.fromRGB(255, 255, 255);
			Textbox.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Textbox.PlaceholderText = settings.placeholder or "Enter text...";
			Textbox.Text = Library._config._flags[settings.flag] or "";
			Textbox.Name = "Textbox";
			Textbox.Size = UDim2.new(0, 207, 0, 17);
			Textbox.BorderSizePixel = 0;
			Textbox.TextSize = 10;
			Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Textbox.BackgroundTransparency = 0.88;
			Textbox.ClearTextOnFocus = false;
			Textbox.LayoutOrder = LayoutOrderModule;
			Textbox.Parent = Options;
			local TBCorner = Instance.new("UICorner");
			TBCorner.CornerRadius = UDim.new(0, 5);
			TBCorner.Parent = Textbox;
			Textbox.Focused:Connect(function()
				TweenService:Create(Textbox, Tween.fast, {BackgroundTransparency=0.75}):Play();
			end);
			Textbox.FocusLost:Connect(function()
				TweenService:Create(Textbox, Tween.fast, {BackgroundTransparency=0.88}):Play();
				TextboxManager._text = Textbox.Text;
				Library._config._flags[settings.flag] = TextboxManager._text;
				Config:save(game.GameId, Library._config);
				settings.callback(TextboxManager._text);
			end);
			if Library:flag_type(settings.flag, "string") then
				TextboxManager._text = Library._config._flags[settings.flag];
				settings.callback(TextboxManager._text);
			end
			TextboxManager.SetText = function(self, t)
				Textbox.Text = t;
				self._text = t;
			end;
			lib:register_element({tab_name=title,module_name=(settings.flag or "Module"),element_type="textbox",element_title=(settings.title or "Textbox"),get_frame_fn=function()
				return Textbox;
			end,jump_fn=nil,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
			return TextboxManager;
		end;
		ModuleManager.create_divider = function(self, settings)
			LayoutOrderModule = LayoutOrderModule + 1;
			local OuterFrame = Instance.new("Frame");
			OuterFrame.Size = UDim2.new(0, 207, 0, 18);
			OuterFrame.BackgroundTransparency = 1;
			OuterFrame.Name = "OuterFrame";
			OuterFrame.LayoutOrder = LayoutOrderModule;
			OuterFrame.Parent = Options;
			if (settings and settings.showtopic) then
				local TLabel = Instance.new("TextLabel");
				TLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				TLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
				TLabel.TextTransparency = 0;
				TLabel.Text = settings.title;
				TLabel.Size = UDim2.new(0, 153, 0, 13);
				TLabel.Position = UDim2.new(0.5, 0, 0.5, 0);
				TLabel.BackgroundTransparency = 1;
				TLabel.TextXAlignment = Enum.TextXAlignment.Center;
				TLabel.AnchorPoint = Vector2.new(0.5, 0.5);
				TLabel.TextSize = 11;
				TLabel.ZIndex = 3;
				TLabel.TextStrokeTransparency = 0;
				TLabel.Parent = OuterFrame;
			end
			if (not settings or (settings and not settings.disableline)) then
				local DivLine = Instance.new("Frame");
				DivLine.Size = UDim2.new(1, 0, 0, 1);
				DivLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				DivLine.BorderSizePixel = 0;
				DivLine.Name = "Divider";
				DivLine.ZIndex = 2;
				DivLine.Position = UDim2.new(0, 0, 0.5, 0);
				DivLine.Parent = OuterFrame;
				local DGrad = Instance.new("UIGradient");
				DGrad.Parent = DivLine;
				DGrad.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.5, 0.3),NumberSequenceKeypoint.new(1, 1)});
				local DCorner = Instance.new("UICorner");
				DCorner.CornerRadius = UDim.new(0, 2);
				DCorner.Parent = DivLine;
			end
			return true;
		end;
		ModuleManager.create_checkbox = function(self, settings)
			LayoutOrderModule = LayoutOrderModule + 1;
			local CheckboxManager = {_state=false};
			local Checkbox = Instance.new("TextButton");
			Checkbox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Checkbox.TextColor3 = Color3.fromRGB(0, 0, 0);
			Checkbox.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Checkbox.Text = "";
			Checkbox.AutoButtonColor = false;
			Checkbox.BackgroundTransparency = 1;
			Checkbox.Name = "Checkbox";
			Checkbox.Size = UDim2.new(0, 207, 0, 16);
			Checkbox.BorderSizePixel = 0;
			Checkbox.TextSize = 14;
			Checkbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			Checkbox.LayoutOrder = LayoutOrderModule;
			Checkbox.Parent = Options;
			local CBTitle = Instance.new("TextLabel");
			CBTitle.Name = "TitleLabel";
			CBTitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			CBTitle.TextSize = 11;
			CBTitle.TextColor3 = Color3.fromRGB(255, 255, 255);
			CBTitle.TextTransparency = 0.15;
			CBTitle.Text = settings.title or "Option";
			CBTitle.Size = UDim2.new(0, 142, 0, 13);
			CBTitle.AnchorPoint = Vector2.new(0, 0.5);
			CBTitle.Position = UDim2.new(0, 0, 0.5, 0);
			CBTitle.BackgroundTransparency = 1;
			CBTitle.TextXAlignment = Enum.TextXAlignment.Left;
			CBTitle.Parent = Checkbox;
			local Box = Instance.new("Frame");
			Box.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Box.AnchorPoint = Vector2.new(1, 0.5);
			Box.BackgroundTransparency = 0.88;
			Box.Position = UDim2.new(1, 0, 0.5, 0);
			Box.Name = "Box";
			Box.Size = UDim2.new(0, 15, 0, 15);
			Box.BorderSizePixel = 0;
			Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Box.Parent = Checkbox;
			local BoxCorner = Instance.new("UICorner");
			BoxCorner.CornerRadius = UDim.new(0, 4);
			BoxCorner.Parent = Box;
			local Fill = Instance.new("Frame");
			Fill.AnchorPoint = Vector2.new(0.5, 0.5);
			Fill.BackgroundTransparency = 0.1;
			Fill.Position = UDim2.new(0.5, 0, 0.5, 0);
			Fill.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Fill.Name = "Fill";
			Fill.Size = UDim2.fromOffset(0, 0);
			Fill.BorderSizePixel = 0;
			Fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Fill.Parent = Box;
			local FillCorner = Instance.new("UICorner");
			FillCorner.CornerRadius = UDim.new(0, 3);
			FillCorner.Parent = Fill;
			CheckboxManager.change_state = function(self, state)
				self._state = state;
				if self._state then
					TweenService:Create(Box, Tween.smooth, {BackgroundTransparency=0.65}):Play();
					TweenService:Create(Fill, Tween.spring, {Size=UDim2.fromOffset(10, 10)}):Play();
				else
					TweenService:Create(Box, Tween.smooth, {BackgroundTransparency=0.88}):Play();
					TweenService:Create(Fill, Tween.spring, {Size=UDim2.fromOffset(0, 0)}):Play();
				end
				Library._config._flags[settings.flag] = self._state;
				Config:save(game.GameId, Library._config);
				settings.callback(self._state);
			end;
			if Library:flag_type(settings.flag, "boolean") then
				CheckboxManager:change_state(Library._config._flags[settings.flag]);
			end
			Checkbox.MouseButton1Click:Connect(function()
				CheckboxManager:change_state(not CheckboxManager._state);
			end);
			CheckboxManager.SetTitle = function(self, t)
				CBTitle.Text = t;
			end;
			lib:register_element({tab_name=title,module_name=(settings.flag or "Module"),element_type="checkbox",element_title=(settings.title or "Checkbox"),get_frame_fn=function()
				return Checkbox;
			end,jump_fn=nil,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
			return CheckboxManager;
		end;
		ModuleManager.create_slider = function(self, settings)
			LayoutOrderModule = LayoutOrderModule + 1;
			local SliderManager = {};
			local Slider = Instance.new("TextButton");
			Slider.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Slider.TextSize = 14;
			Slider.TextColor3 = Color3.fromRGB(0, 0, 0);
			Slider.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Slider.Text = "";
			Slider.AutoButtonColor = false;
			Slider.BackgroundTransparency = 1;
			Slider.Name = "Slider";
			Slider.Size = UDim2.new(0, 207, 0, 24);
			Slider.BorderSizePixel = 0;
			Slider.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			Slider.LayoutOrder = LayoutOrderModule;
			Slider.Parent = Options;
			local STitle = Instance.new("TextLabel");
			STitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			STitle.TextSize = 11;
			STitle.TextColor3 = Color3.fromRGB(255, 255, 255);
			STitle.TextTransparency = 0.15;
			STitle.Text = settings.title;
			STitle.Size = UDim2.new(0, 153, 0, 13);
			STitle.Position = UDim2.new(0, 0, 0, 0);
			STitle.BackgroundTransparency = 1;
			STitle.TextXAlignment = Enum.TextXAlignment.Left;
			STitle.Parent = Slider;
			local Value = Instance.new("TextLabel");
			Value.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Value.TextColor3 = Color3.fromRGB(255, 255, 255);
			Value.TextTransparency = 0.15;
			Value.Text = "0";
			Value.Name = "Value";
			Value.Size = UDim2.new(0, 42, 0, 13);
			Value.AnchorPoint = Vector2.new(1, 0);
			Value.Position = UDim2.new(1, 0, 0, 0);
			Value.BackgroundTransparency = 1;
			Value.TextXAlignment = Enum.TextXAlignment.Right;
			Value.TextSize = 10;
			Value.Parent = Slider;
			local Track = Instance.new("Frame");
			Track.Name = "Track";
			Track.AnchorPoint = Vector2.new(0, 1);
			Track.BackgroundTransparency = 0.85;
			Track.Position = UDim2.new(0, 0, 1, 0);
			Track.Size = UDim2.new(0, 207, 0, 4);
			Track.BorderSizePixel = 0;
			Track.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Track.Parent = Slider;
			local TrCorner = Instance.new("UICorner");
			TrCorner.CornerRadius = UDim.new(1, 0);
			TrCorner.Parent = Track;
			local Drag = Instance.new("Frame");
			Drag.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Drag.AnchorPoint = Vector2.new(0, 0.5);
			Drag.BackgroundTransparency = 0;
			Drag.Position = UDim2.new(0, 0, 0.5, 0);
			Drag.Name = "Drag";
			Drag.Size = UDim2.new(0.5, 0, 1, 0);
			Drag.BorderSizePixel = 0;
			Drag.BackgroundColor3 = Themes[Library._current_theme].Accent;
			Drag.Parent = Track;
			table.insert(lib._themed_elements.SliderDrags, Drag);
			local DCorner = Instance.new("UICorner");
			DCorner.CornerRadius = UDim.new(1, 0);
			DCorner.Parent = Drag;
			local Knob = Instance.new("Frame");
			Knob.Name = "Knob";
			Knob.AnchorPoint = Vector2.new(1, 0.5);
			Knob.Position = UDim2.new(1, 0, 0.5, 0);
			Knob.Size = UDim2.fromOffset(10, 10);
			Knob.BorderSizePixel = 0;
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Knob.Parent = Drag;
			local KCorner = Instance.new("UICorner");
			KCorner.CornerRadius = UDim.new(1, 0);
			KCorner.Parent = Knob;
			SliderManager.set_percentage = function(self, percentage)
				local rounded_number;
				if settings.round_number then
					rounded_number = math.floor(percentage + 0.5);
				else
					rounded_number = math.floor(percentage * 10) / 10;
				end
				local pct = (percentage - settings.minimum_value) / (settings.maximum_value - settings.minimum_value);
				local slider_w = math.clamp(pct, 0.02, 1);
				local clamped = math.clamp(rounded_number, settings.minimum_value, settings.maximum_value);
				Library._config._flags[settings.flag] = clamped;
				Value.Text = clamped;
				TweenService:Create(Drag, Tween.fast, {Size=UDim2.new(slider_w, 0, 1, 0)}):Play();
				settings.callback(clamped);
			end;
			SliderManager.update = function(self)
				local mouse_position = (mouse.X - Track.AbsolutePosition.X) / Track.Size.X.Offset;
				local percentage = settings.minimum_value + ((settings.maximum_value - settings.minimum_value) * mouse_position);
				self:set_percentage(percentage);
			end;
			SliderManager.input = function(self)
				TweenService:Create(Knob, Tween.fast, {Size=UDim2.fromOffset(13, 13)}):Play();
				SliderManager:update();
				Connections["slider_drag_" .. settings.flag] = mouse.Move:Connect(function()
					SliderManager:update();
				end);
				Connections["slider_input_" .. settings.flag] = UserInputService.InputEnded:Connect(function(input, process)
					if ((input.UserInputType ~= Enum.UserInputType.MouseButton1) and (input.UserInputType ~= Enum.UserInputType.Touch)) then
						return;
					end
					TweenService:Create(Knob, Tween.spring, {Size=UDim2.fromOffset(10, 10)}):Play();
					Connections:disconnect("slider_drag_" .. settings.flag);
					Connections:disconnect("slider_input_" .. settings.flag);
					if not settings.ignoresaved then
						Config:save(game.GameId, Library._config);
					end
				end);
			end;
			if Library:flag_type(settings.flag, "number") then
				if not settings.ignoresaved then
					SliderManager:set_percentage(Library._config._flags[settings.flag]);
				else
					SliderManager:set_percentage(settings.value);
				end
			else
				SliderManager:set_percentage(settings.value);
			end
			Slider.MouseButton1Down:Connect(function()
				SliderManager:input();
			end);
			SliderManager.SetTitle = function(self, t)
				STitle.Text = t;
			end;
			lib:register_element({tab_name=title,module_name=(settings.flag or "Module"),element_type="slider",element_title=(settings.title or "Slider"),get_frame_fn=function()
				return Slider;
			end,jump_fn=nil,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
			return SliderManager;
		end;
		ModuleManager.create_dropdown = function(self, settings)
			if not settings.Order then
				LayoutOrderModule = LayoutOrderModule + 1;
			end
			local DropdownManager = {_state=false,_size=0};
			local Dropdown = Instance.new("TextButton");
			Dropdown.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0);
			Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Dropdown.Text = "";
			Dropdown.AutoButtonColor = false;
			Dropdown.BackgroundTransparency = 1;
			Dropdown.Name = "Dropdown";
			Dropdown.Size = UDim2.new(0, 207, 0, 39);
			Dropdown.BorderSizePixel = 0;
			Dropdown.TextSize = 14;
			Dropdown.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			Dropdown.Parent = Options;
			if not settings.Order then
				Dropdown.LayoutOrder = LayoutOrderModule;
			else
				Dropdown.LayoutOrder = settings.OrderValue;
			end
			if not Library._config._flags[settings.flag] then
				Library._config._flags[settings.flag] = {};
			end
			local DDTitle = Instance.new("TextLabel");
			DDTitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			DDTitle.TextSize = 11;
			DDTitle.TextColor3 = Color3.fromRGB(255, 255, 255);
			DDTitle.TextTransparency = 0.15;
			DDTitle.Text = settings.title;
			DDTitle.Size = UDim2.new(0, 207, 0, 13);
			DDTitle.BackgroundTransparency = 1;
			DDTitle.TextXAlignment = Enum.TextXAlignment.Left;
			DDTitle.Parent = Dropdown;
			local Box = Instance.new("Frame");
			Box.ClipsDescendants = true;
			Box.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Box.AnchorPoint = Vector2.new(0.5, 0);
			Box.BackgroundTransparency = 0.88;
			Box.Position = UDim2.new(0.5, 0, 1.2, 0);
			Box.Name = "Box";
			Box.Size = UDim2.new(0, 207, 0, 22);
			Box.BorderSizePixel = 0;
			Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Box.Parent = DDTitle;
			local BoxCorner = Instance.new("UICorner");
			BoxCorner.CornerRadius = UDim.new(0, 5);
			BoxCorner.Parent = Box;
			local Header2 = Instance.new("Frame");
			Header2.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Header2.AnchorPoint = Vector2.new(0.5, 0);
			Header2.BackgroundTransparency = 1;
			Header2.Position = UDim2.new(0.5, 0, 0, 0);
			Header2.Name = "Header";
			Header2.Size = UDim2.new(0, 207, 0, 22);
			Header2.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Header2.Parent = Box;
			local CurrentOption = Instance.new("TextLabel");
			CurrentOption.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			CurrentOption.TextColor3 = Color3.fromRGB(255, 255, 255);
			CurrentOption.TextTransparency = 0.15;
			CurrentOption.Name = "CurrentOption";
			CurrentOption.Size = UDim2.new(0, 161, 0, 13);
			CurrentOption.AnchorPoint = Vector2.new(0, 0.5);
			CurrentOption.Position = UDim2.new(0.05, 0, 0.5, 0);
			CurrentOption.BackgroundTransparency = 1;
			CurrentOption.TextXAlignment = Enum.TextXAlignment.Left;
			CurrentOption.TextSize = 10;
			CurrentOption.Parent = Header2;
			local COGrad = Instance.new("UIGradient");
			COGrad.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(0.7, 0),NumberSequenceKeypoint.new(0.88, 0.35),NumberSequenceKeypoint.new(1, 1)});
			COGrad.Parent = CurrentOption;
			local Arrow = Instance.new("ImageLabel");
			Arrow.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Arrow.AnchorPoint = Vector2.new(0, 0.5);
			Arrow.Image = "rbxassetid://84232453189324";
			Arrow.BackgroundTransparency = 1;
			Arrow.Position = UDim2.new(0.91, 0, 0.5, 0);
			Arrow.Name = "Arrow";
			Arrow.Size = UDim2.new(0, 8, 0, 8);
			Arrow.Parent = Header2;
			local DropOptions = Instance.new("ScrollingFrame");
			DropOptions.ScrollBarImageTransparency = 1;
			DropOptions.Active = true;
			DropOptions.AutomaticCanvasSize = Enum.AutomaticSize.XY;
			DropOptions.ScrollBarThickness = 0;
			DropOptions.Name = "Options";
			DropOptions.Size = UDim2.new(0, 207, 0, 0);
			DropOptions.BackgroundTransparency = 1;
			DropOptions.Position = UDim2.new(0, 0, 1, 0);
			DropOptions.CanvasSize = UDim2.new(0, 0, 0.5, 0);
			DropOptions.Parent = Box;
			local DOptLayout = Instance.new("UIListLayout");
			DOptLayout.SortOrder = Enum.SortOrder.LayoutOrder;
			DOptLayout.Parent = DropOptions;
			local DOptPad = Instance.new("UIPadding");
			DOptPad.PaddingTop = UDim.new(0, -1);
			DOptPad.PaddingLeft = UDim.new(0, 10);
			DOptPad.Parent = DropOptions;
			local BoxLayout = Instance.new("UIListLayout");
			BoxLayout.SortOrder = Enum.SortOrder.LayoutOrder;
			BoxLayout.Parent = Box;
			DropdownManager.update = function(self, option)
				local _theme_data = Themes[Library._current_theme] or Themes['Midnight'];
				local accent = _theme_data.Accent;
				local function applyHighlight(object, isSelected)
					local sh = object:FindFirstChild("SelectHighlight");
					local sd = object:FindFirstChild("SelectDot");
					if isSelected then
						object.TextTransparency = 0;
						pcall(function()
							object.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
						end);
						if sh then
							TweenService:Create(sh, Tween.fast, {BackgroundTransparency=0.75,BackgroundColor3=accent}):Play();
						end
						if sd then
							TweenService:Create(sd, Tween.spring, {BackgroundTransparency=0,BackgroundColor3=accent}):Play();
						end
					else
						object.TextTransparency = 0.6;
						pcall(function()
							object.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
						end);
						if sh then
							TweenService:Create(sh, Tween.fast, {BackgroundTransparency=1}):Play();
						end
						if sd then
							TweenService:Create(sd, Tween.fast, {BackgroundTransparency=1}):Play();
						end
					end
				end
				if settings.multi_dropdown then
					if not Library._config._flags[settings.flag] then
						Library._config._flags[settings.flag] = {};
					end
					local CurrentTargetValue = nil;
					if (#Library._config._flags[settings.flag] > 0) then
						CurrentTargetValue = convertTableToString(Library._config._flags[settings.flag]);
					end
					local selected = {};
					if CurrentTargetValue then
						for value in string.gmatch(CurrentTargetValue, "([^,]+)") do
							local trimmed = value:match("^%s*(.-)%s*$");
							if (trimmed ~= "Label") then
								table.insert(selected, trimmed);
							end
						end
					else
						for value in string.gmatch(CurrentOption.Text, "([^,]+)") do
							local trimmed = value:match("^%s*(.-)%s*$");
							if (trimmed ~= "Label") then
								table.insert(selected, trimmed);
							end
						end
					end
					local CurrentTextGet = convertStringToTable(CurrentOption.Text);
					local optionSkibidi = ((typeof(option) ~= "string") and option.Name) or option;
					for i, v in pairs(CurrentTextGet) do
						if (v == optionSkibidi) then
							table.remove(CurrentTextGet, i);
							break;
						end
					end
					CurrentOption.Text = table.concat(selected, ", ");
					local OptionsChild = {};
					for _, object in DropOptions:GetChildren() do
						if (object.Name == "Option") then
							table.insert(OptionsChild, object.Text);
							applyHighlight(object, table.find(selected, object.Text) ~= nil);
						end
					end
					local CurrentTargetValue2 = convertStringToTable(CurrentOption.Text);
					for _, v in CurrentTargetValue2 do
						if (not table.find(OptionsChild, v) and table.find(selected, v)) then
							table.remove(selected, _);
						end
					end
					CurrentOption.Text = table.concat(selected, ", ");
					Library._config._flags[settings.flag] = convertStringToTable(CurrentOption.Text);
				else
					if (option == nil) then
						return;
					end
					CurrentOption.Text = ((typeof(option) == "string") and option) or (option and option.Name) or "";
					for _, object in DropOptions:GetChildren() do
						if (object.Name == "Option") then
							applyHighlight(object, object.Text == CurrentOption.Text);
						end
					end
					Library._config._flags[settings.flag] = option;
				end
				Config:save(game.GameId, Library._config);
				settings.callback(option);
			end;
			DropdownManager.unfold_settings = function(self)
				self._state = not self._state;
				if self._state then
					TweenService:Create(Dropdown, Tween.smooth, {Size=UDim2.fromOffset(207, 39 + self._size)}):Play();
					TweenService:Create(Box, Tween.smooth, {Size=UDim2.fromOffset(207, 22 + self._size)}):Play();
					TweenService:Create(Arrow, Tween.smooth, {Rotation=180}):Play();
				else
					TweenService:Create(Dropdown, Tween.smooth, {Size=UDim2.fromOffset(207, 39)}):Play();
					TweenService:Create(Box, Tween.smooth, {Size=UDim2.fromOffset(207, 22)}):Play();
					TweenService:Create(Arrow, Tween.smooth, {Rotation=0}):Play();
				end
			end;
			if (#settings.options > 0) then
				DropdownManager._size = 3;
				for index, value in settings.options do
					local Option = Instance.new("TextButton");
					Option.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
					Option.Active = false;
					Option.TextTransparency = 0.6;
					Option.AnchorPoint = Vector2.new(0, 0.5);
					Option.TextSize = 10;
					Option.Size = UDim2.new(0, 186, 0, 18);
					Option.TextColor3 = Color3.fromRGB(255, 255, 255);
					Option.BorderColor3 = Color3.fromRGB(0, 0, 0);
					Option.Text = ((typeof(value) == "string") and value) or value.Name;
					Option.AutoButtonColor = false;
					Option.Name = "Option";
					Option.BackgroundTransparency = 1;
					Option.TextXAlignment = Enum.TextXAlignment.Left;
					Option.Selectable = false;
					Option.Parent = DropOptions;
					local SH = Instance.new("Frame");
					SH.Name = "SelectHighlight";
					SH.Size = UDim2.new(1, 4, 1, 0);
					SH.Position = UDim2.new(0, -4, 0, 0);
					SH.BackgroundColor3 = Themes[Library._current_theme].Accent;
					SH.BackgroundTransparency = 1;
					SH.BorderSizePixel = 0;
					SH.ZIndex = Option.ZIndex - 1;
					SH.Parent = Option;
					local SHCorner = Instance.new("UICorner");
					SHCorner.CornerRadius = UDim.new(0, 4);
					SHCorner.Parent = SH;
					local SD = Instance.new("Frame");
					SD.Name = "SelectDot";
					SD.Size = UDim2.fromOffset(4, 4);
					SD.AnchorPoint = Vector2.new(1, 0.5);
					SD.Position = UDim2.new(0, -6, 0.5, 0);
					SD.BackgroundColor3 = Themes[Library._current_theme].Accent;
					SD.BackgroundTransparency = 1;
					SD.BorderSizePixel = 0;
					SD.ZIndex = Option.ZIndex + 1;
					SD.Parent = Option;
					local SDCorner = Instance.new("UICorner");
					SDCorner.CornerRadius = UDim.new(1, 0);
					SDCorner.Parent = SD;
					table.insert(lib._themed_elements.DropdownHighlights, {Highlight=SH,Dot=SD});
					local OGrad = Instance.new("UIGradient");
					OGrad.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(0.7, 0),NumberSequenceKeypoint.new(0.88, 0.35),NumberSequenceKeypoint.new(1, 1)});
					OGrad.Parent = Option;
					Option.MouseEnter:Connect(function()
						if (Option.TextTransparency ~= 0) then
							TweenService:Create(Option, Tween.snap, {TextTransparency=0.3}):Play();
							TweenService:Create(SH, Tween.snap, {BackgroundTransparency=0.92}):Play();
						end
					end);
					Option.MouseLeave:Connect(function()
						if (Option.TextTransparency ~= 0) then
							TweenService:Create(Option, Tween.snap, {TextTransparency=0.6}):Play();
							TweenService:Create(SH, Tween.snap, {BackgroundTransparency=1}):Play();
						end
					end);
					Option.MouseButton1Click:Connect(function()
						if not Library._config._flags[settings.flag] then
							Library._config._flags[settings.flag] = {};
						end
						if settings.multi_dropdown then
							if table.find(Library._config._flags[settings.flag], value) then
								Library:remove_table_value(Library._config._flags[settings.flag], value);
							else
								table.insert(Library._config._flags[settings.flag], value);
							end
						end
						DropdownManager:update(value);
					end);
					if (index > settings.maximum_options) then
						continue;
					end
					DropdownManager._size += 18
					DropOptions.Size = UDim2.fromOffset(207, DropdownManager._size);
				end
			end
			DropdownManager.New = function(self, value)
				value.OrderValue = Dropdown.LayoutOrder;
				Dropdown:Destroy();
				return ModuleManager:create_dropdown(value);
			end;
			if Library:flag_type(settings.flag, "string") then
				DropdownManager:update(Library._config._flags[settings.flag]);
			elseif (settings.options and settings.options[1]) then
				DropdownManager:update(settings.options[1]);
			end
			Dropdown.MouseButton1Click:Connect(function()
				DropdownManager:unfold_settings();
			end);
			lib:register_element({tab_name=title,module_name=(settings.flag or "Module"),element_type="dropdown",element_title=(settings.title or "Dropdown"),get_frame_fn=function()
				return Dropdown;
			end,jump_fn=nil,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
			return DropdownManager;
		end;
		if Library._inject_v2_elements then
			Library._inject_v2_elements(ModuleManager, Options, lib, title, switch_to_this_tab, open_this_module);
		end
		return ModuleManager;
	end;
	return TabManager;
end;
local function rgbToHsv(r, g, b)
	local max, min = math.max(r, g, b), math.min(r, g, b);
	local h, s, v = 0, 0, max;
	local d = max - min;
	s = ((max == 0) and 0) or (d / max);
	if (max ~= min) then
		if (max == r) then
			h = ((g - b) / d) + (((g < b) and 6) or 0);
		elseif (max == g) then
			h = ((b - r) / d) + 2;
		else
			h = ((r - g) / d) + 4;
		end
		h = h / 6;
	end
	return h, s, v;
end
local function hsvToRgb(h, s, v)
	local i = math.floor(h * 6);
	local f = (h * 6) - i;
	local p = v * (1 - s);
	local q = v * (1 - (f * s));
	local t = v * (1 - ((1 - f) * s));
	i = i % 6;
	local lut = {[0]={v,t,p},[1]={q,v,p},[2]={p,v,t},[3]={p,q,v},[4]={t,p,v},[5]={v,p,q}};
	local c = lut[i];
	return c[1], c[2], c[3];
end
local function color3ToHex(c)
	return string.format("%02X%02X%02X", math.clamp(math.floor((c.R * 255) + 0.5), 0, 255), math.clamp(math.floor((c.G * 255) + 0.5), 0, 255), math.clamp(math.floor((c.B * 255) + 0.5), 0, 255));
end
local function hexToColor3(hex)
	hex = hex:gsub("#", "");
	if (#hex ~= 6) then
		return nil;
	end
	local r = tonumber(hex:sub(1, 2), 16);
	local g = tonumber(hex:sub(3, 4), 16);
	local b = tonumber(hex:sub(5, 6), 16);
	if not (r and g and b) then
		return nil;
	end
	return Color3.fromRGB(r, g, b);
end
Library._rgbToHsv = rgbToHsv;
Library._hsvToRgb = hsvToRgb;
Library._color3ToHex = color3ToHex;
Library._hexToColor3 = hexToColor3;
local function nextLayoutOrder(Options)
	local max = 0;
	for _, child in Options:GetChildren() do
		if (child:IsA("GuiObject") and (child.LayoutOrder > max)) then
			max = child.LayoutOrder;
		end
	end
	return max + 1;
end
local StatusColors = {Enabled=Color3.fromRGB(60, 210, 120),Disabled=Color3.fromRGB(110, 115, 145),Warning=Color3.fromRGB(255, 185, 45),Error=Color3.fromRGB(230, 65, 75),Loading=nil};
Library._inject_v2_elements = function(ModuleManager, Options, lib, tab_title, switch_to_this_tab, open_this_module)
	ModuleManager.create_colorpicker = function(self, settings)
		local lo = nextLayoutOrder(Options);
		local CPM = {_color=(settings.default or Color3.fromRGB(130, 100, 255))};
		local curH, curS, curV = rgbToHsv(CPM._color.R, CPM._color.G, CPM._color.B);
		local curA = 1;
		local Row = Instance.new("Frame");
		Row.Name = "ColorpickerRow";
		Row.BackgroundTransparency = 1;
		Row.Size = UDim2.new(0, 207, 0, 20);
		Row.BorderSizePixel = 0;
		Row.LayoutOrder = lo;
		Row.Parent = Options;
		local RowTitle = Instance.new("TextLabel");
		RowTitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold);
		RowTitle.TextColor3 = Color3.fromRGB(255, 255, 255);
		RowTitle.TextTransparency = 0.15;
		RowTitle.Text = settings.title or "Color";
		RowTitle.Size = UDim2.new(1, -32, 1, 0);
		RowTitle.BackgroundTransparency = 1;
		RowTitle.TextXAlignment = Enum.TextXAlignment.Left;
		RowTitle.TextSize = 11;
		RowTitle.Parent = Row;
		local Swatch = Instance.new("TextButton");
		Swatch.Name = "Swatch";
		Swatch.Size = UDim2.new(0, 24, 0, 16);
		Swatch.AnchorPoint = Vector2.new(1, 0.5);
		Swatch.Position = UDim2.new(1, 0, 0.5, 0);
		Swatch.BackgroundColor3 = CPM._color;
		Swatch.BorderSizePixel = 0;
		Swatch.AutoButtonColor = false;
		Swatch.Text = "";
		Swatch.ZIndex = 2;
		Swatch.Parent = Row;
		local SwCorner = Instance.new("UICorner");
		SwCorner.CornerRadius = UDim.new(0, 4);
		SwCorner.Parent = Swatch;
		local SwStroke = Instance.new("UIStroke");
		SwStroke.Color = Color3.fromRGB(255, 255, 255);
		SwStroke.Transparency = 0.7;
		SwStroke.Thickness = 1;
		SwStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		SwStroke.Parent = Swatch;
		local Popup = Instance.new("Frame");
		Popup.Name = "CPPopup";
		Popup.Size = UDim2.new(0, 207, 0, 0);
		Popup.AutomaticSize = Enum.AutomaticSize.Y;
		Popup.BackgroundColor3 = Color3.fromRGB(22, 27, 38);
		Popup.BackgroundTransparency = 0.05;
		Popup.BorderSizePixel = 0;
		Popup.Visible = false;
		Popup.ZIndex = 10;
		Popup.LayoutOrder = lo + 0.5;
		Popup.Parent = Options;
		local PopCorner = Instance.new("UICorner");
		PopCorner.CornerRadius = UDim.new(0, 6);
		PopCorner.Parent = Popup;
		local PopPad = Instance.new("UIPadding");
		PopPad.PaddingTop = UDim.new(0, 8);
		PopPad.PaddingBottom = UDim.new(0, 8);
		PopPad.PaddingLeft = UDim.new(0, 8);
		PopPad.PaddingRight = UDim.new(0, 8);
		PopPad.Parent = Popup;
		local PopLayout = Instance.new("UIListLayout");
		PopLayout.Padding = UDim.new(0, 6);
		PopLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PopLayout.Parent = Popup;
		local SVPicker = Instance.new("ImageButton");
		SVPicker.Name = "SVPicker";
		SVPicker.Size = UDim2.new(1, 0, 0, 120);
		SVPicker.BackgroundColor3 = Color3.fromHSV(curH, 1, 1);
		SVPicker.BorderSizePixel = 0;
		SVPicker.AutoButtonColor = false;
		SVPicker.LayoutOrder = 1;
		SVPicker.ZIndex = 11;
		SVPicker.Parent = Popup;
		local SVCorner = Instance.new("UICorner");
		SVCorner.CornerRadius = UDim.new(0, 5);
		SVCorner.Parent = SVPicker;
		local WhiteGrad = Instance.new("Frame");
		WhiteGrad.Size = UDim2.new(1, 0, 1, 0);
		WhiteGrad.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		WhiteGrad.BorderSizePixel = 0;
		WhiteGrad.ZIndex = 12;
		WhiteGrad.Parent = SVPicker;
		local WG = Instance.new("UIGradient");
		WG.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)});
		WG.Parent = WhiteGrad;
		local BlackGrad = Instance.new("Frame");
		BlackGrad.Size = UDim2.new(1, 0, 1, 0);
		BlackGrad.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BlackGrad.BorderSizePixel = 0;
		BlackGrad.ZIndex = 13;
		BlackGrad.Parent = SVPicker;
		local BG2 = Instance.new("UIGradient");
		BG2.Rotation = 90;
		BG2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(1, 0)});
		BG2.Parent = BlackGrad;
		local SVCursor = Instance.new("Frame");
		SVCursor.Name = "SVCursor";
		SVCursor.Size = UDim2.fromOffset(10, 10);
		SVCursor.AnchorPoint = Vector2.new(0.5, 0.5);
		SVCursor.Position = UDim2.new(curS, 0, 1 - curV, 0);
		SVCursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		SVCursor.BorderSizePixel = 0;
		SVCursor.ZIndex = 14;
		SVCursor.Parent = SVPicker;
		local SVCCorner = Instance.new("UICorner");
		SVCCorner.CornerRadius = UDim.new(1, 0);
		SVCCorner.Parent = SVCursor;
		local SVCStroke = Instance.new("UIStroke");
		SVCStroke.Color = Color3.fromRGB(0, 0, 0);
		SVCStroke.Transparency = 0.35;
		SVCStroke.Thickness = 1;
		SVCStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		SVCStroke.Parent = SVCursor;
		local HueBar = Instance.new("Frame");
		HueBar.Name = "HueBar";
		HueBar.Size = UDim2.new(1, 0, 0, 12);
		HueBar.BorderSizePixel = 0;
		HueBar.LayoutOrder = 2;
		HueBar.ZIndex = 11;
		HueBar.Parent = Popup;
		local HBCorner = Instance.new("UICorner");
		HBCorner.CornerRadius = UDim.new(0, 6);
		HBCorner.Parent = HueBar;
		local HueGrad = Instance.new("UIGradient");
		HueGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(NaN, Color3.fromRGB(255, 0, 0)),ColorSequenceKeypoint.new(1 / 6, Color3.fromRGB(255, 255, 0)),ColorSequenceKeypoint.new(2 / 6, Color3.fromRGB(0, 255, 0)),ColorSequenceKeypoint.new(3 / 6, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(4 / 6, Color3.fromRGB(0, 0, 255)),ColorSequenceKeypoint.new(5 / 6, Color3.fromRGB(255, 0, 255)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))});
		HueGrad.Parent = HueBar;
		local HueCsr = Instance.new("Frame");
		HueCsr.Name = "HueCsr";
		HueCsr.Size = UDim2.fromOffset(8, 14);
		HueCsr.AnchorPoint = Vector2.new(0.5, 0.5);
		HueCsr.Position = UDim2.new(curH, 0, 0.5, 0);
		HueCsr.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		HueCsr.BorderSizePixel = 0;
		HueCsr.ZIndex = 12;
		HueCsr.Parent = HueBar;
		local HCCorner = Instance.new("UICorner");
		HCCorner.CornerRadius = UDim.new(0, 3);
		HCCorner.Parent = HueCsr;
		local HCStroke = Instance.new("UIStroke");
		HCStroke.Color = Color3.fromRGB(0, 0, 0);
		HCStroke.Transparency = 0.4;
		HCStroke.Thickness = 1;
		HCStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		HCStroke.Parent = HueCsr;
		local AlphaBar = Instance.new("Frame");
		AlphaBar.Name = "AlphaBar";
		AlphaBar.Size = UDim2.new(1, 0, 0, 12);
		AlphaBar.BorderSizePixel = 0;
		AlphaBar.LayoutOrder = 3;
		AlphaBar.ZIndex = 11;
		AlphaBar.Parent = Popup;
		local ABCorner2 = Instance.new("UICorner");
		ABCorner2.CornerRadius = UDim.new(0, 6);
		ABCorner2.Parent = AlphaBar;
		local AlphaGrad = Instance.new("UIGradient");
		AlphaGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))});
		AlphaGrad.Parent = AlphaBar;
		local AlphaCsr = Instance.new("Frame");
		AlphaCsr.Name = "AlphaCsr";
		AlphaCsr.Size = UDim2.fromOffset(8, 14);
		AlphaCsr.AnchorPoint = Vector2.new(0.5, 0.5);
		AlphaCsr.Position = UDim2.new(curA, 0, 0.5, 0);
		AlphaCsr.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		AlphaCsr.BorderSizePixel = 0;
		AlphaCsr.ZIndex = 12;
		AlphaCsr.Parent = AlphaBar;
		local ACCorner2 = Instance.new("UICorner");
		ACCorner2.CornerRadius = UDim.new(0, 3);
		ACCorner2.Parent = AlphaCsr;
		local BRow = Instance.new("Frame");
		BRow.Size = UDim2.new(1, 0, 0, 20);
		BRow.BackgroundTransparency = 1;
		BRow.LayoutOrder = 4;
		BRow.Parent = Popup;
		local HexLabel = Instance.new("TextLabel");
		HexLabel.Text = "#";
		HexLabel.TextColor3 = Color3.fromRGB(160, 165, 190);
		HexLabel.TextSize = 10;
		HexLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json");
		HexLabel.Size = UDim2.new(0, 10, 1, 0);
		HexLabel.BackgroundTransparency = 1;
		HexLabel.Parent = BRow;
		local HexBox = Instance.new("TextBox");
		HexBox.Text = color3ToHex(CPM._color);
		HexBox.PlaceholderText = "FF0000";
		HexBox.TextColor3 = Color3.fromRGB(240, 242, 255);
		HexBox.TextSize = 10;
		HexBox.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json");
		HexBox.Size = UDim2.new(0, 62, 1, 0);
		HexBox.Position = UDim2.new(0, 14, 0, 0);
		HexBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		HexBox.BackgroundTransparency = 0.88;
		HexBox.BorderSizePixel = 0;
		HexBox.ClearTextOnFocus = false;
		HexBox.ZIndex = 11;
		HexBox.Parent = BRow;
		local HBBox = Instance.new("UICorner");
		HBBox.CornerRadius = UDim.new(0, 4);
		HBBox.Parent = HexBox;
		local CopyBtn = Instance.new("TextButton");
		CopyBtn.Text = "Copy";
		CopyBtn.TextSize = 10;
		CopyBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold);
		CopyBtn.TextColor3 = Color3.fromRGB(200, 205, 225);
		CopyBtn.Size = UDim2.new(0, 36, 1, 0);
		CopyBtn.Position = UDim2.new(0, 80, 0, 0);
		CopyBtn.BackgroundColor3 = Themes[Library._current_theme].Accent;
		CopyBtn.BackgroundTransparency = 0.4;
		CopyBtn.BorderSizePixel = 0;
		CopyBtn.AutoButtonColor = false;
		CopyBtn.ZIndex = 11;
		CopyBtn.Parent = BRow;
		local CBCorner2 = Instance.new("UICorner");
		CBCorner2.CornerRadius = UDim.new(0, 4);
		CBCorner2.Parent = CopyBtn;
		local Preview = Instance.new("Frame");
		Preview.Size = UDim2.new(0, 40, 1, 0);
		Preview.AnchorPoint = Vector2.new(1, 0);
		Preview.Position = UDim2.new(1, 0, 0, 0);
		Preview.BackgroundColor3 = CPM._color;
		Preview.BorderSizePixel = 0;
		Preview.Parent = BRow;
		local PCorner2 = Instance.new("UICorner");
		PCorner2.CornerRadius = UDim.new(0, 4);
		PCorner2.Parent = Preview;
		local function applyColor()
			local r, g, b = hsvToRgb(curH, curS, curV);
			local c = Color3.new(r, g, b);
			CPM._color = c;
			Swatch.BackgroundColor3 = c;
			Preview.BackgroundColor3 = c;
			SVPicker.BackgroundColor3 = Color3.fromHSV(curH, 1, 1);
			SVCursor.Position = UDim2.new(curS, 0, 1 - curV, 0);
			HueCsr.Position = UDim2.new(curH, 0, 0.5, 0);
			AlphaCsr.Position = UDim2.new(curA, 0, 0.5, 0);
			HexBox.Text = color3ToHex(c);
			Library._config._flags[settings.flag] = {c.R,c.G,c.B,curA};
			Config:save(game.GameId, Library._config);
			if settings.callback then
				settings.callback(c);
			end
		end
		local _cp_conns = {};
		local function makeDrag(track, onDelta)
			local dragging = false;
			table.insert(_cp_conns, track.InputBegan:Connect(function(inp)
				if ((inp.UserInputType == Enum.UserInputType.MouseButton1) or (inp.UserInputType == Enum.UserInputType.Touch)) then
					dragging = true;
					onDelta(inp.Position);
				end
			end));
			table.insert(_cp_conns, UserInputService.InputEnded:Connect(function(inp)
				if ((inp.UserInputType == Enum.UserInputType.MouseButton1) or (inp.UserInputType == Enum.UserInputType.Touch)) then
					dragging = false;
				end
			end));
			table.insert(_cp_conns, UserInputService.InputChanged:Connect(function(inp)
				if not dragging then
					return;
				end
				if ((inp.UserInputType == Enum.UserInputType.MouseMovement) or (inp.UserInputType == Enum.UserInputType.Touch)) then
					onDelta(inp.Position);
				end
			end));
		end
		makeDrag(SVPicker, function(pos)
			local abs = SVPicker.AbsolutePosition;
			local sz = SVPicker.AbsoluteSize;
			curS = math.clamp((pos.X - abs.X) / sz.X, 0, 1);
			curV = 1 - math.clamp((pos.Y - abs.Y) / sz.Y, 0, 1);
			applyColor();
		end);
		makeDrag(HueBar, function(pos)
			curH = math.clamp((pos.X - HueBar.AbsolutePosition.X) / HueBar.AbsoluteSize.X, 0, 1);
			applyColor();
		end);
		makeDrag(AlphaBar, function(pos)
			curA = math.clamp((pos.X - AlphaBar.AbsolutePosition.X) / AlphaBar.AbsoluteSize.X, 0, 1);
			applyColor();
		end);
		HexBox.FocusLost:Connect(function()
			local c = hexToColor3(HexBox.Text);
			if c then
				curH, curS, curV = rgbToHsv(c.R, c.G, c.B);
				applyColor();
			else
				HexBox.Text = color3ToHex(CPM._color);
			end
		end);
		CopyBtn.MouseButton1Click:Connect(function()
			local hex = "#" .. color3ToHex(CPM._color);
			pcall(function()
				if setclipboard then
					setclipboard(hex);
				end
			end);
			Library.SendNotification({title="Copied",text=hex,duration=1.5});
		end);
		Swatch.MouseButton1Click:Connect(function()
			Popup.Visible = not Popup.Visible;
		end);
		local sv = Library._config._flags[settings.flag];
		if ((type(sv) == "table") and (#sv >= 3)) then
			local c = Color3.new(sv[1], sv[2], sv[3]);
			if sv[4] then
				curA = sv[4];
			end
			curH, curS, curV = rgbToHsv(c.R, c.G, c.B);
			CPM._color = c;
			applyColor();
		else
			applyColor();
		end
		CPM.Destroy = function()
			for _, c in ipairs(_cp_conns) do
				pcall(function()
					c:Disconnect();
				end);
			end
			Row:Destroy();
			if Popup.Parent then
				Popup:Destroy();
			end
		end;
		CPM.SetColor = function(_, color)
			curH, curS, curV = rgbToHsv(color.R, color.G, color.B);
			CPM._color = color;
			applyColor();
		end;
		CPM.GetColor = function()
			return CPM._color;
		end;
		CPM.SetAlpha = function(_, a)
			curA = math.clamp(a, 0, 1);
			applyColor();
		end;
		lib:register_element({tab_name=tab_title,module_name=(settings.flag or "?"),element_type="colorpicker",element_title=(settings.title or "Color"),get_frame_fn=function()
			return Row;
		end,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
		return CPM;
	end;
	ModuleManager.create_keybind = function(self, settings)
		local lo = nextLayoutOrder(Options);
		local KBM = {_key=(settings.default or Enum.KeyCode.Unknown),_mode=(settings.mode or "Toggle"),_active=false};
		local KBRow = Instance.new("Frame");
		KBRow.Name = "KeybindRow";
		KBRow.BackgroundTransparency = 1;
		KBRow.Size = UDim2.new(0, 207, 0, 28);
		KBRow.BorderSizePixel = 0;
		KBRow.LayoutOrder = lo;
		KBRow.Parent = Options;
		local KBTitle = Instance.new("TextLabel");
		KBTitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold);
		KBTitle.TextColor3 = Color3.fromRGB(255, 255, 255);
		KBTitle.TextTransparency = 0.15;
		KBTitle.Text = settings.title or "Keybind";
		KBTitle.Size = UDim2.new(1, -100, 0, 14);
		KBTitle.Position = UDim2.new(0, 0, 0, 0);
		KBTitle.BackgroundTransparency = 1;
		KBTitle.TextXAlignment = Enum.TextXAlignment.Left;
		KBTitle.TextSize = 11;
		KBTitle.Parent = KBRow;
		local Pill = Instance.new("TextButton");
		Pill.Name = "KeybindPill";
		Pill.Size = UDim2.new(0, 64, 0, 16);
		Pill.AnchorPoint = Vector2.new(1, 0);
		Pill.Position = UDim2.new(1, 0, 0, 0);
		Pill.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Pill.BackgroundTransparency = 0.84;
		Pill.BorderSizePixel = 0;
		Pill.AutoButtonColor = false;
		Pill.Text = "";
		Pill.ZIndex = 2;
		Pill.Parent = KBRow;
		local PCorner3 = Instance.new("UICorner");
		PCorner3.CornerRadius = UDim.new(0, 4);
		PCorner3.Parent = Pill;
		local PillLabel = Instance.new("TextLabel");
		PillLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold);
		PillLabel.TextColor3 = Color3.fromRGB(200, 210, 255);
		PillLabel.TextSize = 9;
		PillLabel.Size = UDim2.new(1, -4, 1, 0);
		PillLabel.Position = UDim2.new(0, 2, 0, 0);
		PillLabel.BackgroundTransparency = 1;
		PillLabel.TextXAlignment = Enum.TextXAlignment.Center;
		PillLabel.ZIndex = 3;
		PillLabel.Parent = Pill;
		local ModeTag = Instance.new("TextLabel");
		ModeTag.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular);
		ModeTag.TextColor3 = Color3.fromRGB(110, 115, 145);
		ModeTag.TextSize = 9;
		ModeTag.Text = KBM._mode;
		ModeTag.Size = UDim2.new(1, -100, 0, 12);
		ModeTag.Position = UDim2.new(0, 0, 0, 16);
		ModeTag.BackgroundTransparency = 1;
		ModeTag.TextXAlignment = Enum.TextXAlignment.Left;
		ModeTag.Parent = KBRow;
		local function pillText()
			if (KBM._key == Enum.KeyCode.Unknown) then
				return "None";
			end
			return string.gsub(tostring(KBM._key), "Enum%.KeyCode%.", "");
		end
		PillLabel.Text = pillText();
		local listening = false;
		Pill.MouseButton1Click:Connect(function()
			if listening then
				return;
			end
			listening = true;
			PillLabel.Text = "...";
			TweenService:Create(Pill, Tween.fast, {BackgroundTransparency=0.55}):Play();
			local c;
			c = UserInputService.InputBegan:Connect(function(inp, gp)
				if gp then
					return;
				end
				if (inp.KeyCode == Enum.KeyCode.Unknown) then
					return;
				end
				c:Disconnect();
				listening = false;
				KBM._key = ((inp.KeyCode == Enum.KeyCode.Backspace) and Enum.KeyCode.Unknown) or inp.KeyCode;
				Library._config._flags[settings.flag .. "_kbv2"] = tostring(KBM._key);
				Config:save(game.GameId, Library._config);
				TweenService:Create(Pill, Tween.fast, {BackgroundTransparency=0.84}):Play();
				PillLabel.Text = pillText();
			end);
		end);
		local modes = {"Toggle","Hold","Always"};
		Pill.InputBegan:Connect(function(inp)
			if (inp.UserInputType ~= Enum.UserInputType.MouseButton2) then
				return;
			end
			local idx = table.find(modes, KBM._mode) or 1;
			KBM._mode = modes[(idx % #modes) + 1];
			ModeTag.Text = KBM._mode;
			Library._config._flags[settings.flag .. "_mode"] = KBM._mode;
			Config:save(game.GameId, Library._config);
		end);
		local kbConn = UserInputService.InputBegan:Connect(function(inp, gp)
			if gp then
				return;
			end
			if (inp.KeyCode ~= KBM._key) then
				return;
			end
			if (KBM._mode == "Toggle") then
				KBM._active = not KBM._active;
				if settings.callback then
					settings.callback(KBM._active);
				end
			elseif (KBM._mode == "Hold") then
				KBM._active = true;
				if settings.callback then
					settings.callback(true);
				end
			end
		end);
		local kbEndConn = UserInputService.InputEnded:Connect(function(inp)
			if (inp.KeyCode ~= KBM._key) then
				return;
			end
			if ((KBM._mode == "Hold") and KBM._active) then
				KBM._active = false;
				if settings.callback then
					settings.callback(false);
				end
			end
		end);
		local sv = Library._config._flags[settings.flag .. "_kbv2"];
		if sv then
			local kn = sv:gsub("Enum%.KeyCode%.", "");
			local ok, kc = pcall(function()
				return Enum.KeyCode[kn];
			end);
			if (ok and kc) then
				KBM._key = kc;
				PillLabel.Text = pillText();
			end
		end
		if Library._config._flags[settings.flag .. "_mode"] then
			KBM._mode = Library._config._flags[settings.flag .. "_mode"];
			ModeTag.Text = KBM._mode;
		end
		KBM.SetKeybind = function(_, kc)
			KBM._key = kc;
			PillLabel.Text = pillText();
		end;
		KBM.GetKeybind = function()
			return KBM._key;
		end;
		KBM.SetMode = function(_, m)
			KBM._mode = m;
			ModeTag.Text = m;
		end;
		KBM.Destroy = function()
			if kbConn then
				pcall(function()
					kbConn:Disconnect();
				end);
			end
			if kbEndConn then
				pcall(function()
					kbEndConn:Disconnect();
				end);
			end
			KBRow:Destroy();
		end;
		lib:register_element({tab_name=tab_title,module_name=(settings.flag or "?"),element_type="keybind",element_title=(settings.title or "Keybind"),get_frame_fn=function()
			return KBRow;
		end,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
		return KBM;
	end;
	ModuleManager.create_multidropdown = function(self, settings)
		local lo = nextLayoutOrder(Options);
		local MDM = {_selected=((settings.default and table.clone(settings.default)) or {})};
		local MDFrame = Instance.new("Frame");
		MDFrame.Name = "MultiDD";
		MDFrame.BackgroundTransparency = 1;
		MDFrame.Size = UDim2.new(0, 207, 0, 0);
		MDFrame.AutomaticSize = Enum.AutomaticSize.Y;
		MDFrame.BorderSizePixel = 0;
		MDFrame.LayoutOrder = lo;
		MDFrame.ClipsDescendants = false;
		MDFrame.Parent = Options;
		local MDF_L = Instance.new("UIListLayout");
		MDF_L.Padding = UDim.new(0, 4);
		MDF_L.SortOrder = Enum.SortOrder.LayoutOrder;
		MDF_L.Parent = MDFrame;
		local TitleLbl = Instance.new("TextLabel");
		TitleLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold);
		TitleLbl.TextColor3 = Color3.fromRGB(255, 255, 255);
		TitleLbl.TextTransparency = 0.15;
		TitleLbl.Text = settings.title or "Select";
		TitleLbl.Size = UDim2.new(1, 0, 0, 13);
		TitleLbl.BackgroundTransparency = 1;
		TitleLbl.TextXAlignment = Enum.TextXAlignment.Left;
		TitleLbl.TextSize = 11;
		TitleLbl.LayoutOrder = 1;
		TitleLbl.Parent = MDFrame;
		local Header = Instance.new("TextButton");
		Header.Size = UDim2.new(1, 0, 0, 22);
		Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Header.BackgroundTransparency = 0.88;
		Header.BorderSizePixel = 0;
		Header.AutoButtonColor = false;
		Header.Text = "";
		Header.LayoutOrder = 2;
		Header.ZIndex = 2;
		Header.Parent = MDFrame;
		local HCorner2 = Instance.new("UICorner");
		HCorner2.CornerRadius = UDim.new(0, 5);
		HCorner2.Parent = Header;
		local CurText = Instance.new("TextLabel");
		CurText.Size = UDim2.new(1, -24, 1, 0);
		CurText.Position = UDim2.new(0, 8, 0, 0);
		CurText.BackgroundTransparency = 1;
		CurText.TextColor3 = Color3.fromRGB(255, 255, 255);
		CurText.TextTransparency = 0.15;
		CurText.TextSize = 10;
		CurText.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold);
		CurText.TextXAlignment = Enum.TextXAlignment.Left;
		CurText.Text = ((#MDM._selected > 0) and table.concat(MDM._selected, ", ")) or "None";
		CurText.ZIndex = 3;
		CurText.Parent = Header;
		local Arrow2 = Instance.new("ImageLabel");
		Arrow2.Image = "rbxassetid://84232453189324";
		Arrow2.Size = UDim2.fromOffset(8, 8);
		Arrow2.AnchorPoint = Vector2.new(1, 0.5);
		Arrow2.Position = UDim2.new(1, -8, 0.5, 0);
		Arrow2.BackgroundTransparency = 1;
		Arrow2.ZIndex = 3;
		Arrow2.Parent = Header;
		local SearchRow = Instance.new("TextBox");
		SearchRow.PlaceholderText = "Search...";
		SearchRow.Text = "";
		SearchRow.TextColor3 = Color3.fromRGB(255, 255, 255);
		SearchRow.TextSize = 10;
		SearchRow.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json");
		SearchRow.Size = UDim2.new(1, 0, 0, 18);
		SearchRow.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		SearchRow.BackgroundTransparency = 0.9;
		SearchRow.BorderSizePixel = 0;
		SearchRow.Visible = false;
		SearchRow.LayoutOrder = 3;
		SearchRow.ZIndex = 3;
		SearchRow.ClearTextOnFocus = false;
		SearchRow.Parent = MDFrame;
		local SRC = Instance.new("UICorner");
		SRC.CornerRadius = UDim.new(0, 4);
		SRC.Parent = SearchRow;
		local OptsScroll = Instance.new("ScrollingFrame");
		OptsScroll.Size = UDim2.new(1, 0, 0, 0);
		OptsScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		OptsScroll.ScrollBarThickness = 2;
		OptsScroll.ScrollBarImageTransparency = 0.6;
		OptsScroll.BackgroundTransparency = 1;
		OptsScroll.Visible = false;
		OptsScroll.LayoutOrder = 4;
		OptsScroll.CanvasSize = UDim2.new(0, 0, 0, 0);
		OptsScroll.BorderSizePixel = 0;
		OptsScroll.Parent = MDFrame;
		local OL2 = Instance.new("UIListLayout");
		OL2.SortOrder = Enum.SortOrder.LayoutOrder;
		OL2.Padding = UDim.new(0, 2);
		OL2.Parent = OptsScroll;
		local SARow2 = Instance.new("Frame");
		SARow2.BackgroundTransparency = 1;
		SARow2.Size = UDim2.new(1, 0, 0, 16);
		SARow2.Visible = false;
		SARow2.LayoutOrder = 5;
		SARow2.Parent = MDFrame;
		local SAL2 = Instance.new("UIListLayout");
		SAL2.FillDirection = Enum.FillDirection.Horizontal;
		SAL2.Padding = UDim.new(0, 4);
		SAL2.Parent = SARow2;
		local function mkSmallBtn(txt, parent)
			local b = Instance.new("TextButton");
			b.Text = txt;
			b.TextSize = 9;
			b.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold);
			b.TextColor3 = Color3.fromRGB(200, 205, 225);
			b.Size = UDim2.new(0, 58, 0, 14);
			b.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			b.BackgroundTransparency = 0.88;
			b.BorderSizePixel = 0;
			b.AutoButtonColor = false;
			b.Parent = parent;
			local bc = Instance.new("UICorner");
			bc.CornerRadius = UDim.new(0, 3);
			bc.Parent = b;
			return b;
		end
		local SelAll = mkSmallBtn("Select All", SARow2);
		local DeselAll = mkSmallBtn("Deselect All", SARow2);
		local function refreshText()
			CurText.Text = ((#MDM._selected > 0) and table.concat(MDM._selected, ", ")) or "None";
			Library._config._flags[settings.flag] = table.clone(MDM._selected);
			Config:save(game.GameId, Library._config);
			if settings.callback then
				settings.callback(table.clone(MDM._selected));
			end
		end
		local function buildOpts(filter)
			for _, c in OptsScroll:GetChildren() do
				if c:IsA("TextButton") then
					c:Destroy();
				end
			end
			local totalH = 0;
			for _, opt in ipairs(settings.options) do
				if ((filter ~= "") and not opt:lower():find(filter:lower(), 1, true)) then
					continue;
				end
				local isSel = table.find(MDM._selected, opt) ~= nil;
				local Opt = Instance.new("TextButton");
				Opt.Size = UDim2.new(1, 0, 0, 16);
				Opt.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				Opt.BackgroundTransparency = (isSel and 0.7) or 0.93;
				Opt.BorderSizePixel = 0;
				Opt.AutoButtonColor = false;
				Opt.Text = "";
				Opt.Parent = OptsScroll;
				local OC = Instance.new("UICorner");
				OC.CornerRadius = UDim.new(0, 3);
				OC.Parent = Opt;
				local OL3 = Instance.new("TextLabel");
				OL3.Text = opt;
				OL3.TextSize = 10;
				OL3.TextColor3 = Color3.fromRGB(255, 255, 255);
				OL3.TextTransparency = (isSel and 0) or 0.5;
				OL3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold);
				OL3.Size = UDim2.new(1, -20, 1, 0);
				OL3.Position = UDim2.new(0, 8, 0, 0);
				OL3.BackgroundTransparency = 1;
				OL3.TextXAlignment = Enum.TextXAlignment.Left;
				OL3.Parent = Opt;
				local Dot = Instance.new("Frame");
				Dot.Size = UDim2.fromOffset(5, 5);
				Dot.AnchorPoint = Vector2.new(1, 0.5);
				Dot.Position = UDim2.new(1, -6, 0.5, 0);
				Dot.BackgroundColor3 = Themes[Library._current_theme].Accent;
				Dot.BackgroundTransparency = (isSel and 0) or 1;
				Dot.BorderSizePixel = 0;
				Dot.Parent = Opt;
				local DC = Instance.new("UICorner");
				DC.CornerRadius = UDim.new(1, 0);
				DC.Parent = Dot;
				Opt.MouseButton1Click:Connect(function()
					local idx2 = table.find(MDM._selected, opt);
					if idx2 then
						table.remove(MDM._selected, idx2);
						TweenService:Create(Opt, Tween.fast, {BackgroundTransparency=0.93}):Play();
						TweenService:Create(OL3, Tween.fast, {TextTransparency=0.5}):Play();
						TweenService:Create(Dot, Tween.fast, {BackgroundTransparency=1}):Play();
					else
						table.insert(MDM._selected, opt);
						TweenService:Create(Opt, Tween.fast, {BackgroundTransparency=0.7}):Play();
						TweenService:Create(OL3, Tween.fast, {TextTransparency=0}):Play();
						TweenService:Create(Dot, Tween.fast, {BackgroundTransparency=0}):Play();
					end
					refreshText();
				end);
				totalH = totalH + 18;
			end
			OptsScroll.Size = UDim2.new(1, 0, 0, math.min(totalH, 90));
		end
		SelAll.MouseButton1Click:Connect(function()
			MDM._selected = table.clone(settings.options);
			buildOpts(SearchRow.Text);
			refreshText();
		end);
		DeselAll.MouseButton1Click:Connect(function()
			MDM._selected = {};
			buildOpts(SearchRow.Text);
			refreshText();
		end);
		local mdOpen2 = false;
		Header.MouseButton1Click:Connect(function()
			mdOpen2 = not mdOpen2;
			OptsScroll.Visible = mdOpen2;
			SearchRow.Visible = mdOpen2;
			SARow2.Visible = mdOpen2;
			TweenService:Create(Arrow2, Tween.smooth, {Rotation=((mdOpen2 and 180) or 0)}):Play();
			if mdOpen2 then
				buildOpts("");
			end
		end);
		SearchRow:GetPropertyChangedSignal("Text"):Connect(function()
			buildOpts(SearchRow.Text);
		end);
		local sv2 = Library._config._flags[settings.flag];
		if (type(sv2) == "table") then
			MDM._selected = table.clone(sv2);
			CurText.Text = ((#sv2 > 0) and table.concat(sv2, ", ")) or "None";
		end
		MDM.SetSelected = function(_, sel)
			MDM._selected = sel;
			buildOpts("");
			refreshText();
		end;
		MDM.GetSelected = function()
			return table.clone(MDM._selected);
		end;
		MDM.SetOptions = function(_, opts)
			settings.options = opts;
			if mdOpen2 then
				buildOpts("");
			end
		end;
		lib:register_element({tab_name=tab_title,module_name=(settings.flag or "?"),element_type="multidropdown",element_title=(settings.title or "Multi-Select"),get_frame_fn=function()
			return MDFrame;
		end,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
		return MDM;
	end;
	ModuleManager.create_progressbar = function(self, settings)
		local lo = nextLayoutOrder(Options);
		local PBM = {_value=math.clamp(settings.value or 0, 0, 100)};
		local PBFrame = Instance.new("Frame");
		PBFrame.BackgroundTransparency = 1;
		PBFrame.Size = UDim2.new(0, 207, 0, 30);
		PBFrame.BorderSizePixel = 0;
		PBFrame.LayoutOrder = lo;
		PBFrame.Parent = Options;
		local PBTitle = Instance.new("TextLabel");
		PBTitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold);
		PBTitle.TextColor3 = Color3.fromRGB(255, 255, 255);
		PBTitle.TextTransparency = 0.15;
		PBTitle.Text = settings.title or "Progress";
		PBTitle.Size = UDim2.new(1, -40, 0, 13);
		PBTitle.BackgroundTransparency = 1;
		PBTitle.TextXAlignment = Enum.TextXAlignment.Left;
		PBTitle.TextSize = 11;
		PBTitle.Parent = PBFrame;
		local PctLbl = Instance.new("TextLabel");
		PctLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold);
		PctLbl.TextColor3 = Themes[Library._current_theme].Accent;
		PctLbl.TextSize = 10;
		PctLbl.Text = PBM._value .. "%";
		PctLbl.Size = UDim2.new(0, 38, 0, 13);
		PctLbl.AnchorPoint = Vector2.new(1, 0);
		PctLbl.Position = UDim2.new(1, 0, 0, 0);
		PctLbl.BackgroundTransparency = 1;
		PctLbl.TextXAlignment = Enum.TextXAlignment.Right;
		PctLbl.Parent = PBFrame;
		local TrackBG = Instance.new("Frame");
		TrackBG.Size = UDim2.new(1, 0, 0, 6);
		TrackBG.Position = UDim2.new(0, 0, 0, 18);
		TrackBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		TrackBG.BackgroundTransparency = 0.87;
		TrackBG.BorderSizePixel = 0;
		TrackBG.Parent = PBFrame;
		local TBCorner2 = Instance.new("UICorner");
		TBCorner2.CornerRadius = UDim.new(1, 0);
		TBCorner2.Parent = TrackBG;
		local Fill = Instance.new("Frame");
		Fill.Size = UDim2.new(PBM._value / 100, 0, 1, 0);
		Fill.BackgroundColor3 = Themes[Library._current_theme].Accent;
		Fill.BorderSizePixel = 0;
		Fill.Parent = TrackBG;
		table.insert(lib._themed_elements.ProgressFills, Fill);
		local FCorner2 = Instance.new("UICorner");
		FCorner2.CornerRadius = UDim.new(1, 0);
		FCorner2.Parent = Fill;
		PBM.SetValue = function(_, val)
			val = math.clamp(val, 0, 100);
			PBM._value = val;
			TweenService:Create(Fill, Tween.smooth, {Size=UDim2.new(val / 100, 0, 1, 0)}):Play();
			PctLbl.Text = val .. "%";
			if settings.callback then
				settings.callback(val);
			end
		end;
		PBM.GetValue = function()
			return PBM._value;
		end;
		lib:register_element({tab_name=tab_title,module_name=(settings.flag or "?"),element_type="progressbar",element_title=(settings.title or "Progress"),get_frame_fn=function()
			return PBFrame;
		end,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
		return PBM;
	end;
	ModuleManager.create_status = function(self, settings)
		local lo = nextLayoutOrder(Options);
		local SM = {_status=(settings.status or "Enabled")};
		local SFrame = Instance.new("Frame");
		SFrame.BackgroundColor3 = Color3.fromRGB(28, 35, 48);
		SFrame.BackgroundTransparency = 0.05;
		SFrame.Size = UDim2.new(0, 207, 0, 22);
		SFrame.BorderSizePixel = 0;
		SFrame.LayoutOrder = lo;
		SFrame.Parent = Options;
		local SCorner2 = Instance.new("UICorner");
		SCorner2.CornerRadius = UDim.new(0, 5);
		SCorner2.Parent = SFrame;
		local SDot = Instance.new("Frame");
		SDot.Name = "SDot";
		SDot.Size = UDim2.fromOffset(7, 7);
		SDot.AnchorPoint = Vector2.new(0, 0.5);
		SDot.Position = UDim2.new(0, 10, 0.5, 0);
		SDot.BackgroundColor3 = StatusColors[SM._status] or Themes[Library._current_theme].Accent;
		SDot.BorderSizePixel = 0;
		SDot.Parent = SFrame;
		local SDotCorner = Instance.new("UICorner");
		SDotCorner.CornerRadius = UDim.new(1, 0);
		SDotCorner.Parent = SDot;
		local STitleLbl = Instance.new("TextLabel");
		STitleLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold);
		STitleLbl.TextColor3 = Color3.fromRGB(255, 255, 255);
		STitleLbl.TextTransparency = 0.15;
		STitleLbl.Text = settings.title or "Status";
		STitleLbl.Size = UDim2.new(0, 90, 1, 0);
		STitleLbl.Position = UDim2.new(0, 23, 0, 0);
		STitleLbl.BackgroundTransparency = 1;
		STitleLbl.TextXAlignment = Enum.TextXAlignment.Left;
		STitleLbl.TextSize = 11;
		STitleLbl.Parent = SFrame;
		local STextLbl = Instance.new("TextLabel");
		STextLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular);
		STextLbl.TextColor3 = StatusColors[SM._status] or Themes[Library._current_theme].Accent;
		STextLbl.TextTransparency = 0.1;
		STextLbl.Text = settings.status or "Enabled";
		STextLbl.Size = UDim2.new(1, -120, 1, 0);
		STextLbl.AnchorPoint = Vector2.new(1, 0.5);
		STextLbl.Position = UDim2.new(1, -10, 0.5, 0);
		STextLbl.BackgroundTransparency = 1;
		STextLbl.TextXAlignment = Enum.TextXAlignment.Right;
		STextLbl.TextSize = 10;
		STextLbl.Parent = SFrame;
		local loadConn2 = nil;
		SM.SetStatus = function(_, status, text)
			SM._status = status;
			if loadConn2 then
				loadConn2:Disconnect();
				loadConn2 = nil;
			end
			SDot.BackgroundTransparency = 0;
			local col = StatusColors[status] or Themes[Library._current_theme].Accent;
			TweenService:Create(SDot, Tween.smooth, {BackgroundColor3=col}):Play();
			TweenService:Create(STextLbl, Tween.smooth, {TextColor3=col}):Play();
			STextLbl.Text = text or status;
			if (status == "Loading") then
				local t2 = 0;
				loadConn2 = RunService.Heartbeat:Connect(function(dt)
					t2 = t2 + dt;
					SDot.BackgroundTransparency = math.abs(math.sin(t2 * 2.5));
				end);
			end
		end;
		if (settings.status == "Loading") then
			SM:SetStatus("Loading", settings.text or "Loading...");
		end
		lib:register_element({tab_name=tab_title,module_name=(settings.flag or settings.title or "?"),element_type="status",element_title=(settings.title or "Status"),get_frame_fn=function()
			return SFrame;
		end,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
		return SM;
	end;
	ModuleManager.create_buttongroup = function(self, settings)
		local lo = nextLayoutOrder(Options);
		local BGM = {_buttons={}};
		local Outer = Instance.new("Frame");
		Outer.BackgroundTransparency = 1;
		Outer.Size = UDim2.new(0, 207, 0, 0);
		Outer.AutomaticSize = Enum.AutomaticSize.Y;
		Outer.BorderSizePixel = 0;
		Outer.LayoutOrder = lo;
		Outer.Parent = Options;
		local OL4 = Instance.new("UIListLayout");
		OL4.Padding = UDim.new(0, 4);
		OL4.SortOrder = Enum.SortOrder.LayoutOrder;
		OL4.Parent = Outer;
		if settings.title then
			local TL2 = Instance.new("TextLabel");
			TL2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold);
			TL2.TextColor3 = Color3.fromRGB(255, 255, 255);
			TL2.TextTransparency = 0.15;
			TL2.Text = settings.title;
			TL2.TextSize = 11;
			TL2.Size = UDim2.new(1, 0, 0, 13);
			TL2.BackgroundTransparency = 1;
			TL2.TextXAlignment = Enum.TextXAlignment.Left;
			TL2.LayoutOrder = 1;
			TL2.Parent = Outer;
		end
		local btnDefs = settings.buttons or {};
		local count = math.max(1, #btnDefs);
		local btnW = math.floor((207 - (4 * (count - 1))) / count);
		local BtnRow2 = Instance.new("Frame");
		BtnRow2.BackgroundTransparency = 1;
		BtnRow2.Size = UDim2.new(1, 0, 0, 26);
		BtnRow2.LayoutOrder = 2;
		BtnRow2.Parent = Outer;
		local BRL2 = Instance.new("UIListLayout");
		BRL2.FillDirection = Enum.FillDirection.Horizontal;
		BRL2.Padding = UDim.new(0, 4);
		BRL2.SortOrder = Enum.SortOrder.LayoutOrder;
		BRL2.Parent = BtnRow2;
		for idx, def in ipairs(btnDefs) do
			local Btn2 = Instance.new("TextButton");
			Btn2.Text = def.text or ("Btn " .. idx);
			Btn2.TextSize = 10;
			Btn2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold);
			Btn2.TextColor3 = Color3.fromRGB(255, 255, 255);
			Btn2.Size = UDim2.new(0, btnW, 1, 0);
			Btn2.BackgroundColor3 = Themes[Library._current_theme].Accent;
			Btn2.BackgroundTransparency = 0.35;
			Btn2.BorderSizePixel = 0;
			Btn2.AutoButtonColor = false;
			Btn2.LayoutOrder = idx;
			Btn2.Parent = BtnRow2;
			table.insert(lib._themed_elements.AccentButtons, Btn2);
			local BC2 = Instance.new("UICorner");
			BC2.CornerRadius = UDim.new(0, 5);
			BC2.Parent = Btn2;
			Btn2.MouseEnter:Connect(function()
				TweenService:Create(Btn2, Tween.fast, {BackgroundTransparency=0.1}):Play();
			end);
			Btn2.MouseLeave:Connect(function()
				TweenService:Create(Btn2, Tween.fast, {BackgroundTransparency=0.35}):Play();
			end);
			Btn2.MouseButton1Down:Connect(function()
				TweenService:Create(Btn2, Tween.snap_in, {BackgroundTransparency=0.6,Size=UDim2.new(0, btnW - 2, 1, 0)}):Play();
			end);
			Btn2.MouseButton1Up:Connect(function()
				TweenService:Create(Btn2, Tween.spring, {BackgroundTransparency=0.1,Size=UDim2.new(0, btnW, 1, 0)}):Play();
			end);
			Btn2.MouseButton1Click:Connect(function()
				if def.callback then
					def.callback();
				end
			end);
			BGM._buttons[idx] = Btn2;
		end
		BGM.SetButtonText = function(_, i, t)
			if BGM._buttons[i] then
				BGM._buttons[i].Text = t;
			end
		end;
		BGM.SetButtonCallback = function(_, i, cb)
			if btnDefs[i] then
				btnDefs[i].callback = cb;
			end
		end;
		lib:register_element({tab_name=tab_title,module_name=(settings.title or "?"),element_type="buttongroup",element_title=(settings.title or "Button Group"),get_frame_fn=function()
			return Outer;
		end,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
		return BGM;
	end;
	ModuleManager.create_image = function(self, settings)
		local lo = nextLayoutOrder(Options);
		local IM = {};
		local Wrap = Instance.new("Frame");
		Wrap.BackgroundTransparency = 1;
		Wrap.Size = UDim2.new(0, 207, 0, 0);
		Wrap.AutomaticSize = Enum.AutomaticSize.Y;
		Wrap.BorderSizePixel = 0;
		Wrap.LayoutOrder = lo;
		Wrap.Parent = Options;
		local WL = Instance.new("UIListLayout");
		WL.Padding = UDim.new(0, 4);
		WL.SortOrder = Enum.SortOrder.LayoutOrder;
		WL.HorizontalAlignment = Enum.HorizontalAlignment.Center;
		WL.Parent = Wrap;
		if settings.title then
			local TL3 = Instance.new("TextLabel");
			TL3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold);
			TL3.TextColor3 = Color3.fromRGB(255, 255, 255);
			TL3.TextTransparency = 0.15;
			TL3.Text = settings.title;
			TL3.TextSize = 11;
			TL3.Size = UDim2.new(1, 0, 0, 13);
			TL3.BackgroundTransparency = 1;
			TL3.TextXAlignment = Enum.TextXAlignment.Left;
			TL3.LayoutOrder = 1;
			TL3.Parent = Wrap;
		end
		local Img = Instance.new("ImageLabel");
		Img.Name = "Image";
		Img.Image = settings.image or "";
		Img.ScaleType = Enum.ScaleType.Fit;
		Img.BackgroundColor3 = Color3.fromRGB(18, 22, 32);
		Img.BackgroundTransparency = 0.2;
		Img.BorderSizePixel = 0;
		Img.Size = settings.size or UDim2.new(1, 0, 0, 100);
		Img.LayoutOrder = 2;
		Img.Parent = Wrap;
		local ImgC = Instance.new("UICorner");
		ImgC.CornerRadius = UDim.new(0, settings.cornerRadius or 6);
		ImgC.Parent = Img;
		IM.SetImage = function(_, id)
			Img.Image = id;
		end;
		IM.SetSize = function(_, s)
			Img.Size = s;
		end;
		lib:register_element({tab_name=tab_title,module_name=(settings.title or "?"),element_type="image",element_title=(settings.title or "Image"),get_frame_fn=function()
			return Wrap;
		end,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
		return IM;
	end;
	ModuleManager.create_keybinddisplay = function(self, settings)
		local lo = nextLayoutOrder(Options);
		local KDM = {_flags=(settings.binds or {})};
		local KDFrame = Instance.new("Frame");
		KDFrame.BackgroundColor3 = Color3.fromRGB(28, 35, 48);
		KDFrame.BackgroundTransparency = 0.05;
		KDFrame.Size = UDim2.new(0, 207, 0, 0);
		KDFrame.AutomaticSize = Enum.AutomaticSize.Y;
		KDFrame.BorderSizePixel = 0;
		KDFrame.LayoutOrder = lo;
		KDFrame.Parent = Options;
		local KDCorner = Instance.new("UICorner");
		KDCorner.CornerRadius = UDim.new(0, 5);
		KDCorner.Parent = KDFrame;
		local KDPad = Instance.new("UIPadding");
		KDPad.PaddingTop = UDim.new(0, 6);
		KDPad.PaddingBottom = UDim.new(0, 6);
		KDPad.PaddingLeft = UDim.new(0, 10);
		KDPad.PaddingRight = UDim.new(0, 10);
		KDPad.Parent = KDFrame;
		local KDLayout = Instance.new("UIListLayout");
		KDLayout.Padding = UDim.new(0, 4);
		KDLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		KDLayout.Parent = KDFrame;
		local KDTitleLbl = Instance.new("TextLabel");
		KDTitleLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold);
		KDTitleLbl.TextColor3 = Color3.fromRGB(215, 215, 215);
		KDTitleLbl.TextSize = 11;
		KDTitleLbl.Text = settings.title or "Active Binds";
		KDTitleLbl.Size = UDim2.new(1, 0, 0, 13);
		KDTitleLbl.BackgroundTransparency = 1;
		KDTitleLbl.TextXAlignment = Enum.TextXAlignment.Left;
		KDTitleLbl.LayoutOrder = 1;
		KDTitleLbl.Parent = KDFrame;
		local rowCache2 = {};
		local function rebuildKD()
			for _, r in rowCache2 do
				if r.Parent then
					r:Destroy();
				end
			end
			rowCache2 = {};
			local lo2 = 2;
			for _, flag in ipairs(KDM._flags) do
				local kb = Library._config._keybinds[flag];
				local kbStr = (kb and string.gsub(tostring(kb), "Enum%.KeyCode%.", "")) or "None";
				local Row2 = Instance.new("Frame");
				Row2.BackgroundTransparency = 1;
				Row2.Size = UDim2.new(1, 0, 0, 13);
				Row2.LayoutOrder = lo2;
				lo2 = lo2 + 1;
				Row2.Parent = KDFrame;
				table.insert(rowCache2, Row2);
				local FL = Instance.new("TextLabel");
				FL.Text = flag;
				FL.TextSize = 10;
				FL.TextColor3 = Color3.fromRGB(175, 175, 195);
				FL.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json");
				FL.Size = UDim2.new(1, -50, 1, 0);
				FL.BackgroundTransparency = 1;
				FL.TextXAlignment = Enum.TextXAlignment.Left;
				FL.Parent = Row2;
				local KL = Instance.new("TextLabel");
				KL.Text = kbStr;
				KL.TextSize = 10;
				KL.TextColor3 = Themes[Library._current_theme].Accent;
				KL.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold);
				KL.Size = UDim2.new(0, 48, 1, 0);
				KL.AnchorPoint = Vector2.new(1, 0);
				KL.Position = UDim2.new(1, 0, 0, 0);
				KL.BackgroundTransparency = 1;
				KL.TextXAlignment = Enum.TextXAlignment.Right;
				KL.Parent = Row2;
			end
		end
		rebuildKD();
		local hbAccum = 0;
		local _kdConn = RunService.Heartbeat:Connect(function(dt)
			hbAccum = hbAccum + dt;
			if (hbAccum >= 2) then
				hbAccum = 0;
				rebuildKD();
			end
		end);
		KDM.SetBinds = function(_, flags)
			KDM._flags = flags;
			rebuildKD();
		end;
		KDM.Refresh = function()
			rebuildKD();
		end;
		KDM.Destroy = function()
			if _kdConn then
				_kdConn:Disconnect();
				_kdConn = nil;
			end
			KDFrame:Destroy();
		end;
		lib:register_element({tab_name=tab_title,module_name=(settings.title or "?"),element_type="keybinddisplay",element_title=(settings.title or "Keybind Display"),get_frame_fn=function()
			return KDFrame;
		end,switch_tab_fn=switch_to_this_tab,open_module_fn=open_this_module});
		return KDM;
	end;
end;
Library.create_settings_tab = function(self)
	local lib = self;
	local SettingsTab = self:create_tab("Settings", "rbxassetid://79095934438045");
	local ThemeMod = SettingsTab:create_module({title="Themes",description="Presets, editor, save & load",flag="_stg_theme",section="left",callback=function()
	end});
	local presetNames = {};
	for name in pairs(Themes) do
		table.insert(presetNames, name);
	end
	table.sort(presetNames);
	ThemeMod:create_dropdown({title="Theme Preset",flag="SelectedTheme",options=presetNames,multi_dropdown=false,maximum_options=#presetNames,callback=function(name)
		lib:apply_theme(name);
		local meta = ThemeMeta[name];
		Library.SendNotification({title=("Theme · " .. name),text=((meta and meta.desc) or name),duration=2,type="info"});
	end});
	ThemeMod:create_divider({showtopic=true,title="Live Editor"});
	local themeSlots = {{key="Background",label="Background"},{key="ModuleBackground",label="Module BG"},{key="Accent",label="Accent"},{key="SecondaryAccent",label="Secondary Accent"},{key="Text",label="Text"},{key="TextDark",label="Dim Text"},{key="Stroke",label="Stroke / Border"}};
	local themeEditorCPs = {};
	for _, slot in ipairs(themeSlots) do
		local cp = ThemeMod:create_colorpicker({title=slot.label,flag=("_themeEdit_" .. slot.key),default=Themes[Library._current_theme][slot.key],callback=function(color)
			if Themes[Library._current_theme] then
				Themes[Library._current_theme][slot.key] = color;
				lib:apply_theme(Library._current_theme);
			end
		end});
		themeEditorCPs[slot.key] = cp;
	end
	ThemeMod:create_divider({showtopic=true,title="Save / Manage"});
	ThemeMod:create_textbox({title="Theme Name",flag="_newThemeName",placeholder="My Theme",callback=function()
	end});
	ThemeMod:create_buttongroup({buttons={{text="Save",callback=function()
		local name = Library._config._flags['_newThemeName'] or "";
		if (name == "") then
			Library.SendNotification({title="Name Required",text="Enter a name for the theme.",duration=2.5,type="warning"});
			return;
		end
		local clone = {};
		for k, v in pairs(Themes[Library._current_theme]) do
			clone[k] = v;
		end
		Themes[name] = clone;
		ThemeMeta[name] = {category="Custom",desc="User theme"};
		Config:save_theme(name, clone);
		Library.SendNotification({title="Theme Saved",text=name,duration=2.5,type="success"});
	end},{text="Delete",callback=function()
		local name = Library._config._flags['_newThemeName'] or "";
		if not Themes[name] then
			Library.SendNotification({title="Not Found",text=('"' .. name .. '" doesn\'t exist.'),duration=2.5,type="error"});
			return;
		end
		if (ThemeMeta[name] and (ThemeMeta[name].category ~= "Custom")) then
			Library.SendNotification({title="Protected",text="Built-in themes can't be deleted.",duration=2.5,type="warning"});
			return;
		end
		Themes[name] = nil;
		ThemeMeta[name] = nil;
		Config:delete_theme(name);
		Library.SendNotification({title="Deleted",text=name,duration=2.5,type="warning"});
	end},{text="Dupe",callback=function()
		local src = Library._current_theme;
		local dest = Library._config._flags['_newThemeName'] or "";
		if (dest == "") then
			Library.SendNotification({title="Name Required",text="Enter a name for the copy.",duration=2.5,type="warning"});
			return;
		end
		local clone = {};
		for k, v in pairs(Themes[src]) do
			clone[k] = v;
		end
		Themes[dest] = clone;
		ThemeMeta[dest] = {category="Custom",desc=("Copy of " .. src)};
		Config:save_theme(dest, clone);
		Library.SendNotification({title="Duplicated",text=(src .. " → " .. dest),duration=2.5,type="success"});
	end}}});
	for _, savedName in ipairs(Config:list_themes()) do
		if not Themes[savedName] then
			local td = Config:load_theme(savedName);
			if td then
				Themes[savedName] = td;
				ThemeMeta[savedName] = {category="Custom",desc="User theme"};
			end
		end
	end
	local IfaceMod = SettingsTab:create_module({title="Interface",description="Animations, blur, opacity",flag="_stg_iface",section="left",callback=function()
	end});
	IfaceMod:create_checkbox({title="Acrylic Blur",flag="_blur_on",callback=function(state)
		Library._blur_enabled = state;
		if lib._blur_instance then
			lib._blur_instance:change_visiblity(state);
		end
	end});
	if (Library._config._flags['_blur_on'] == nil) then
		Library._config._flags['_blur_on'] = true;
	end
	IfaceMod:create_slider({title="Background Opacity",flag="_bg_opacity",minimum_value=0,maximum_value=100,value=4,round_number=true,callback=function(val)
		if lib._themed_elements.Container then
			lib._themed_elements.Container.BackgroundTransparency = val / 100;
		end
	end});
	IfaceMod:create_dropdown({title="Animation Speed",flag="_anim_speed",options={"Slow","Normal","Fast","Instant"},multi_dropdown=false,maximum_options=4,callback=function(speed)
		Library._animation_speed = speed;
		if (speed == "Slow") then
			Tween.smooth = TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.Out);
		elseif (speed == "Normal") then
			Tween.smooth = TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out);
		elseif (speed == "Fast") then
			Tween.smooth = TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.Out);
		elseif (speed == "Instant") then
			Tween.smooth = TweenInfo.new(0.04, Enum.EasingStyle.Linear, Enum.EasingDirection.Out);
		end
	end});
	local CfgMod = SettingsTab:create_module({title="Config",description="Save, load, manage configs",flag="_stg_cfg",section="right",callback=function()
	end});
	CfgMod:create_textbox({title="Config Name",flag="_cfgName",placeholder=tostring(game.PlaceId),callback=function()
	end});
	local function getConfigList()
		local list = Config:list_named();
		return ((#list > 0) and list) or {"(none)"};
	end
	local cfgDropdown = CfgMod:create_dropdown({title="Saved Configs",flag="_selCfg",options=getConfigList(),multi_dropdown=false,maximum_options=30,callback=function()
	end});
	local function refreshCfgDropdown()
		cfgDropdown = cfgDropdown:New({title="Saved Configs",flag="_selCfg",options=getConfigList(),multi_dropdown=false,maximum_options=30,callback=function()
		end});
	end
	CfgMod:create_buttongroup({buttons={{text="Save",callback=function()
		local name = Library._config._flags['_cfgName'] or "";
		if (name == "") then
			name = tostring(game.PlaceId);
		end
		local snap = {_flags=Library._config._flags,_keybinds=Library._config._keybinds,_theme=Library._current_theme,_window_x=((lib._themed_elements.Container and lib._themed_elements.Container.Position.X.Offset) or 0),_window_y=((lib._themed_elements.Container and lib._themed_elements.Container.Position.Y.Offset) or 0)};
		Config:save_named(name, snap);
		Library.SendNotification({title="Saved",text=name,duration=2.5,type="success"});
		refreshCfgDropdown();
	end},{text="Load",callback=function()
		local name = Library._config._flags['_selCfg'] or "";
		if ((name == "") or (name == "(none)")) then
			Library.SendNotification({title="No Config",text="Select a config first.",duration=2.5,type="warning"});
			return;
		end
		local data = Config:load_named(name);
		if not data then
			Library.SendNotification({title="Load Failed",text=name,duration=2.5,type="error"});
			return;
		end
		if data._flags then
			Library._config._flags = data._flags;
		end
		if data._keybinds then
			Library._config._keybinds = data._keybinds;
		end
		if data._theme then
			lib:apply_theme(data._theme);
		end
		Config:save(game.GameId, Library._config);
		Library.SendNotification({title="Loaded",text=name,duration=2.5,type="success"});
	end},{text="Delete",callback=function()
		local name = Library._config._flags['_selCfg'] or "";
		if ((name == "") or (name == "(none)")) then
			return;
		end
		Config:delete_named(name);
		Library.SendNotification({title="Deleted",text=name,duration=2.5,type="warning"});
		refreshCfgDropdown();
	end}}});
	CfgMod:create_divider({showtopic=true,title="Duplicate"});
	CfgMod:create_button({buttonText="Duplicate Selected",callback=function()
		local src = Library._config._flags['_selCfg'] or "";
		local dest = Library._config._flags['_cfgName'] or "";
		if ((src == "") or (src == "(none)")) then
			Library.SendNotification({title="No Source",text="Select a config to copy.",duration=2.5,type="warning"});
			return;
		end
		if (dest == "") then
			Library.SendNotification({title="No Name",text="Enter a name for the copy.",duration=2.5,type="warning"});
			return;
		end
		local data = Config:load_named(src);
		if not data then
			return;
		end
		Config:save_named(dest, data);
		Library.SendNotification({title="Duplicated",text=(src .. " → " .. dest),duration=2.5,type="success"});
		refreshCfgDropdown();
	end});
	local NotifMod2 = SettingsTab:create_module({title="Notifications",description="Configure alert behavior",flag="_stg_notif",section="right",callback=function()
	end});
	NotifMod2:create_checkbox({title="Enable Notifications",flag="_notif_on",callback=function(state)
		Library._notification_settings.enabled = state;
	end});
	if (Library._config._flags['_notif_on'] == nil) then
		Library._config._flags['_notif_on'] = true;
		Library._notification_settings.enabled = true;
	end
	NotifMod2:create_slider({title="Duration (seconds)",flag="_notif_dur",minimum_value=1,maximum_value=15,value=5,round_number=true,callback=function(val)
		Library._notification_settings.duration = val;
	end});
	NotifMod2:create_progressbar({title="Last Notification",value=0});
	NotifMod2:create_buttongroup({buttons={{text="Test ✓",callback=function()
		Library.SendNotification({title="Test Success",text="Notifications working.",duration=3,type="success"});
	end},{text="Test ✕",callback=function()
		Library.SendNotification({title="Test Error",text="This is an error notification.",duration=3,type="error"});
	end},{text="Test ⚠",callback=function()
		Library.SendNotification({title="Test Warning",text="This is a warning notification.",duration=3,type="warning"});
	end}}});
	local SearchInfoMod = SettingsTab:create_module({title="Search",description="Global search system guide",flag="_stg_search",section="right",callback=function()
	end});
	SearchInfoMod:create_status({title="Search Engine",status="Enabled",text="Active"});
	SearchInfoMod:create_label({title="Keyboard Shortcuts",text="Ctrl + F  —  Open / close\nEscape     —  Close\nClick result  —  Jump to element"});
	SearchInfoMod:create_label({title="What It Searches",text="Tabs · Modules · Labels · Buttons · Checkboxes · Sliders · Dropdowns · Color pickers · Keybinds · Multi-dropdowns · Progress bars · Status indicators · Button groups · Images"});
	SearchInfoMod:create_button({buttonText="Open Search (Ctrl+F)",callback=function()
		local container = lib._themed_elements.Container;
		if not container then
			return;
		end
		local handler = container:FindFirstChild("Handler");
		if not handler then
			return;
		end
		local sbf = handler:FindFirstChild("SearchBarFrame");
		if not sbf then
			sbf = container:FindFirstChild("SearchBarFrame", true);
		end
		if not sbf then
			return;
		end
		local sb = sbf:FindFirstChildWhichIsA("TextBox");
		if sb then
			sb:CaptureFocus();
		end
	end});
end;
local Flow = {};
Flow.CreateWindow = function(self, settings)
	settings = settings or {};
	local title = settings.Title or settings.title or "Flow";
	local theme = settings.Theme or settings.theme;
	if (theme and Themes[theme]) then
		Library._current_theme = theme;
	end
	local window = Library.new(title);
	if (theme and Themes[theme]) then
		Library._config._theme = theme;
	end
	return window;
end;
Flow.SendNotification = function(self, settings)
	Library.SendNotification(settings);
end;
Flow._Library = Library;
Flow._Themes = Themes;
return Flow;
