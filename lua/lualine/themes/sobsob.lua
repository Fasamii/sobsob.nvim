local cp = require("sobsob.palettes.sobsob")();
local theme = {};

theme.normal = {
	a = { bg = cp.colors.cyan, fg = cp.ui.bg_solid, gui = "bold" },
	b = { bg = cp.ui.bg_solid, fg = cp.colors.violet, gui = "bold" },
	c = { bg = cp.ui.bg_solid, fg = cp.colors.violet },
}

theme.insert = {
	a = { bg = cp.colors.green, fg = cp.ui.bg_solid, gui = "bold" },
	b = { bg = cp.ui.bg_solid, fg = cp.colors.violet, gui = "bold" },
	c = { bg = cp.ui.bg_solid, fg = cp.colors.violet },
}

theme.visual = {
	a = { bg = cp.colors.yellow, fg = cp.ui.bg_solid, gui = "bold" },
	b = { bg = cp.ui.bg_solid, fg = cp.colors.violet, gui = "bold" },
	c = { bg = cp.ui.bg_solid, fg = cp.colors.violet },
}

theme.replace = {
	a = { bg = cp.colors.pink, fg = cp.ui.bg_solid, gui = "bold" },
	b = { bg = cp.ui.bg_solid, fg = cp.colors.violet, gui = "bold" },
	c = { bg = cp.ui.bg_solid, fg = cp.colors.violet },
}

theme.command = {
	a = { bg = cp.colors.violet, fg = cp.ui.bg_solid, gui = "bold" },
	b = { bg = cp.ui.bg_solid, fg = cp.colors.violet, gui = "bold" },
	c = { bg = cp.ui.bg_solid, fg = cp.colors.violet },
}

theme.inactive = {
	a = { bg = cp.colors.purple, fg = cp.ui.bg_solid, gui = "bold" },
	b = { bg = cp.ui.bg_solid, fg = cp.colors.violet, gui = "bold" },
	c = { bg = cp.ui.bg_solid, fg = cp.colors.violet },
}

return theme;
