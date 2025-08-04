return function(cp)
	return {
		---------------
		---- Basic ----
		---------------
		Normal                                           = { fg = cp.white, bg = cp.bg }, -- TODO: Override everything that should be white including:
		-- Alpha colors
		-- wild menu colors
		-- every standard text
		ColorColumn                                      = { bg = cp.black_shadow },
		CursorLine                                       = { bg = cp.black },
		CursorLineNr                                     = { fg = cp.purple, bg = cp.bg, bold = true },
		LineNr                                           = { fg = cp.white_dark, bg = cp.bg },

		Visual                                           = { bg = cp.selection, bold = true }, -- FIX: when using with Search functionality the part of visual selection that is also Search selection has visual bg and search fg which makes it a little unreadable

		Search                                           = { bg = cp.selection, fg = cp.search, bold = true },
		CurSearch                                        = { bg = cp.search, fg = cp.bg_solid, bold = true },
		IncSearch                                        = { bg = cp.search, fg = cp.bg_solid, bold = true },

		Substitute                                       = { bg = cp.search, fg = cp.bg_solid }, -- TODO: check what is that for
		MatchParen                                       = { fg = cp.search, bold = true },
		-----------------
		-- status line --
		-----------------
		-- nvim
		StatusLine                                       = { bg = cp.black_dark, fg = cp.white },
		StatusLineNc                                     = { bg = cp.black, fg = cp.white },
		TabLineFill                                      = { bg = cp.black_dark },
		TabLineSel                                       = { bg = cp.black_dimm, fg = cp.magenta, bold = true },
		TabLine                                          = { bg = cp.black_dark, fg = cp.violet },
		-----------
		-- netrw --
		-----------
		netrwTreeBar = { fg = cp.violet },
		netrwPlain = { fg = cp.purple },
		-- TODO: link to Directory
		netrwDir = { fg = cp.pink },
		netrwClassify = { fg = cp.violet },
		netrwExe = { fg = cp.yellow },
		-- lualine
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
		LL_N_A                                           = { bg = cp.cyan, fg = cp.bg_solid, bold = true },
		LL_N_B                                           = { fg = cp.violet, bold = true },
		LL_N_C                                           = { fg = cp.violet, bold = true },

		LL_I_A                                           = { bg = cp.green, fg = cp.bg_solid, bold = true },
		LL_I_B                                           = { fg = cp.violet, bold = true },
		LL_I_C                                           = { fg = cp.violet, bold = true },

		LL_V_A                                           = { bg = cp.yellow, fg = cp.bg_solid, bold = true },
		LL_V_B                                           = { fg = cp.violet, bold = true },
		LL_V_C                                           = { fg = cp.violet, bold = true },

		LL_R_A                                           = { bg = cp.pink, fg = cp.bg_solid, bold = true },
		LL_R_B                                           = { fg = cp.violet, bold = true },
		LL_R_C                                           = { fg = cp.violet, bold = true },

		LL_C_A                                           = { bg = cp.violet, fg = cp.bg_solid, bold = true },
		LL_C_B                                           = { fg = cp.violet, bold = true },
		LL_C_C                                           = { fg = cp.violet, bold = true },

		LL_X_A                                           = { bg = cp.purple, fg = cp.bg_solid, bold = true },
		LL_X_B                                           = { fg = cp.violet, bold = true },
		LL_X_C                                           = { fg = cp.violet, bold = true },
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
		Comment                                          = { fg = cp.white_dark, italic = true },
		PreCondit                                        = { fg = cp.orange },
		SpecialChar                                      = { fg = cp.magenta },
		-- Function
		Function                                         = { fg = cp.purple, bold = true },
		Label                                            = { fg = cp.purple, bold = true },
		-- Keyword
		Keyword                                          = { fg = cp.cyan },
		Statment                                         = { fg = cp.cyan },
		Conditional                                      = { fg = cp.cyan },
		Repeat                                           = { fg = cp.cyan },
		Exception                                        = { fg = cp.cyan },
		-- Identifier
		Identifier                                       = { fg = cp.purple },
		-- Statement
		Statement                                        = { fg = cp.cyan },
		Macro                                            = { fg = cp.magenta },
		Define                                           = { fg = cp.cyan },
		Include                                          = { fg = cp.cyan },
		PreProc                                          = { fg = cp.purple },
		-- TODO: segregate that a little: below
		rustAttribute                                    = { fg = cp.violet },
		rustAttributeParenthesizedParens                 = { fg = cp.purple },
		["@lsp.mod.attribute.rust"]                      = { fg = cp.pink },
		["@lsp.typemod.attributeBracket.attribute.rust"] = { fg = cp.violet },
		["@lsp.typemod.builtinAttribute.attribute.rust"] = { fg = cp.purple },
		["@lsp.typemod.namespace.attribute.rust"]        = { fg = cp.purple },
		["@lsp.type.attributeBracket.rust"]              = { fg = cp.violet },
		["@lsp.type.builtinAttribute.rust"]              = { fg = cp.yellow, bold = true },
		-- TODO: segregate that a little: above
		hsPragma                                         = { fg = cp.cyan },
		hsImportModuleName                               = { fg = cp.green },
		hsImportGroup                                    = { fg = cp.green },
		-- Type
		Type                                             = { fg = cp.yellow },
		Constant                                         = { fg = cp.violet, bold = true },
		Structure                                        = { fg = cp.yellow, bold = true },
		-- Literal
		Number                                           = { fg = cp.red },
		Boolean                                          = { fg = cp.red },
		Float                                            = { fg = cp.red },
		Character                                        = { fg = cp.red },
		String                                           = { fg = cp.green },
		-- Operator
		Operator                                         = { fg = cp.magenta, bold = true },
		-- Delimiter
		Delimiter                                        = { fg = cp.violet },
		hsDelimiter                                      = { fg = cp.violet },
		-- Html tags
		htmlTag                                          = { fg = cp.violet, bold = true },
		htmlEndTag                                       = { fg = cp.violet, bold = true },
		htmlTagN                                         = { fg = cp.yellow, bold = true },
		htmlSpecialTagName                               = { fg = cp.magenta, bold = true },
		htmlTagName                                      = { fg = cp.yellow, bold = true },
		-- Html args
		-- Title                                            = { link = "Normal" },
		-- htmlTitle                                        = { link = "Normal" },
		htmlArg                                          = { fg = cp.purple },
		htmlArgN                                         = { fg = cp.red },
		htmlValue                                        = { fg = cp.red },
		htmlString                                       = { link = "String" },
		htmlStringDQ                                     = { link = "htmlString" },
		htmlStringSQ                                     = { link = "htmlString" },
		htmlLink                                         = { fg = cp.cyan, underline = true },
		cssTagName                                       = { fg = cp.yellow },
		cssIdentifier                                    = { fg = cp.pink },
		cssClassNameDot                                  = { fg = cp.pink },
		cssClassName                                     = { fg = cp.pink },
		cssPseudoClassId                                 = { fg = cp.violet },
		cssNoise                                         = { fg = cp.violet },
		cssBraces                                        = { fg = cp.violet },
		cssFunctionComma                                 = { fg = cp.violet },
		cssFunctionName                                  = { fg = cp.violet },
		cssDefinition                                    = { fg = cp.purple },
		cssStyle                                         = { fg = cp.purple },
		cssUnitDecorators                                = { fg = cp.violet },
		cssMediaType                                     = { fg = cp.yellow },
		cssColor                                         = { fg = cp.red },
		cssHacks                                         = { fg = cp.pink },
		cssSelectorOp                                    = { fg = cp.violet },
		cssCustomProp                                    = { fg = cp.purple },
		cssImportant                                     = { fg = cp.magenta, bold = true },
		-- Prop
		cssTextProp                                      = { fg = cp.purple },
		cssMediaProp                                     = { fg = cp.purple },
		cssMultiColumnProp                               = { fg = cp.purple },
		cssPageProp                                      = { fg = cp.purple },
		cssObjectProp                                    = { fg = cp.purple },
		cssBackgroundProp                                = { fg = cp.purple },
		cssColorProp                                     = { fg = cp.purple },
		cssTransformProp                                 = { fg = cp.purple },
		cssTransitionProp                                = { fg = cp.purple },
		cssPositioningProp                               = { fg = cp.purple },
		cssFlexibleBoxProp                               = { fg = cp.purple },
		cssBoxProp                                       = { fg = cp.purple },
		cssUIProp                                        = { fg = cp.purple },
		cssAnimationProp                                 = { fg = cp.purple },
		cssGridProp                                      = { fg = cp.purple },
		cssBorderProp                                    = { fg = cp.purple },
		cssFontProp                                      = { fg = cp.purple },
		-- Attr
		-- cssFlexibleBoxAttr                               = { fg = cp.red },
		-- cssObjectAttr                                    = { fg = cp.red },
		-- cssBackgroundAttr                                = { fg = cp.red },
		-- cssTransitionAttr                                = { fg = cp.red },
		-- cssMediaAttr                                     = { fg = cp.red },
		-- cssAnimationAttr                                 = { fg = cp.red },
		-- cssPositioningAttr                               = { fg = cp.red },
		-- rest
		javaScript                                       = { fg = cp.purple },
		javaScriptParens                                 = { fg = cp.violet },
		cParen                                           = { fg = cp.violet },
		cBlock                                           = { fg = cp.violet },
		cBracket                                         = { fg = cp.violet },
		cSpecialCharacter                                = { fg = cp.red },
		javaScriptBraces                                 = { fg = cp.violet },
		rustFoldBraces                                   = { fg = cp.violet },
		VarId                                            = { fg = cp.purple },
		ConId                                            = { fg = cp.pink },
		rustSigil                                        = { fg = cp.magenta },
		pythonEscape                                     = { fg = cp.red },
		["@variable.builtin.python"]                     = { fg = cp.violet },
		pythonAttribute                                  = { fg = cp.purple },
		hyprCategory                                     = { fg = cp.magenta, bold = true },
		hyprCategory0                                    = { fg = cp.magenta, bold = true },
		hyprCategoryD                                    = { fg = cp.magenta, bold = true },
		hyprCommand                                      = { fg = cp.cyan },
		hyprVariable                                     = { fg = cp.purple },
		hyprNumber                                       = { fg = cp.red },
		hyprColor                                        = { fg = cp.red },
		hyprValue                                        = { fg = cp.violet },
		goPredefinedIdentifiers                          = { fg = cp.yellow, bold = true },
		-- ["@lsp.type.namespace.go"]                       = { fg = cp.yellow},
		goBlock                                          = { fg = cp.yellow },
		--------------------
		-- fallback (END) --
		--------------------
		----------------
		-- Treesitter --
		----------------
		-- Text
		["@text"]                                        = { fg = cp.purple },
		["@text.strong"]                                 = { fg = cp.purple, bold = true },
		["@text.emphasis"]                               = { fg = cp.purple, italic = true },
		["@text.underline"]                              = { fg = cp.purple, underline = true },
		["@text.strike"]                                 = { fg = cp.purple, strikethrough = true },
		["@text.title"]                                  = { fg = cp.green, bg = cp.red, bold = true },
		["@text.literal"]                                = { fg = cp.green },
		["@text.uri"]                                    = { fg = cp.cyan, underline = true },
		["@text.math"]                                   = { fg = cp.yellow },
		["@text.reference"]                              = { fg = cp.cyan },
		["@text.environment"]                            = { fg = cp.yellow },
		["@text.environment.name"]                       = { fg = cp.yellow, bold = true },
		["@text.note"]                                   = { fg = cp.white_dimm },
		["@text.warning"]                                = { fg = cp.warning },
		["@text.danger"]                                 = { fg = cp.error },
		["@text.diff.add"]                               = { fg = cp.hint },
		["@text.diff.delete"]                            = { fg = cp.error },
		["@comment"]                                     = { fg = cp.white_dark, italic = true },
		["@comment.documentation"]                       = { fg = cp.white_dimm, italic = true },
		["@special.comment"]                             = { fg = cp.white_dark, bold = true },
		["@comment.error"]                               = { fg = cp.error },
		["@preproc"]                                     = { fg = cp.orange },
		-- Keyword
		["@keyword"]                                     = { fg = cp.cyan },
		["@keyword.function"]                            = { fg = cp.magenta, bold = true },
		["@keyword.operator"]                            = { fg = cp.cyan },
		["@keyword.return"]                              = { fg = cp.cyan },
		["@conditional"]                                 = { fg = cp.cyan },
		["@repeat"]                                      = { fg = cp.cyan },
		-- Html
		["@tag"]                                         = { fg = cp.violet },
		["@tag.delimiter"]                               = { fg = cp.violet },
		["@tag.html"]                                    = { fg = cp.yellow },
		["@tag.name"]                                    = { fg = cp.yellow },
		["@tag.builtin"]                                 = { fg = cp.magenta },
		["@tag.css"]                                     = { fg = cp.yellow },
		["@constant.css"]                                = { fg = cp.yellow },
		-- XML
		["@tag.attribute.xml"]                           = { fg = cp.violet },
		["@tag.xml"]                                     = { fg = cp.yellow },
		["@punctuation.delimiter.xml"]                   = { fg = cp.green },
		-- Statement
		["@debug"]                                       = { fg = cp.orange },
		["@statment"]                                    = { fg = cp.cyan },
		["@include"]                                     = { fg = cp.cyan },
		["@define"]                                      = { fg = cp.cyan },
		["@macro"]                                       = { fg = cp.magenta },
		-- Identifier
		["@identifier"]                                  = { fg = cp.purple },
		["@property"]                                    = { fg = cp.purple },
		["@property.css"]                                = { fg = cp.purple },
		["@variable"]                                    = { fg = cp.purple },
		["@variable.builtin"]                            = { fg = cp.purple, bold = true },
		["@variable.property"]                           = { fg = cp.purple },
		["@variable.parameter"]                          = { fg = cp.purple },
		["@variable.function"]                           = { fg = cp.purple, bg = cp.red, bold = true },
		["@variable.member.query"]                       = { fg = cp.red, bold = true },
		-- Function
		["@function"]                                    = { fg = cp.purple, bold = true },
		["@function.call"]                               = { fg = cp.purple, bold = true },
		["@function.builtin"]                            = { fg = cp.purple, bold = true },
		["@function.macro"]                              = { fg = cp.purple, bold = true },
		["@lsp.type.function"]                           = { fg = cp.purple, bold = true },
		["@lsp.type.method"]                             = { fg = cp.purple, bold = true },
		["@parameter"]                                   = { fg = cp.cyan },
		["@method.call"]                                 = { fg = cp.purple, bold = true },
		["@method"]                                      = { fg = cp.purple, bold = true },
		["@constructor"]                                 = { fg = cp.magenta, bold = true },
		["@constructor.lua"]                             = { fg = cp.violet },
		["@label"]                                       = { fg = cp.cyan, bold = true },
		-- Type
		["@type"]                                        = { fg = cp.yellow },
		["@type.builtin"]                                = { fg = cp.yellow, bold = true },
		["@type.qualifier"]                              = { fg = cp.yellow },
		["@type.definition"]                             = { fg = cp.yellow, bold = true },
		["@storageclass"]                                = { fg = cp.yellow },
		["@namespace"]                                   = { fg = cp.yellow },
		["@constant"]                                    = { fg = cp.magenta, bold = true },
		["@constant.builtin"]                            = { fg = cp.magenta, bold = true },
		["@constant.macro"]                              = { fg = cp.violet, bold = true },
		-- Lsp Type
		["@lsp.type.structure"]                          = { fg = cp.yellow, bold = true },
		-- Literal
		["@null"]                                        = { fg = cp.yellow },
		["@string"]                                      = { fg = cp.green },
		["@string.regex"]                                = { fg = cp.magenta },
		["@string.escape"]                               = { fg = cp.magenta },
		["@string.special"]                              = { fg = cp.magenta },
		["@string.special.url"]                          = { fg = cp.cyan, underline = true },
		["@character"]                                   = { fg = cp.red },
		["@character.special"]                           = { fg = cp.red, bold = true },
		["@number"]                                      = { fg = cp.red },
		["@boolean"]                                     = { fg = cp.red },
		["@float"]                                       = { fg = cp.red },
		-- Punctuation
		["@attribute"]                                   = { fg = cp.purple, bold = true },
		["@attribute.value"]                             = { fg = cp.red },
		["@punctuation.bracket"]                         = { fg = cp.violet },
		["@punctuation.delimiter"]                       = { fg = cp.violet },
		["@punctuation.special"]                         = { fg = cp.violet },
		-- Operator
		["@operator"]                                    = { fg = cp.magenta, bold = true },
		-- css
		["@attribute.css"]                               = { fg = cp.violet },
		----------------------
		-- Treesitter (END) --
		----------------------
		----------------------
		---- syntax (END) ----
		----------------------
		------------------
		---- spelling ----
		------------------
		SpellBad                                         = { undercurl = true, sp = cp.error, bold = true },
		SpellCap                                         = { undercurl = true, sp = cp.warning },
		SpellRare                                        = { bold = true },
		SpellLocal                                       = {},
		------------------------
		---- spelling (END) ----
		------------------------
		---------------------
		---- Diagnostics ----
		---------------------
		DiagnosticError                                  = { fg = cp.error },
		ErrorMsg                                         = { fg = cp.error },
		Error                                            = { fg = cp.error },

		DiagnosticWarn                                   = { fg = cp.warn },
		WarningMsg                                       = { fg = cp.warn },
		Warn                                             = { fg = cp.warn },

		DiagnosticInfo                                   = { fg = cp.info },
		Info                                             = { fg = cp.info },

		DiagnosticOk                                     = { fg = cp.hint },
		Ok                                               = { fg = cp.hint },
		-----------------------------
		----- Diagnostics (END) -----
		-----------------------------
		-------------
		---- git ----
		-------------
		GitAdd                                           = { fg = cp.git_add, bold = true },
		GitDel                                           = { fg = cp.git_del, bold = true },
		GitMod                                           = { fg = cp.git_mod, bold = true },
		-- blame
		GitSignsCurrentLineBlame                         = { fg = cp.black },
		-- Signs
		GitSignsAdd                                      = { bg = cp.git_add_dimm, fg = cp.bg_solid, bold = true },
		GitSignsDelete                                   = { bg = cp.git_del_dimm, fg = cp.bg_solid, bold = true },
		GitSignsChange                                   = { bg = cp.git_mod_dimm, fg = cp.bg_solid, bold = true },
		-- Staged Signs
		GitSignsStagedAdd                                = { bg = cp.black_shadow, fg = cp.white_dark },
		GitSignsStagedChange                             = { bg = cp.black_shadow, fg = cp.white_dark },
		GitSignsStagedDelete                             = { bg = cp.black_shadow, fg = cp.white_dark },
		-------------------
		---- git (END) ----
		-------------------
		-------------------
		---- which-key ----
		-------------------
		WhichKey                                         = { fg = cp.magenta, bold = true },
		-- WhichKeyBorder = { bg = cp.red },
		WhichKeyDesc                                     = { fg = cp.purple },
		WhichKeyGroup                                    = { fg = cp.cyan },
		-- WhichKeyIconGrey = { bg = cp.red },
		-- WhichKeyTitle = { bg = cp.red },
		WhichKeyNormal                                   = { bg = cp.black_shadow },
		-------------------------
		---- which-key (END) ----
		-------------------------
		-------------------
		---- Telescope ----
		-------------------
		-------------------------
		TelescopeNormal                                  = { bg = nil },
		TelescopeBorder                                  = { fg = cp.white_dark },
		TelescopeTitle                                   = { fg = cp.white },

		TelescopePromptNormal                            = { fg = cp.purple },
		TelescopePromptCounter                           = { fg = cp.purple },

		TelescopeSelection                               = { fg = cp.magenta, bold = true },
		TelescopeMatching                                = { bg = cp.selection, bold = true },
		TelescopePreviewLine                             = { bg = cp.search, fg = cp.bg_solid, bold = true },
		-------------------------
		---- Telescope (END) ----
		-------------------------
		------------------
		---- Markdown ----
		------------------
		-- Heading
		RenderMarkdownH1                                 = { fg = cp.white, bold = true },
		RenderMarkdownH1Bg                               = { bg = cp.util_lv1_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH2                                 = { fg = cp.white, bold = true },
		RenderMarkdownH2Bg                               = { bg = cp.util_lv2_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH3                                 = { fg = cp.white, bold = true },
		RenderMarkdownH3Bg                               = { bg = cp.util_lv3_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH4                                 = { fg = cp.white, bold = true },
		RenderMarkdownH4Bg                               = { bg = cp.util_lv4_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH5                                 = { fg = cp.white, bold = true },
		RenderMarkdownH5Bg                               = { bg = cp.util_lv5_dimm, fg = cp.bg_solid, bold = true },
		RenderMarkdownH6                                 = { fg = cp.white, bold = true },
		RenderMarkdownH6Bg                               = { bg = cp.util_lv6_dimm, fg = cp.bg_solid, bold = true },
		-- Code
		RenderMarkdownCode                               = { bg = cp.black_dark },
		RenderMarkdownCodeInline                         = { link = "RenderMarkdownCode" },
		-- List
		RenderMarkdownBullet                             = { fg = cp.purple },
		RenderMarkdownChecked                            = { fg = cp.green },
		RenderMarkdownTodo                               = { fg = cp.yellow },
		RenderMarkdownUnchecked                          = { fg = cp.red },
		RenderMarkdownConsider                           = { fg = cp.violet },
		-- Quote
		RenderMarkdownQuote                              = { fg = cp.util_lv1_dimm },
		RenderMarkdownQuote1                             = { fg = cp.util_lv1_dimm },
		RenderMarkdownQuote2                             = { fg = cp.util_lv2_dimm },
		RenderMarkdownQuote3                             = { fg = cp.util_lv3_dimm },
		RenderMarkdownQuote4                             = { fg = cp.util_lv4_dimm },
		RenderMarkdownQuote5                             = { fg = cp.util_lv5_dimm },
		RenderMarkdownQuote6                             = { fg = cp.util_lv6_dimm },
		-- Table
		RenderMarkdownTableHead                          = { fg = cp.yellow },
		RenderMarkdownTableRow                           = { fg = cp.purple },
		RenderMarkdownTableFill                          = {},
		-- Link
		RenderMarkdownLink                               = { fg = cp.cyan },
		RenderMarkdownWikiLink                           = { fg = cp.cyan },
		["@markup.link.markdown"]                        = { fg = cp.cyan },
		["@markup.link.label.markdown_inline"]           = { fg = cp.cyan },
		["@markup.link.url.markdown_inline"]             = { fg = cp.violet },
		["@markup.wikilink.label.markdown_inline"]       = { fg = cp.cyan },
		["@markup.wikilink.url.markdown_inline"]         = { fg = cp.violet },
		-- Math
		RenderMarkdownMath                               = { fg = cp.cyan },
		-- Callouts
		RenderMarkdownSuccess                            = { fg = cp.green },
		------------------------
		---- Markdown (END) ----
		------------------------
		---------------------
		---- NvimDapView ----
		---------------------
		-- TODO: check what these are
		-- TODO: check highlight groups for nvim-dap define these and potentially link here instead of redefining
		-- TEST: check if that hi groups are being applied
		NvimDapViewBoolean                               = { fg = cp.pink },
		NvimDapViewControlDiwsconnect                    = { fg = cp.pink },
		NvimDapViewControlNC                             = { fg = cp.pink },
		NvimDapViewControlPause                          = { fg = cp.pink },
		NvimDapViewControlPlay                           = { fg = cp.pink },
		NvimDapViewControlRunLast                        = { fg = cp.pink },
		NvimDapViewControlStepBack                       = { fg = cp.pink },
		NvimDapViewControlStepInto                       = { fg = cp.pink },
		NvimDapViewControlStepOut                        = { fg = cp.pink },
		NvimDapViewControlStepOver                       = { fg = cp.pink },
		NvimDapViewControlTerminate                      = { fg = cp.pink },
		NvimDapViewExceptionFilterDisabled               = { fg = cp.pink },
		NvimDapViewExceptionFilterEnabled                = { fg = cp.pink },
		NvimDapViewFileName                              = { fg = cp.pink },
		NvimDapViewFloat                                 = { fg = cp.pink },
		NvimDapViewFrameCurrent                          = { fg = cp.pink },
		NvimDapViewFunction                              = { fg = cp.pink },
		NvimDapViewLineNumber                            = { fg = cp.pink },
		NvimDapViewMissingData                           = { fg = cp.pink },
		NvimDapViewNumber                                = { fg = cp.pink },
		NvimDapViewSeparator                             = { fg = cp.pink },
		NvimDapViewString                                = { fg = cp.pink },
		NvimDapViewTabSelected                           = { fg = cp.pink },
		NvimDapViewTab                                   = { fg = cp.pink },
		NvimDapViewThreadError                           = { fg = cp.pink },
		NvimDapViewThreadStopped                         = { fg = cp.pink },
		NvimDapViewThread                                = { fg = cp.pink },
		NvimDapViewWatchError                            = { fg = cp.pink },
		NvimDapViewWatchExpr                             = { fg = cp.pink },
		NvimDapViewWatchUpdated                          = { fg = cp.pink },
		---------------------------
		---- NvimDapView (END) ----
		---------------------------
	};
end
