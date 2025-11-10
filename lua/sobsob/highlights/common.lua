return function(cp)
	return {
		-- BASE
		Normal          = { fg = cp.white, bg = cp.bg },
		NormalFloat     = { fg = cp.white, bg = cp.black_dark },
		NormalNC        = { link = "Normal" },

		-- CURSOR&LINES
		Cursor          = { fg = cp.red },
		CursorLine      = {},
		LineNr          = { fg = cp.white_dark, bg = cp.bg },
		CursorLineNr    = { fg = cp.white },
		ColorColumn     = { bg = cp.black_shadow },

		-- SELECTION&SEARCH
		Visual          = { bg = cp.selection, bold = true },
		VisualNOS       = { bg = cp.selection },
		Search          = { fg = cp.search, bg = cp.selection, bold = true },
		CurSearch       = { fg = cp.bg_solid, bg = cp.search, bold = true },
		IncSearch       = { fg = cp.bg_solid, bg = cp.search, bold = true },
		Substitute      = { fg = cp.bg_solid, bg = cp.search },

		-- UI
		MatchParen      = { fg = cp.search, bold = true },
		WinSeparator    = { fg = cp.black_dimm, bg = cp.black_dimm },

		-- BARS
		WinBar          = { fg = cp.white, bg = cp.black_dark },
		WinBarNC        = { fg = cp.white, bg = cp.black_dimm },
		StatusLine      = { fg = cp.white, bg = cp.black_dark },
		StatusLineNc    = { fg = cp.white, bg = cp.black_dimm },
		TabLine         = { fg = cp.violet, bg = cp.black_dark, },
		TabLineSel      = { fg = cp.magenta, bg = cp.black_dimm, bold = true },
		TabLineFill     = { bg = cp.black_dark },

		-- POPUP
		Pmenu           = { fg = cp.white, bg = cp.black_dark },
		PmenuSel        = { fg = cp.magenta, bold = true },
		PmenuSbar       = { bg = cp.black },
		PmenuThumb      = { bg = cp.violet },

		-- SPELLING
		SpellBad        = { undercurl = true, sp = cp.error, bold = true },
		SpellCap        = { undercurl = true, sp = cp.warning },
		SpellRare       = { bold = true },
		SpellLocal      = {},

		-- DIAGNOSTICS
		DiagnosticOk    = { fg = cp.ok },
		DiagnosticHint  = { fg = cp.hint },
		DiagnosticInfo  = { fg = cp.info },
		DiagnosticWarn  = { fg = cp.warn },
		DiagnosticError = { fg = cp.error },

		-- STATUS
		Ok              = { fg = cp.ok },
		Hint            = { fg = cp.hint },
		Info            = { fg = cp.info },
		Warn            = { fg = cp.warn },
		WarningMsg      = { fg = cp.warn },
		Error           = { fg = cp.error },
		ErrorMsg        = { fg = cp.error },
	}
end
