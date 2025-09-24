return function(cp)
	return {
		Normal                                     = { fg = cp.white, bg = cp.bg }, -- TODO: Override everything that should be white including: Alpha colors, wild menu colors, every standard text
		ColorColumn                                = { bg = cp.black_shadow },
		CursorLine                                 = { bg = cp.black },
		CursorLineNr                               = { fg = cp.purple, bg = cp.bg, bold = true },
		LineNr                                     = { fg = cp.white_dark, bg = cp.bg },

		Visual                                     = { bg = cp.selection, bold = true }, -- FIX: when using with Search functionality the part of visual selection that is also Search selection has visual bg and search fg which makes it a little unreadable

		Search                                     = { bg = cp.selection, fg = cp.search, bold = true },
		CurSearch                                  = { bg = cp.search, fg = cp.bg_solid, bold = true },
		IncSearch                                  = { bg = cp.search, fg = cp.bg_solid, bold = true },

		Substitute                                 = { bg = cp.search, fg = cp.bg_solid }, -- TODO: check what is that for
		MatchParen                                 = { fg = cp.search, bold = true },

		StatusLine                                 = { bg = cp.black_dark, fg = cp.white },
		StatusLineNc                               = { bg = cp.black, fg = cp.white },
		TabLineFill                                = { bg = cp.black_dark },
		TabLineSel                                 = { bg = cp.black_dimm, fg = cp.magenta, bold = true },
		TabLine                                    = { bg = cp.black_dark, fg = cp.violet },

		-----------
		-- netrw --
		-----------
		netrwTreeBar                               = { fg = cp.violet },
		netrwPlain                                 = { fg = cp.purple },
		-- TODO: link to Directory
		netrwDir                                   = { fg = cp.cyan },
		netrwClassify                              = { fg = cp.violet },
		netrwExe                                   = { fg = cp.yellow },
		-----------------
		-- netrw (END) --
		-----------------

		-------------
		-- lualine --
		-------------
		-- TODO: make lualine work without overwriting it groups
		-- For a reference:
		--return {
		--   normal = {
		--     a = {bg = colors.gray, fg = colors.black, gui = 'bold'},
		--     b = {bg = colors.lvioletightgray, fg = colors.white},
		--     c = {bg = colors.darkgray, fg = colors.gray}
		--   },
		--   insert = {
		--     a = {bg = colors.cyan, fg = colors.black, gui = 'bold'},
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
		LL_N_A                                     = { bg = cp.cyan, fg = cp.bg_solid, bold = true },
		LL_N_B                                     = { fg = cp.violet, bold = true },
		LL_N_C                                     = { fg = cp.violet, bold = true },

		LL_I_A                                     = { bg = cp.green, fg = cp.bg_solid, bold = true },
		LL_I_B                                     = { fg = cp.violet, bold = true },
		LL_I_C                                     = { fg = cp.violet, bold = true },

		LL_V_A                                     = { bg = cp.yellow, fg = cp.bg_solid, bold = true },
		LL_V_B                                     = { fg = cp.violet, bold = true },
		LL_V_C                                     = { fg = cp.violet, bold = true },

		LL_R_A                                     = { bg = cp.pink, fg = cp.bg_solid, bold = true },
		LL_R_B                                     = { fg = cp.violet, bold = true },
		LL_R_C                                     = { fg = cp.violet, bold = true },

		LL_C_A                                     = { bg = cp.violet, fg = cp.bg_solid, bold = true },
		LL_C_B                                     = { fg = cp.violet, bold = true },
		LL_C_C                                     = { fg = cp.violet, bold = true },

		LL_X_A                                     = { bg = cp.purple, fg = cp.bg_solid, bold = true },
		LL_X_B                                     = { fg = cp.violet, bold = true },
		LL_X_C                                     = { fg = cp.violet, bold = true },
		-------------------
		-- lualine (END) --
		-------------------

		------------------
		---- spelling ----
		------------------
		SpellBad                                   = { undercurl = true, sp = cp.error, bold = true },
		SpellCap                                   = { undercurl = true, sp = cp.warning },
		SpellRare                                  = { bold = true },
		SpellLocal                                 = {},
		------------------------
		---- spelling (END) ----
		------------------------

		---------------------
		---- Diagnostics ----
		---------------------
		DiagnosticError                            = { fg = cp.error },
		ErrorMsg                                   = { fg = cp.error },
		Error                                      = { fg = cp.error },

		DiagnosticWarn                             = { fg = cp.warn },
		WarningMsg                                 = { fg = cp.warn },
		Warn                                       = { fg = cp.warn },

		DiagnosticInfo                             = { fg = cp.info },
		Info                                       = { fg = cp.info },

		DiagnosticHint                             = { fg = cp.hint },
		Hint                                       = { fg = cp.hint },

		DiagnosticOk                               = { fg = cp.ok },
		Ok                                         = { fg = cp.ok },
		-----------------------------
		----- Diagnostics (END) -----
		-----------------------------
		-----------------------

		---- Tags / Labels ----
		-----------------------
		TagOk                                      = { fg = cp.ok },
		TagError                                   = { fg = cp.error },
		TagWarn                                    = { fg = cp.warn },
		TagInfo                                    = { fg = cp.info },
		TagDef                                     = { fg = cp.hint },
		-----------------------------
		---- Tags / Labels (END) ----
		-----------------------------

		-------------
		---- git ----
		-------------
		GitAdd                                     = { fg = cp.git_add, bold = true },
		GitDel                                     = { fg = cp.git_del, bold = true },
		GitMod                                     = { fg = cp.git_mod, bold = true },
		-- blame
		GitSignsCurrentLineBlame                   = { fg = cp.black },
		-- Signs
		GitSignsAdd                                = { bg = cp.git_add_dimm, fg = cp.bg_solid, bold = true },
		GitSignsDelete                             = { bg = cp.git_del_dimm, fg = cp.bg_solid, bold = true },
		GitSignsChange                             = { bg = cp.git_mod_dimm, fg = cp.bg_solid, bold = true },
		-- Staged Signs
		GitSignsStagedAdd                          = { bg = cp.black_shadow, fg = cp.white_dark },
		GitSignsStagedChange                       = { bg = cp.black_shadow, fg = cp.white_dark },
		GitSignsStagedDelete                       = { bg = cp.black_shadow, fg = cp.white_dark },
		-------------------
		---- git (END) ----
		-------------------

		-------------------
		---- which-key ----
		-------------------
		WhichKey                                   = { fg = cp.magenta, bold = true },
		-- WhichKeyBorder = { bg = cp.red },
		WhichKeyDesc                               = { fg = cp.purple },
		WhichKeyGroup                              = { fg = cp.cyan },
		-- WhichKeyIconGrey = { bg = cp.red },
		-- WhichKeyTitle = { bg = cp.red },
		WhichKeyNormal                             = { bg = cp.black_shadow },
		-------------------------
		---- which-key (END) ----
		-------------------------

		-------------------
		---- Telescope ----
		-------------------
		TelescopeNormal                            = { bg = nil },
		TelescopeBorder                            = { fg = cp.white_dark },
		TelescopeTitle                             = { fg = cp.white },

		TelescopePromptNormal                      = { fg = cp.purple },
		TelescopePromptCounter                     = { fg = cp.purple },

		TelescopeSelection                         = { fg = cp.magenta, bold = true },
		TelescopeMatching                          = { bg = cp.selection, bold = true },
		TelescopePreviewLine                       = { bg = cp.search, fg = cp.bg_solid, bold = true },
		-------------------------
		---- Telescope (END) ----
		-------------------------

		------------------
		---- Markdown ----
		------------------
		-- TODO: define groups for callouts (or callous englandish hard)
		-- Heading
		RenderMarkdownH1                           = { fg = cp.white, bold = true },
		RenderMarkdownH1Bg                         = { bg = cp.util_lv1_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH2                           = { fg = cp.white, bold = true },
		RenderMarkdownH2Bg                         = { bg = cp.util_lv2_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH3                           = { fg = cp.white, bold = true },
		RenderMarkdownH3Bg                         = { bg = cp.util_lv3_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH4                           = { fg = cp.white, bold = true },
		RenderMarkdownH4Bg                         = { bg = cp.util_lv4_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH5                           = { fg = cp.white, bold = true },
		RenderMarkdownH5Bg                         = { bg = cp.util_lv5_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH6                           = { fg = cp.white, bold = true },
		RenderMarkdownH6Bg                         = { bg = cp.util_lv6_dimm, fg = cp.bg_solid, bold = true },
		-- Code
		RenderMarkdownCode                         = { bg = cp.black_dark },
		RenderMarkdownCodeInline                   = { link = "RenderMarkdownCode" },
		-- List
		RenderMarkdownBullet                       = { fg = cp.purple },
		RenderMarkdownChecked                      = { fg = cp.green },
		RenderMarkdownTodo                         = { fg = cp.yellow },
		RenderMarkdownUnchecked                    = { fg = cp.red },
		RenderMarkdownConsider                     = { fg = cp.violet },
		-- Quote
		RenderMarkdownQuote                        = { fg = cp.util_lv1_dimm },
		RenderMarkdownQuote1                       = { fg = cp.util_lv1_dimm },
		RenderMarkdownQuote2                       = { fg = cp.util_lv2_dimm },
		RenderMarkdownQuote3                       = { fg = cp.util_lv3_dimm },
		RenderMarkdownQuote4                       = { fg = cp.util_lv4_dimm },
		RenderMarkdownQuote5                       = { fg = cp.util_lv5_dimm },
		RenderMarkdownQuote6                       = { fg = cp.util_lv6_dimm },
		-- Table
		RenderMarkdownTableHead                    = { fg = cp.yellow },
		RenderMarkdownTableRow                     = { fg = cp.purple },
		RenderMarkdownTableFill                    = {},
		-- Link
		RenderMarkdownLink                         = { fg = cp.cyan },
		RenderMarkdownWikiLink                     = { fg = cp.cyan },
		["@markup.link.markdown"]                  = { fg = cp.cyan },
		["@markup.link.label.markdown_inline"]     = { fg = cp.cyan },
		["@markup.link.url.markdown_inline"]       = { fg = cp.violet },
		["@markup.wikilink.label.markdown_inline"] = { fg = cp.cyan },
		["@markup.wikilink.url.markdown_inline"]   = { fg = cp.violet },
		-- Math
		RenderMarkdownMath                         = { fg = cp.cyan },
		-- Callouts
		RenderMarkdownSuccess                      = { fg = cp.green },
		------------------------
		---- Markdown (END) ----
		------------------------

		---------------------
		---- NvimDapView ----
		---------------------
		-- TODO: check what these are
		-- TODO: check highlight groups for nvim-dap define these and potentially link here instead of redefining
		-- TEST: check if that hi groups are being applied
		-- NvimDapViewBoolean                         = { fg = cp.pink },
		-- NvimDapViewControlDiwsconnect              = { fg = cp.pink },
		-- NvimDapViewControlNC                       = { fg = cp.pink },
		-- NvimDapViewControlPause                    = { fg = cp.pink },
		-- NvimDapViewControlPlay                     = { fg = cp.pink },
		-- NvimDapViewControlRunLast                  = { fg = cp.pink },
		-- NvimDapViewControlStepBack                 = { fg = cp.pink },
		-- NvimDapViewControlStepInto                 = { fg = cp.pink },
		-- NvimDapViewControlStepOut                  = { fg = cp.pink },
		-- NvimDapViewControlStepOver                 = { fg = cp.pink },
		-- NvimDapViewControlTerminate                = { fg = cp.pink },
		-- NvimDapViewExceptionFilterDisabled         = { fg = cp.pink },
		-- NvimDapViewExceptionFilterEnabled          = { fg = cp.pink },
		-- NvimDapViewFileName                        = { fg = cp.pink },
		-- NvimDapViewFloat                           = { fg = cp.pink },
		-- NvimDapViewFrameCurrent                    = { fg = cp.pink },
		-- NvimDapViewFunction                        = { fg = cp.pink },
		-- NvimDapViewLineNumber                      = { fg = cp.pink },
		-- NvimDapViewMissingData                     = { fg = cp.pink },
		-- NvimDapViewNumber                          = { fg = cp.pink },
		-- NvimDapViewSeparator                       = { fg = cp.pink },
		-- NvimDapViewString                          = { fg = cp.pink },
		-- NvimDapViewTabSelected                     = { fg = cp.pink },
		-- NvimDapViewTab                             = { fg = cp.pink },
		-- NvimDapViewThreadError                     = { fg = cp.pink },
		-- NvimDapViewThreadStopped                   = { fg = cp.pink },
		-- NvimDapViewThread                          = { fg = cp.pink },
		-- NvimDapViewWatchError                      = { fg = cp.pink },
		-- NvimDapViewWatchExpr                       = { fg = cp.pink },
		-- NvimDapViewWatchUpdated                    = { fg = cp.pink },
		---------------------------
		---- NvimDapView (END) ----
		---------------------------
	};
end
