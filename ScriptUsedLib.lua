--//Leaked by darksoldierzzzz\\--



local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/linemaster2/esp-library/main/library.lua"))();











ESP.Enabled = false;



ESP.ShowBox = false;



ESP.ShowName = false;



ESP.ShowHealth = false;



ESP.ShowTracer = false;



ESP.ShowDistance = false;



ESP.ShowSkeletons = false;







    local ESP_SETTINGS = {



        BoxOutlineColor = Color3.new(1, 1, 1),



        BoxColor = Color3.new(1, 1, 1),



        NameColor = Color3.new(1, 1, 1),



        HealthOutlineColor = Color3.new(0, 0, 0),



        HealthHighColor = Color3.new(0, 1, 0),



        HealthLowColor = Color3.new(1, 0, 0),



        CharSize = Vector2.new(4, 6),



        Teamcheck = false,



        WallCheck = false,



        Enabled = false,



        ShowBox = false,



        BoxType = "2D",



        ShowName = false,



        ShowHealth = false,



        ShowDistance = false,



        ShowSkeletons = false,



        ShowTracer = false,



        TracerColor = Color3.new(1, 1, 1), 



        TracerThickness = 2,



        SkeletonsColor = Color3.new(1, 1, 1),



        TracerPosition = "Bottom",



    }







local fov = 100

local RunService = game:GetService("RunService")

local UserInputService = game:GetService("UserInputService")

local Players = game:GetService("Players")

local Cam = game.Workspace.CurrentCamera



local FOVring = Drawing.new("Circle")

FOVring.Visible = false

FOVring.Thickness = 2

FOVring.Color = Color3.fromRGB(255, 0, 0) 

FOVring.Filled = false 

FOVring.Radius = fov

FOVring.Position = Cam.ViewportSize / 2



local function updateDrawings()

    local camViewportSize = Cam.ViewportSize

    FOVring.Position = camViewportSize / 2

end



local function onKeyDown(input)

    if input.KeyCode == Enum.KeyCode.Delete then

        RunService:UnbindFromRenderStep("FOVUpdate")

        FOVring:Remove()

    end

end









local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/tbao143/thaibao/refs/heads/main/Orionlibrary')))()



local Window = OrionLib:MakeWindow({Name = "OneTap Alpha Test Free", HidePremium = false, SaveConfig = true, IntroText = " SCRIPT LOADING...SCRIPT LOADING... SCRIPT LOADING...SCRIPT LOADING...SCRIPT LOADING...SCRIPT LOADING...SCRIPT LOADING...SCRIPT LOADING...SCRIPT LOADING...SCRIPT LOADING..."})





local Tab = Window:MakeTab({

	Name = "Main",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})



local Section = Tab:AddSection({

	Name = "Welcome To onetap"

})



Tab:AddLabel("Status: Undetected")

Tab:AddLabel("Congratulations! You have a special version!")





local Tab = Window:MakeTab({

	Name = "Aiming",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})



local Section = Tab:AddSection({

	Name = "Aim"

})





Tab:AddButton({

	Name = "Silent Aim",

	Callback = function()

      		function getplrsname() for i,v in pairs(game:GetChildren()) do if v.ClassName == "Players" then return v.Name end end end local players = getplrsname() local plr = game[players].LocalPlayer coroutine.resume(coroutine.create(function() while wait(1) do coroutine.resume(coroutine.create(function() for _,v in pairs(game[players]:GetPlayers()) do if v.Name ~= plr.Name and v.Character then v.Character.RightUpperLeg.CanCollide = false v.Character.RightUpperLeg.Transparency = 75 v.Character.RightUpperLeg.Size = Vector3.new(21,21,21) v.Character.LeftUpperLeg.CanCollide = false v.Character.LeftUpperLeg.Transparency = 75 v.Character.LeftUpperLeg.Size = Vector3.new(21,21,21) v.Character.HeadHB.CanCollide = false v.Character.HeadHB.Transparency = 75 v.Character.HeadHB.Size = Vector3.new(21,21,21) v.Character.HumanoidRootPart.CanCollide = false v.Character.HumanoidRootPart.Transparency = 75 v.Character.HumanoidRootPart.Size = Vector3.new(21,21,21) end end end)) end end))

  	end    

})



Tab:AddToggle({

	Name = "coming soon...",

	Default = false,

	Callback = function(Value)

		loadstring(game:HttpGet('https://pastebin.com/raw/SkFKRQ1p'))()

	end    

})





local Section = Tab:AddSection({

	Name = "Gun Mod"

})



Tab:AddButton({

	Name = "Inf Ammo",

	Callback = function()

      		while wait() do	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999

end

  	end    

})



local replicationstorage = game.ReplicatedStorage



Tab:AddButton({

	Name = "Rapid fire",

	Callback = function()

    for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do

 if v.Name == "FireRate" then

       v.Value = 0.05

   end

end

  	end    

})





local Tab = Window:MakeTab({

	Name = "Visual",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})



Tab:AddToggle({

	Name = "Enable Esp",

	Default = false,

	Callback = function(Value)

		ESP.Enabled = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Name Enemy",

	Default = false,

	Callback = function(Value)

		ESP.ShowName = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Box Enemy",

	Default = false,

	Callback = function(Value)

		ESP.ShowBox = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Tracers Enemy",

	Default = false,

	Callback = function(Value)

		ESP.ShowTracer = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Health Enemy",

	Default = false,

	Callback = function(Value)

		ESP.ShowHealth = Value;

	end    

})



Tab:AddToggle({

	Name = "Show Enemy Skeleton",

	Default = false,

	Callback = function(Value)

		ESP.ShowSkeletons = Value;

	end    

})





Tab:AddToggle({

	Name = "TeamCheck",

	Default = false,

	Callback = function(Value)

		ESP.Teamcheck = Value;	

	end    

})



Tab:AddDropdown({

	Name = "Esp box Type",

	Default = "2D",

	Options = {"2D", "Corner Box Esp"},

	Callback = function(Value)

		 ESP.BoxType = Value

	end    

})



Tab:AddDropdown({

	Name = "Tracer position",

	Default = "Bottom",

	Options = {"Bottom", "Top", "Middle"},

	Callback = function(Value)

		ESP.TracerPosition = Value;

	end    

})







local Section = Tab:AddSection({

	Name = "POV fov"

})







Tab:AddToggle({

	Name = "Draw fov",

	Default = false,

	Callback = function(Value)

		FOVring.Visible = Value

	end    

})



Tab:AddToggle({

	Name = "Filled fov",

	Default = false,

	Callback = function(Value)

		FOVring.Filled = Value

	end    

})



Tab:AddSlider({

	Name = "fov Radius/Size",

	Min = 40,

	Max = 300,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "Radius",

	Callback = function(Value)

	FOVring.Radius = Value

	end    

})









Tab:AddColorpicker({

	Name = "fov Color",

	Default = Color3.fromRGB(255, 0, 0),

	Callback = function(Value)

		FOVring.Color = Value

	end	  

})



local Tab = Window:MakeTab({

	Name = "More",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})



Tab:AddButton({

	Name = "Rainbow Gun (Skin FE)",

	Callback = function()

      		local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)

  	end    

})



Tab:AddTextbox({

	Name = "HitBox This fuck not work",

	Default = "Limit 1 don't put 0",

	TextDisappear = true,

	Callback = function(Value)

		_G.HeadSize = Value

_G.Disabled = true

 

game:GetService('RunService').RenderStepped:connect(function()

if _G.Disabled then

for i,v in next, game:GetService('Players'):GetPlayers() do

if v.Name ~= game:GetService('Players').LocalPlayer.Name then

pcall(function()

v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)

v.Character.HumanoidRootPart.Transparency = 0.7

v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")

v.Character.HumanoidRootPart.Material = "Neon"

v.Character.HumanoidRootPart.CanCollide = false

end)

end

end

end

end)

	end	  

})



Tab:AddButton({

	Name = "Speed Hack (Beta)",

	Callback = function()

      		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50

  	end    

})



Tab:AddButton({

	Name = "kill all not my script",

	Callback = function()

      		loadstring(game:HttpGet("https://raw.githubusercontent.com/MisterGunXD/yes/main/rolve%3C3.lua"))();

  	end    

})







local Tab = Window:MakeTab({

	Name = "Gui",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})





Tab:AddLabel("Made By santeam")





Tab:AddButton({

	Name = "Destroy gui",

	Callback = function()

      		OrionLib:Destroy()

  	end    

})



OrionLib:Init()



