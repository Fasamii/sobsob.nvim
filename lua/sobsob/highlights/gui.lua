return function(cp)
	return {
		-- NETRW
		netrwTreeBar                               = { fg = cp.violet },
		netrwPlain                                 = { fg = cp.purple },
		netrwDir                                   = { fg = cp.cyan },
		netrwClassify                              = { fg = cp.violet },
		netrwExe                                   = { fg = cp.yellow },

		-- LUALINE
		-- TODO: make lualine work without overwriting it groups
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

		-- GIT 
		GitAdd                                     = { fg = cp.git_add, bold = true },
		GitDel                                     = { fg = cp.git_del, bold = true },
		GitMod                                     = { fg = cp.git_mod, bold = true },
		GitSignsCurrentLineBlame                   = { fg = cp.black },
		GitSignsAdd                                = { bg = cp.git_add_dimm, fg = cp.bg_solid, bold = true },
		GitSignsDelete                             = { bg = cp.git_del_dimm, fg = cp.bg_solid, bold = true },
		GitSignsChange                             = { bg = cp.git_mod_dimm, fg = cp.bg_solid, bold = true },
		GitSignsStagedAdd                          = { bg = cp.black_shadow, fg = cp.white_dark },
		GitSignsStagedChange                       = { bg = cp.black_shadow, fg = cp.white_dark },
		GitSignsStagedDelete                       = { bg = cp.black_shadow, fg = cp.white_dark },

		-- WHICH-KEY
		WhichKeyNormal                             = { bg = cp.black_dark },
		WhichKey                                   = { fg = cp.magenta, bold = true },
		WhichKeyDesc                               = { fg = cp.purple },
		WhichKeyGroup                              = { fg = cp.cyan },

		-- TELESCOPE 
		TelescopeNormal                            = { bg = nil },
		TelescopeBorder                            = { fg = cp.white_dark },
		TelescopeTitle                             = { fg = cp.white },

		TelescopePromptNormal                      = { fg = cp.purple },
		TelescopePromptCounter                     = { fg = cp.purple },

		TelescopeSelection                         = { fg = cp.magenta, bold = true },
		TelescopeMatching                          = { bg = cp.selection, bold = true },
		TelescopePreviewLine                       = { bg = cp.search, fg = cp.bg_solid, bold = true },

		-- MARKDOWN 
		--- Heading
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
		--- Code
		RenderMarkdownCode                         = { bg = cp.black_dark },
		RenderMarkdownCodeInline                   = { link = "RenderMarkdownCode" },
		--- List
		RenderMarkdownBullet                       = { fg = cp.purple },
		RenderMarkdownChecked                      = { fg = cp.green },
		RenderMarkdownTodo                         = { fg = cp.yellow },
		RenderMarkdownUnchecked                    = { fg = cp.red },
		RenderMarkdownConsider                     = { fg = cp.violet },
		--- Quote
		RenderMarkdownQuote                        = { fg = cp.util_lv1_dimm },
		RenderMarkdownQuote1                       = { fg = cp.util_lv1_dimm },
		RenderMarkdownQuote2                       = { fg = cp.util_lv2_dimm },
		RenderMarkdownQuote3                       = { fg = cp.util_lv3_dimm },
		RenderMarkdownQuote4                       = { fg = cp.util_lv4_dimm },
		RenderMarkdownQuote5                       = { fg = cp.util_lv5_dimm },
		RenderMarkdownQuote6                       = { fg = cp.util_lv6_dimm },
		--- Table
		RenderMarkdownTableHead                    = { fg = cp.yellow },
		RenderMarkdownTableRow                     = { fg = cp.purple },
		RenderMarkdownTableFill                    = {},
		--- Link
		RenderMarkdownLink                         = { fg = cp.cyan },
		RenderMarkdownWikiLink                     = { fg = cp.cyan },
		["@markup.link.markdown"]                  = { fg = cp.cyan },
		["@markup.link.label.markdown_inline"]     = { fg = cp.cyan },
		["@markup.link.url.markdown_inline"]       = { fg = cp.violet },
		["@markup.wikilink.label.markdown_inline"] = { fg = cp.cyan },
		["@markup.wikilink.url.markdown_inline"]   = { fg = cp.violet },
		--- Math
		RenderMarkdownMath                         = { fg = cp.cyan },
		--- Callouts
		RenderMarkdownSuccess                      = { fg = cp.green },

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
