return function(cp)
	return {
		Normal                   = { fg = cp.ui.fg, bg = cp.ui.bg },
		NormalFloat              = { fg = cp.ui.fg_float, bg = cp.ui.bg_float },
		NormalNC                 = { fg = cp.ui.fg, bg = cp.ui.bg },

		-- FloatTitle               = { link = "NormalFloat" },
		-- FloatBorder              = { fg = cp.ui.fg }, -- TODO: Think about setting fg to selection

		Question                 = { link = "Keyword" },

		Bold                     = { bold = true },
		Italic                   = { italic = true },
		Underline                = { underline = true },

		CursorLine               = { bg = cp.ui.bg_shadow },
		ColorColumn              = { bg = cp.ui.bg_shadow },

		MatchParen               = { fg = cp.gray.black_100, bg = cp.colors.magenta, bold = true },

		LineNr                   = { fg = cp.ui.fg_popup },
		CursorLineNr             = { fg = cp.ui.fg },

		Visual                   = { reverse = true, bold = true },
		Search                   = { bg = cp.ui.selection, bold = true },
		CurSearch                = { reverse = true, bold = true },
		IncSearch                = { link = "Visual" },
		Substitute               = { link = "Visual" },

		WinBar                   = { fg = cp.ui.fg, bg = cp.ui.bg_float },
		WinBarNC                 = { fg = cp.ui.fg, bg = cp.ui.bg_float },

		TabLine                  = { fg = cp.ui.fg_float, bg = cp.ui.bg_float, },
		TabLineSel               = { fg = cp.ui.text_colored, bg = cp.ui.bg, bold = true },
		TabLineFill              = { bg = cp.ui.bg_float },

		VertSplit                = { fg = cp.gray.white_100, bg = cp.ui.bg, bold = false, italic = false },
		WinSeparator             = { fg = cp.gray.white_100, bg = cp.ui.bg, bold = false, italic = false },

		Folded                   = { fg = cp.ui.fg, bg = cp.ui.bg_popup },

		Pmenu                    = { bg = cp.ui.bg_popup },
		PmenuSel                 = { reverse = true },
		PmenuSbar                = { bg = cp.ui.fg_popup },
		PmenuThumb               = { bg = cp.ui.fg_float },

		Ok                       = { fg = cp.diagnostics.ok },
		Info                     = { fg = cp.diagnostics.info },
		Hint                     = { fg = cp.diagnostics.hint },
		Warn                     = { fg = cp.diagnostics.warn },
		Error                    = { fg = cp.diagnostics.error },

		DiagnosticInfo           = { link = "Info" },
		DiagnosticUnderlineInfo  = { underline = true, sp = cp.diagnostics.info, bold = true },
		DiagnosticHint           = { link = "Hint" },
		DiagnosticUnderlineHint  = { underline = true, sp = cp.diagnostics.hint, bold = true },
		DiagnosticWarn           = { link = "Warn" },
		DiagnosticUnderlineWarn  = { underline = true, sp = cp.diagnostics.warn, bold = true },
		DiagnosticError          = { link = "Error" },
		DiagnosticUnderlineError = { underline = true, sp = cp.diagnostics.error, bold = true },

		DiffAdd                  = { fg = cp.diagnostics.git_add, bg = cp.diagnostics.git_add_dimm, bold = true },
		DiffChange               = { fg = cp.diagnostics.git_mod, bg = cp.diagnostics.git_mod_dimm, bold = true },
		DiffDelete               = { fg = cp.diagnostics.git_del, bg = cp.diagnostics.git_del_dimm, bold = true },

		SpellBad                 = { undercurl = true, sp = cp.diagnostics.error, bold = true },
		SpellCap                 = { undercurl = true, sp = cp.diagnostics.warn },
		SpellRare                = { bold = true },
		SpellLocal               = {},

		Directory                = { link = "Keyword" },
	}
end
