return function()
	local gray = {
		white_100   = "#ffffff",
		white_90    = "#e6e6e6",
		white_75    = "#d0d0d0",
		white_50    = "#999999",
		white_25    = "#666666",
		white_10    = "#333333",

		black_10    = "#242424",
		black_25    = "#1c1c1c",
		black_50    = "#121212",
		black_75    = "#0a0a0f",
		black_100   = "#000000",

		transparent = "NONE",
	};

	local colors = {
		teal    = "#00d9ba",
		cyan    = "#00d4ff",
		blue    = "#4d9fff",
		indigo  = "#6A7BFF",
		violet  = "#875fff",
		purple  = "#ff87ff",
		fuchsia = "#ff55d9",
		magenta = "#ff0ac4",
		pink    = "#FF3388",
		red     = "#ff001a",
		orange  = "#ff6b35",
		yellow  = "#ffd000",
		lime    = "#7fff00",
		green   = "#00d85f",
	};

	local gradient = {
		lv1      = "#ff9dff",
		lv1_dimm = "#2a1430",

		lv2      = "#ff4fd8",
		lv2_dimm = "#33122a",

		lv3      = "#d43bff",
		lv3_dimm = "#361540",

		lv4      = "#8826ff",
		lv4_dimm = "#2a1145",

		lv5      = "#5e2fff",
		lv5_dimm = "#1f1048",

		lv6      = "#3a2bff",
		lv6_dimm = "#160f45",

		lv7      = "#3f39d8",
		lv7_dimm = "#141735",
	}

	local syntax = {
		comments = gray.white_50,

		variables = colors.purple,
		constants = colors.magenta,

		strings = colors.green,
		character = colors.lime,
		booleans = colors.red,
		["false"] = colors.red,
		["true"] = colors.lime,
		numbers = colors.blue,
		floats = colors.indigo,

		keywords = colors.cyan,
		types = colors.yellow,
		functions = colors.fuchsia,

		operators = colors.magenta,
		punctuation = colors.violet,

		special = colors.pink,

		preprocs = colors.teal,

		delimiters = colors.violet,
	};

	local diagnostics = {
		ok           = "#005a2e",
		info         = "#004d63",
		hint         = "#783867",
		warn         = "#804700",
		error        = "#802040",

		git_add      = "#1f6243",
		git_add_dimm = "#162e1a",
		git_mod      = "#8a6a1e",
		git_mod_dimm = "#3b2f18",
		git_del      = "#943d3d",
		git_del_dimm = "#3b1f1f",
	};

	local ui = {
		fg           = gray.white_100,
		fg_float     = gray.white_75,
		fg_popup     = gray.white_25,

		bg           = gray.transparent,

		bg_solid     = gray.black_100,
		bg_shadow    = gray.black_50,
		bg_float     = gray.black_25,
		bg_popup     = gray.black_10,

		text_colored = colors.violet,

		selection    = "#5a4ab6",
	};

	local modes = {
		normal = colors.cyan,
		insert = colors.green,
		visual = colors.yellow,
		replace = colors.pink,
		command = colors.violet,
		inactive = gray.white_50,
	};

	return {
		gray = gray,
		colors = colors,
		gradient = gradient,
		syntax = syntax,
		diagnostics = diagnostics,
		ui = ui,
		modes = modes,
	};
end
