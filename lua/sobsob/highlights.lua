return function(cp)
	return {
		---------------
		---- Basic ----
		---------------
		Normal = { fg = cp.white, bg = cp.bg },
		ColorColumn = { bg = cp.black_shadow },
		CursorLine = { bg = cp.black },
		CursorLineNr = { fg = cp.purple, bg = cp.bg, bold = true },
		LineNr = { fg = cp.white_dark, bg = cp.bg },

		Visual = { bg = cp.selection, bold = true }, -- FIX: when using with Search functionality the part of visual selection that is also Search selection has visual bg and search fg which makes it a little unreadable

		Search = { bg = cp.selection, fg = cp.search, bold = true },
		CurSearch = { bg = cp.search, fg = cp.bg_solid, bold = true },
		IncSearch = { bg = cp.search, fg = cp.bg_solid, bold = true },

		Substitute = { bg = cp.red }, -- TODO: check what is that for
		MatchParen = { fg = cp.yellow, bold = true },
		-----------------
		-- status line --
		-----------------
		-- nvim
		StatusLine = { bg = cp.black_dark, fg = cp.white },
		StatusLineNc = { bg = cp.black, fg = cp.white },
		TabLineFill = { bg = cp.black_dark },
		TabLineSel = { bg = cp.black_dimm, fg = cp.magneta, bold = true },
		TabLine = { bg = cp.black_dark, fg = cp.violet },
		-- lualine
		-- TODO: make lualine work without overwriting it groups
		-- For a reference:
		--return {
		--   normal = {
		--     a = {bg = colors.gray, fg = colors.black, gui = 'bold'},
		--     b = {bg = colors.lightgray, fg = colors.white},
		--     c = {bg = colors.darkgray, fg = colors.gray}
		--   },
		--   insert = {
		--     a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
		--     b = {bg = colors.lightgray, fg = colors.white},
		--     c = {bg = colors.lightgray, fg = colors.white}
		--   },
		--   visual = {
		--     a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
		--     b = {bg = colors.lightgray, fg = colors.white},
		--     c = {bg = colors.inactivegray, fg = colors.black}
		--   },
		--   replace = {
		--     a = {bg = colors.red, fg = colors.black, gui = 'bold'},
		--     b = {bg = colors.lightgray, fg = colors.white},
		--     c = {bg = colors.black, fg = colors.white}
		--   },
		--   command = {
		--     a = {bg = colors.green, fg = colors.black, gui = 'bold'},
		--     b = {bg = colors.lightgray, fg = colors.white},
		--     c = {bg = colors.inactivegray, fg = colors.black}
		--   },
		--   inactive = {
		--     a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
		--     b = {bg = colors.darkgray, fg = colors.gray},
		--     c = {bg = colors.darkgray, fg = colors.gray}
		--   }
		-- }
		-- require('lualine').setup {options = {theme = gruvbox}}
		LL_N_A = { bg = cp.blue, fg = cp.bg_solid, bold = true },
		LL_N_B = { fg = cp.violet, bold = true },
		LL_N_C = { fg = cp.violet, bold = true },

		LL_I_A = { bg = cp.green, fg = cp.bg_solid, bold = true },
		LL_I_B = { fg = cp.violet, bold = true },
		LL_I_C = { fg = cp.violet, bold = true },

		LL_V_A = { bg = cp.yellow, fg = cp.bg_solid, bold = true },
		LL_V_B = { fg = cp.violet, bold = true },
		LL_V_C = { fg = cp.violet, bold = true },

		LL_R_A = { bg = cp.pink, fg = cp.bg_solid, bold = true },
		LL_R_B = { fg = cp.violet, bold = true },
		LL_R_C = { fg = cp.violet, bold = true },

		LL_C_A = { bg = cp.violet, fg = cp.bg_solid, bold = true },
		LL_C_B = { fg = cp.violet, bold = true },
		LL_C_C = { fg = cp.violet, bold = true },

		LL_X_A = { bg = cp.purple, fg = cp.bg_solid, bold = true },
		LL_X_B = { fg = cp.violet, bold = true },
		LL_X_C = { fg = cp.violet, bold = true },
		-----------------------
		-- status line (END) --
		-----------------------
		---------------------
		---- Basic (END) ----
		---------------------
		----------------
		---- syntax ----
		----------------
		--------------
		-- fallback --
		--------------
		-- Text
		Comment = { fg = cp.white_dark },
		PreCondit = { fg = cp.orange },
		SpecialChar = { fg = cp.violet },
		-- Function
		Function = { fg = cp.purple, bold = true },
		Label = { fg = cp.magneta },
		-- Keyword
		Keyword = { fg = cp.cyan },
		Statment = { fg = cp.cyan },
		Conditional = { fg = cp.cyan },
		Repeat = { fg = cp.cyan },
		Exception = { fg = cp.cyan },
		-- Identifier
		Identifier = { fg = cp.purple },
		-- Statement
		Macro = { fg = cp.magneta },
		Define = { fg = cp.magneta },
		Include = { fg = cp.magneta },
		-- Type
		Type = { fg = cp.yellow },
		Constant = { fg = cp.yellow, bold = true },
		Structure = { fg = cp.yellow, bold = true },
		-- Literal
		Number = { fg = cp.red },
		Boolean = { fg = cp.red },
		Float = { fg = cp.red },
		Character = { fg = cp.red },
		String = { fg = cp.green },
		-- Operator
		Operator = { fg = cp.cyan },
		-- Delimiter
		Delimiter = { fg = cp.violet },
		--------------------
		-- fallback (END) --
		--------------------
		----------------
		-- Treesitter --
		----------------
		-- Text
		["@text"] = { fg = cp.white },                    -- Non-structured text
		["@text.strong"] = { fg = cp.white, bold = true }, -- Bold text
		["@text.emphasis"] = { fg = cp.white },           -- Emphasized text
		["@text.underline"] = { fg = cp.white, underline = true }, -- Underlined text
		["@text.strike"] = { fg = cp.white, strikethrough = true }, -- Strikethrough text
		["@text.title"] = { fg = cp.white, bold = true }, -- Titles
		["@text.literal"] = { fg = cp.white },            -- Literal or verbatim text
		["@text.uri"] = { fg = cp.cyan, underline = true }, -- URIs (URLs, file paths, etc.)
		["@text.math"] = { fg = cp.cyan },                -- Math environments
		["@text.reference"] = { fg = cp.white },          -- References
		["@text.environment"] = { fg = cp.white },        -- Text environments
		["@text.environment.name"] = { fg = cp.white },   -- Text environment names
		["@text.note"] = { fg = cp.white_dimm },          -- Notes
		["@text.warning"] = { fg = cp.warning },          -- Warnings
		["@text.danger"] = { fg = cp.error },             -- Danger alerts
		["@text.diff.add"] = { fg = cp.util_lv1 },        -- Added text (for diffs)
		["@text.diff.delete"] = { fg = cp.util_lv3 },     -- Deleted text (for diffs)
		["@comment"] = { fg = cp.white_dark },
		["@comment.documentation"] = { fg = cp.white_dimm },
		["@special.comment"] = { fg = cp.white_dark, bold = true },
		["@comment.error"] = { fg = cp.error },
		["@preproc"] = { fg = cp.orange },
		-- Keyword
		["@keyword"] = { fg = cp.cyan },
		["@keyword.function"] = { fg = cp.cyan },
		["@keyword.operator"] = { fg = cp.cyan },
		["@keyword.return"] = { fg = cp.cyan },
		["@conditional"] = { fg = cp.cyan },
		["@repeat"] = { fg = cp.cyan },
		["@tag.builtin"] = { fg = cp.purple },
		-- ["@tag"] = { fg = cp.violet }, -- TODO: figure out how to affect only the practices of html tag
		-- Statement
		["@debug"] = { fg = cp.ornage },
		["@statment"] = { fg = cp.violet },
		["@include"] = { fg = cp.magneta },
		["@define"] = { fg = cp.magneta },
		["@macro"] = { fg = cp.magneta },
		-- Identifier
		["@identifier"] = { fg = cp.purple },
		["@property"] = { fg = cp.purple },
		["@variable"] = { fg = cp.purple },
		["@variable.builtin"] = { fg = cp.purple, bold = true },
		["@variable.property"] = { fg = cp.purple },
		["@variable.parameter"] = { fg = cp.purple },
		["@variable.function"] = { fg = cp.purple, bold = true },
		-- Function
		["@function"] = { fg = cp.purple, bold = true },
		["@function.call"] = { fg = cp.purple, bold = true },
		["@parameter"] = { fg = cp.purple },
		["@method.call"] = { bg = cp.purple, bold = true },
		["@method"] = { fg = cp.purple, bold = true },
		["@constructor"] = { fg = cp.pink, bold = true },
		["@label"] = { fg = cp.purple, bold = true },
		-- Type
		["@type"] = { fg = cp.yellow },
		["@type.builtin"] = { fg = cp.yellow },
		["@type.qualifier"] = { fg = cp.yellow },
		["@type.definition"] = { fg = cp.red },
		["@storageclass"] = { fg = cp.yellow },
		["@namespace"] = { fg = cp.yellow },
		["@constant"] = { fg = cp.yellow, bold = true },
		["@constant.builtin"] = { fg = cp.yellow, bold = true },
		["@constant.macro"] = { fg = cp.magneta },
		-- Lsp Type
		["@lsp.type.structure"] = { fg = cp.yellow, bold = true },
		-- Literal
		["@null"] = { fg = cp.red },
		["@string"] = { fg = cp.green },
		["@string.regex"] = { fg = cp.magneta },
		["@string.escape"] = { fg = cp.magneta },
		["@string.special"] = { fg = cp.magneta },
		["@character"] = { fg = cp.green },
		["@character.special"] = { fg = cp.red },
		["@number"] = { fg = cp.red },
		["@boolean"] = { fg = cp.red },
		["@float"] = { fg = cp.red },
		-- Punctuation
		["@punctuation.bracket"] = { fg = cp.violet }, -- Brackets, braces, parentheses
		["@punctuation.delimiter"] = { fg = cp.violet }, -- Delimiters (commas, colons, ...)
		["@punctuation.special"] = { fg = cp.violet }, -- Special punctuation
		-- Operator
		["@operator"] = { fg = cp.magneta, bold = true }, --TODO: consider other color for operator
		----------------------
		-- Treesitter (END) --
		----------------------
		----------------------
		---- syntax (END) ----
		----------------------
		------------------
		---- spelling ----
		------------------
		SpellBad = { undercurl = true, sp = cp.error, bold = true },
		SpellCap = { undercurl = true, sp = cp.warning },
		SpellRare = { bold = true },
		SpellLocal = {},
		------------------------
		---- spelling (END) ----
		------------------------
		---------------------
		---- Diagnostics ----
		---------------------
		DiagnosticError = { fg = cp.error },
		ErrorMsg = { fg = cp.error },
		Error = { fg = cp.error },

		DiagnosticWarn = { fg = cp.warn },
		WarningMsg = { fg = cp.warn },
		Warn = { fg = cp.warn },

		DiagnosticInfo = { fg = cp.info },
		Info = { fg = cp.info },
		-----------------------------
		----- Diagnostics (END) -----
		-----------------------------
		-------------
		---- git ----
		-------------
		GitAdd = { fg = cp.git_add, bold = true },
		GitDel = { fg = cp.git_del, bold = true },
		GitMod = { fg = cp.git_mod, bold = true },
		-- blame
		GitSignsCurrentLineBlame = { fg = cp.black },
		-- Signs
		GitSignsAdd = { bg = cp.git_add, fg = cp.bg_solid, bold = true },
		GitSignsDelete = { bg = cp.git_del, fg = cp.bg_solid, bold = true },
		GitSignsChange = { bg = cp.git_mod, fg = cp.bg_solid, bold = true },
		-- Staged Signs
		GitSignsStagedAdd = { bg = cp.black_shadow, fg = cp.white_dark },
		GitSignsStagedChange = { bg = cp.black_shadow, fg = cp.white_dark },
		GitSignsStagedDelete = { bg = cp.black_shadow, fg = cp.white_dark },
		-------------------
		---- git (END) ----
		-------------------
		-------------------
		---- which-key ----
		-------------------
		WhichKey = { fg = cp.magneta, bold = true },
		-- WhichKeyBorder = { bg = cp.red },
		WhichKeyDesc = { fg = cp.purple },
		WhichKeyGroup = { fg = cp.cyan },
		-- WhichKeyIconGrey = { bg = cp.red },
		-- WhichKeyTitle = { bg = cp.red },
		WhichKeyNormal = { bg = cp.black_shadow },
		-------------------------
		---- which-key (END) ----
		-------------------------
		-------------------
		---- Telescope ----
		-------------------
		-------------------------
		TelescopeNormal = { bg = nil },
		TelescopeBorder = { fg = cp.white_dark },
		TelescopeTitle = { fg = cp.white },

		TelescopePromptNormal = { fg = cp.purple},
		TelescopePromptCounter = { fg = cp.purple},

		TelescopeSelection = { fg = cp.magneta, bold = true },
		TelescopeMatching = { bg = cp.selection, bold = true },
		TelescopePreviewLine = { bg = cp.search, fg = cp.bg_solid, bold = true },
		-------------------------
		---- Telescope (END) ----
		-------------------------
		------------------
		---- Markdown ----
		------------------
		-- Heading
		RenderMarkdownH1 = { fg = cp.white, bold = true },
		RenderMarkdownH1Bg = { bg = cp.util_lv1_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH2 = { fg = cp.white, bold = true },
		RenderMarkdownH2Bg = { bg = cp.util_lv2_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH3 = { fg = cp.white, bold = true },
		RenderMarkdownH3Bg = { bg = cp.util_lv3_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH4 = { fg = cp.white, bold = true },
		RenderMarkdownH4Bg = { bg = cp.util_lv4_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH5 = { fg = cp.white, bold = true },
		RenderMarkdownH5Bg = { bg = cp.util_lv5_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH6 = { fg = cp.white, bold = true },
		RenderMarkdownH6Bg = { bg = cp.util_lv6_dimm, fg = cp.bg_solid, bold = true },
		-- Code
		RenderMarkdownCode = { bg = cp.black_dark },
		RenderMarkdownCodeInline = { link = "RenderMarkdownCode" },
		-- List
		RenderMarkdownBullet = { fg = cp.purple },
		RenderMarkdownChecked = { fg = cp.green },
		RenderMarkdownTodo = { fg = cp.yellow },
		RenderMarkdownUnchecked = { fg = cp.red },
		RenderMarkdownConsider = { fg = cp.violet },
		-- Quote
		RenderMarkdownQuote = { fg = cp.util_lv1_dimm },
		RenderMarkdownQuote1 = { fg = cp.util_lv1_dimm },
		RenderMarkdownQuote2 = { fg = cp.util_lv2_dimm },
		RenderMarkdownQuote3 = { fg = cp.util_lv3_dimm },
		RenderMarkdownQuote4 = { fg = cp.util_lv4_dimm },
		RenderMarkdownQuote5 = { fg = cp.util_lv5_dimm },
		RenderMarkdownQuote6 = { fg = cp.util_lv6_dimm },
		-- Table
		RenderMarkdownTableHead = { fg = cp.yellow },
		RenderMarkdownTableRow = { fg = cp.purple },
		RenderMarkdownTableFill = {},
		-- Link
		RenderMarkdownLink = { fg = cp.blue },
		RenderMarkdownWikiLink = { fg = cp.blue },
		["@markup.link.markdown"] = { fg = cp.blue },
		["@markup.link.label.markdown_inline"] = { fg = cp.blue },
		["@markup.link.url.markdown_inline"] = { fg = cp.violet },
		["@markup.wikilink.label.markdown_inline"] = { fg = cp.blue },
		["@markup.wikilink.url.markdown_inline"] = { fg = cp.violet },
		-- Math
		RenderMarkdownMath = { fg = cp.cyan },
		-- Callouts
		RenderMarkdownSuccess = { fg = cp.green },
		------------------------
		---- Markdown (END) ----
		------------------------
		---------------------
		---- NvimDapView ----
		---------------------
		-- TODO: check what these are
		-- TODO: check highlight groups for nvim-dap define these and potentially link here instead of redefining
		-- TEST: check if that hi groups are being applied
		NvimDapViewBoolean = { fg = cp.ping },
		NvimDapViewControlDiwsconnect = { fg = cp.ping },
		NvimDapViewControlNC = { fg = cp.ping },
		NvimDapViewControlPause = { fg = cp.ping },
		NvimDapViewControlPlay = { fg = cp.ping },
		NvimDapViewControlRunLast = { fg = cp.ping },
		NvimDapViewControlStepBack = { fg = cp.ping },
		NvimDapViewControlStepInto = { fg = cp.ping },
		NvimDapViewControlStepOut = { fg = cp.ping },
		NvimDapViewControlStepOver = { fg = cp.ping },
		NvimDapViewControlTerminate = { fg = cp.ping },
		NvimDapViewExceptionFilterDisabled = { fg = cp.ping },
		NvimDapViewExceptionFilterEnabled = { fg = cp.ping },
		NvimDapViewFileName = { fg = cp.ping },
		NvimDapViewFloat = { fg = cp.ping },
		NvimDapViewFrameCurrent = { fg = cp.ping },
		NvimDapViewFunction = { fg = cp.ping },
		NvimDapViewLineNumber = { fg = cp.ping },
		NvimDapViewMissingData = { fg = cp.ping },
		NvimDapViewNumber = { fg = cp.ping },
		NvimDapViewSeparator = { fg = cp.ping },
		NvimDapViewString = { fg = cp.ping },
		NvimDapViewTabSelected = { fg = cp.ping },
		NvimDapViewTab = { fg = cp.ping },
		NvimDapViewThreadError = { fg = cp.ping },
		NvimDapViewThreadStopped = { fg = cp.ping },
		NvimDapViewThread = { fg = cp.ping },
		NvimDapViewWatchError = { fg = cp.ping },
		NvimDapViewWatchExpr = { fg = cp.ping },
		NvimDapViewWatchUpdated = { fg = cp.ping },
		---------------------------
		---- NvimDapView (END) ----
		---------------------------
	};
end
