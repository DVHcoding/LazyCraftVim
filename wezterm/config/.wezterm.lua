-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Tokyo Night"

config.font = wezterm.font("Hack Nerd Font", {
	weight = "Regular", -- hoặc có thể là "Medium", "Bold", v.v.
})

config.window_background_opacity = 0.85
config.macos_window_background_blur = 30
-- Set background image
local xdg_config_home = os.getenv("xdg_config_home")

local user_home = os.getenv("USERPROFILE")
config.window_background_image = user_home .. "/picture/swimsuit.png"
-- Optional: Adjust image rendering (hue, saturation, brightness)
config.window_background_image_hsb = {
	hue = 1.0,
	saturation = 1.0,
	brightness = 0.09, -- Slightly dim for better text readability
}

-- Ensure the image stretches to fill the window
config.background = {
	{
		source = {
			File = config.window_background_image,
		},
		-- Stretch to cover the entire window
		width = "100%",
		height = "100%",
		opacity = config.window_background_opacity, -- Match the window opacity
		-- Optional: Center the image if it doesn't fit perfectly
		hsb = config.window_background_image_hsb,
	},
}

-- Set the initial terminal size
config.initial_cols = 110 -- Số cột (số ký tự ngang)
config.initial_rows = 30 -- Số hàng (số dòng)

-- Enable Ctrl + V and Right Click to paste
config.keys = {
	{
		key = "v",
		mods = "CTRL",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	-- {
	-- 	key = "c",
	-- 	mods = "CTRL",
	-- 	action = wezterm.action.CopyTo("Clipboard"),
	-- },
}

config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
}
-- Đặt PowerShell làm shell mặc định
-- config.default_prog = { "powershell.exe", "-NoExit" }

return config
