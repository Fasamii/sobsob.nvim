return function()
	local gray = {
		white_100   = "#ffffff",
		white_90    = "#e6e6e6",
		white_75    = "#d0d0d0",
		white_50    = "#999999",
		white_25    = "#666666",
		white_10    = "#333333",

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
		lv1      = "#f487b6",
		lv1_dimm = "#4e2b36",

		lv2      = "#cc59d2",
		lv2_dimm = "#432847",

		lv3      = "#9046cf",
		lv3_dimm = "#342040",

		lv4      = "#6b4edb",
		lv4_dimm = "#2a2342",

		lv5      = "#4a5be0",
		lv5_dimm = "#202a44",

		lv6      = "#3a6de3",
		lv6_dimm = "#1c2f46",

		-- TODO: make 7 (try going into teal)
		lv7      = "#3a6de3",
		lv7_dimm = "#1c2f46",
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
		bg           = gray.transparent,
		bg_solid     = gray.black_100,
		bg_float     = gray.black_50,
		bg_popup     = gray.black_25,

		text_colored = colors.violet,

		selection    = "#3d2554",
		search       = "#2d5a66",
	};

	local modes = {
		normal = colors.cyan,
		insert = colors.green,
		visual = colors.yellow,
		repleace = colors.pink,
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
