return function()
	local gray = {
		white_100   = "#a0a0a0",
		white_90    = "#939393",
		white_75    = "#808080",
		white_50    = "#606060",
		white_25    = "#484848",
		white_10    = "#303030",
		black_10    = "#1a1a1a",
		black_25    = "#161618",
		black_50    = "#0f0f12",
		black_75    = "#080809",
		black_100   = "#000000",
		transparent = "NONE",
	};
	local colors = {
		teal    = "#008a7a",
		cyan    = "#0f627d",
		blue    = "#2d5a99",
		indigo  = "#3a4a99",
		violet  = "#5b4f85",
		purple  = "#ad5eb7",
		fuchsia = "#9d4a82",
		magenta = "#76076c",
		pink    = "#97566a",
		red     = "#8c2931",
		orange  = "#785221",
		yellow  = "#a58d4a",
		lime    = "#4a7a1a",
		green   = "#2b704b",
	};
	local gradient = {
		lv1      = "#ad5eb7",
		lv1_dimm = "#2d1a35",
		lv2      = "#9d4a82",
		lv2_dimm = "#33152f",
		lv3      = "#8a3a9f",
		lv3_dimm = "#381a3f",
		lv4      = "#7a3a9f",
		lv4_dimm = "#3d1a48",
		lv5      = "#6a3f99",
		lv5_dimm = "#421a52",
		lv6      = "#5b4f85",
		lv6_dimm = "#461a5b",
		lv7      = "#9f5a8a",
		lv7_dimm = "#341a44",
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
		ok           = "#00331c",
		info         = "#003342",
		hint         = "#532747",
		warn         = "#4d2e00",
		error        = "#4d1426",

		git_add      = "#1f6243",
		git_add_dimm = "#102113",
		git_mod      = "#8a6a1e",
		git_mod_dimm = "#2a2111",
		git_del      = "#943d3d",
		git_del_dimm = "#2a1616",
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
		selection    = "#2d1a3d",
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
