local cp = require("sobsob.palettes.sobsob")();
local theme = {};

theme.normal = {
	a = { bg = cp.modes.normal, fg = cp.ui.bg_solid, bold = true },
	b = { bg = cp.ui.bg_float, fg = cp.ui.text_colored, bold = "bold" },
	c = { bg = cp.ui.bg_float, fg = cp.ui.text_colored },
}

theme.insert = {
	a = { bg = cp.modes.insert, fg = cp.ui.bg_solid, bold = true },
	b = { bg = cp.ui.bg_float, fg = cp.ui.text_colored, bold = true },
	c = { bg = cp.ui.bg_float, fg = cp.ui.text_colored },
}

theme.visual = {
	a = { bg = cp.modes.visual, fg = cp.ui.bg_solid, bold = true },
	b = { bg = cp.ui.bg_float, fg = cp.ui.text_colored, bold = true },
	c = { bg = cp.ui.bg_float, fg = cp.ui.text_colored },
}

theme.replace = {
	a = { bg = cp.modes.replace, fg = cp.ui.bg_solid, bold = true },
	b = { bg = cp.ui.bg_float, fg = cp.ui.text_colored, bold = true },
	c = { bg = cp.ui.bg_float, fg = cp.ui.text_colored },
}

theme.command = {
	a = { bg = cp.modes.command, fg = cp.ui.bg_solid, bold = true },
	b = { bg = cp.ui.bg_float, fg = cp.ui.text_colored, bold = true },
	c = { bg = cp.ui.bg_float, fg = cp.ui.text_colored },
}

theme.inactive = {
	a = { bg = cp.modes.inactive, fg = cp.ui.bg_solid, bold = true },
	b = { bg = cp.ui.bg_float, fg = cp.ui.text_colored, bold = true },
	c = { bg = cp.ui.bg_float, fg = cp.ui.text_colored },
}

return theme;
