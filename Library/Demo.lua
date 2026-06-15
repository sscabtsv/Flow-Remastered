-- formatted weirdly for readability :)
-- srry :(
local Flow = loadstring(game:HttpGet("https://raw.githubusercontent.com/sscabtsv/Flow-Remastered/refs/heads/main/Library/Src.lua"))()

local Window = Flow:CreateWindow({
	Title = "Flow Demo", -- string
	Theme = "Midnight", -- string, choose from Markdowns/THEME_SYSTEM.md
})

local GeneralTab = Window:create_tab("General", "rbxassetid://107819132007001") -- tab name(required), icon(optional)

GeneralTab:create_label({
	title = "Welcome to Flow",
	text = "Use the search bar (top-right, or Ctrl+F) to jump to any setting.",
	section = "left", -- "left" or "right"
})

GeneralTab:create_button({
    title = "Quick Action",
    buttonText = "Send Notification",
    section = "left",
    callback = function()
        Flow:SendNotification({
            title = "Hi!", -- title of Notification (string)
            text = "Tab buttons work like this.", -- basically a subtext (string)
            duration = 3, -- how long the notification will last before disappearing if not stacking (number)
            type = "info" -- type of Notification (string)(success, loading, info, warning, error)
		})
	end,
})

local PlayerModule = GeneralTab:create_module({
    title = "Player",
    description = "Movement settings",
    flag = "PlayerModule", -- unique key, used for saving/searching
    section = "left",
    callback = function(enabled)
        print("Player module:", enabled)
    end,
})

PlayerModule:create_checkbox({
    title = "Infinite Jump",
    flag = "InfiniteJump",
    callback = function(state)
        print("Infinite Jump:", state)
    end,
})

PlayerModule:create_slider({
    title = "Walk Speed",
    flag = "WalkSpeed",
    minimum_value = 1, -- lowest value the slider will go
    maximum_value = 200,
    value = 16,
    round_number = true, -- (boolean), will allow decimals if false
    callback = function(val)
		local char = game.Players.LocalPlayer.Character
		if char then
		    char.Humanoid.WalkSpeed = val
		end
	end,
})

PlayerModule:create_dropdown({
	title = "Team Color",
	flag = "TeamColor",
	options = { "Red", "Blue", "Green", "Yellow" },
	multi_dropdown = false,
	maximum_options= 4,
	callback = function(val)
	    print("Team:", val)
	end,
})

PlayerModule:create_divider({
    showtopic = true,
    title = "Display"
})

PlayerModule:create_paragraph({
	title = "About",
	text = "Settings here affect your local client only.",
})

PlayerModule:create_textbox({
	title = "Nickname",
	flag = "Nickname",
	placeholder = "Enter a name...",
	callback = function(text)
	    print("Nickname:", text)
	end,
})

local NewTab = Window:create_tab("New Elements")

local ColorMod = NewTab:create_module({
	title = "Colors & Keybinds",
	flag = "ColorMod",
	section = "left",
	callback = function()
	    print("yes")
	end,
})

ColorMod:create_colorpicker({
	title = "Highlight Color",
	flag = "HighlightColor",
	default = Color3.fromRGB(130, 100, 255),
	callback = function(color)
	    print("Color changed")
	end,
})

ColorMod:create_keybind({
	title = "Sprint (Hold)",
	flag = "SprintBind",
	default = Enum.KeyCode.LeftShift,
	mode = "Hold",
	callback = function(active)
	    print("Sprinting:", active)
	end,
})

local AdvMod = NewTab:create_module({
	title = "Advanced Controls",
	flag = "AdvMod",
	section = "left",
	callback = function()
	    print("yes")
	end,
})

AdvMod:create_multidropdown({
	title = "Active Features",
	flag = "ActiveFeatures",
	options = { "ESP", "Aimbot", "Speed", "Fly", "Noclip" },
	default = { "ESP" },
	callback = function(selected)
	    print("Selected:", table.concat(selected, ", "))
	end,
})

local LoadBar = AdvMod:create_progressbar({
	title = "Loading",
	value = 0,
})
task.spawn(function()
	for i = 0, 100, 10 do
	    task.wait(0.1)
	    LoadBar:SetValue(i)
	end
end)

AdvMod:create_status({
    title="Server",
    status="Enabled",
    text="Connected"
})

local UIMod = NewTab:create_module({
	title = "UI Elements",
	flag = "UIMod",
	section = "right",
	callback = function()
	    print("yes")
	end,
})

UIMod:create_buttongroup({
	title = "Quick Actions",
	buttons = {
		{
		    text="A",
		    callback=function()
		        print("A")
		    end
		},
		{
		    text="B",
		    callback=function()
		        print("B")
		    end
		},
		{
		    text="C",
		    callback=function()
		        print("C")
		    end
		},
	},
})

UIMod:create_image({
    title = "Banner",
	image = "rbxassetid://107819132007001", -- image id
	size = UDim2.new(1, 0, 0, 80), -- size of the image
})

UIMod:create_keybinddisplay({
	title = "My Binds",
	binds = { "PlayerModule", "SprintBind" }, -- flags of any elements you want the keybind to control
})

local MiscTab = Window:create_tab("Misc")

local NotifMod = MiscTab:create_module({
	title = "Notifications",
	flag = "NotifMod",
	section = "left",
	callback = function() end,
})

NotifMod:create_buttongroup({
	buttons = {
		{
		    text = "Success",
		    callback = function()
		        Flow:SendNotification({
		            title = "Done",
		            text = "Task completed.",
		            type = "success"
		        })
		    end
		},
		{
		    text = "Error",
		    callback = function()
		        Flow:SendNotification({
		            title   "Error",
		            text = "Something failed.",
		            type = "error"
		        })
		    end
		},
		{
		    text = "Warning",
		    callback = function()
		        Flow:SendNotification({
		            title = "Careful",
		            text = "Heads up!",
		            type = "warning"
		        })
		    end
		},
	},
})

local ThemeMod = MiscTab:create_module({
	title = "Quick Themes",
	flag = "ThemeMod",
	section = "right",
	callback = function()
	    print("yes")
	end,
})

for _, name in ipairs({ "Midnight", "Cyber", "Ocean", "Sakura", "Crimson", "Glass" }) do
	ThemeMod:create_button({
		buttonText = name,
		callback = function()
		    Window:apply_theme(name)
		end,
	})
end

Window:load()

Flow:SendNotification({
  title = "Flow Ready",
	text = "RightShift toggles the UI. Ctrl+F opens search.",
	duration = 5,
	type = "info",
})
