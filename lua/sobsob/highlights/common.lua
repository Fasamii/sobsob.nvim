return function(cp)
	return {
		-- BASE
		Normal      = { fg = cp.ui.fg, bg = cp.ui.bg },
		NormalFloat = { fg = cp.ui.fg_float, bg = cp.ui.bg_float },
		NormalNC    = { link = "Normal" },

		Bold        = { bold = true },
		Italic      = { italic = true },
		Underline   = { underline = true },

		-- TODO:
		-- CURSOR&LINES
		-- Cursor          = { fg = cp.red },
		-- CursorLine      = {},
		-- LineNr          = { fg = cp.white_dark, bg = cp.bg },
		-- CursorLineNr    = { fg = cp.white },
		-- ColorColumn     = { bg = cp.black_shadow },

		-- TODO:
		-- SELECTION&SEARCH
		Visual      = { reverse = true, bold = true },
		-- VisualNOS       = { bg = cp.selection },
		-- Search          = { fg = cp.search, bg = cp.selection, bold = true },
		-- CurSearch       = { fg = cp.bg_solid, bg = cp.search, bold = true },
		-- IncSearch       = { fg = cp.bg_solid, bg = cp.search, bold = true },
		-- Substitute      = { fg = cp.bg_solid, bg = cp.search },

		-- TODO:
		-- UI
		MatchParen  = { fg = cp.gray.black_100, bg = cp.colors.magenta, bold = true },
		-- WinSeparator    = { fg = cp.black_dimm, bg = cp.black_dimm },

		-- TODO:
		-- BARS
		-- WinBar          = { fg = cp.white, bg = cp.black_dark },
		-- WinBarNC        = { fg = cp.white, bg = cp.black_dimm },
		-- StatusLine      = { fg = cp.white, bg = cp.black_dark },
		-- StatusLineNc    = { fg = cp.white, bg = cp.black_dimm },
		-- TabLine         = { fg = cp.violet, bg = cp.black_dark, },
		-- TabLineSel      = { fg = cp.magenta, bg = cp.black_dimm, bold = true },
		-- TabLineFill     = { bg = cp.black_dark },

		-- TODO:
		-- POPUP
		-- Pmenu           = { fg = cp.white, bg = cp.black_dark },
		-- PmenuSel        = { fg = cp.magenta, bold = true },
		-- PmenuSbar       = { bg = cp.black },
		-- PmenuThumb      = { bg = cp.violet },

		-- TODO:
		-- SPELLING
		-- SpellBad        = { undercurl = true, sp = cp.error, bold = true },
		-- SpellCap        = { undercurl = true, sp = cp.warning },
		-- SpellRare       = { bold = true },
		-- SpellLocal      = {},

		-- TODO:
		-- DIAGNOSTICS
		-- DiagnosticOk    = { fg = cp.ok },
		-- DiagnosticHint  = { fg = cp.hint },
		-- DiagnosticInfo  = { fg = cp.info },
		-- DiagnosticWarn  = { fg = cp.warn },
		-- DiagnosticError = { fg = cp.error },

		Ok          = { fg = cp.diagnostics.ok },
		Info        = { fg = cp.diagnostics.info },
		Hint        = { fg = cp.diagnostics.hint },
		Warn        = { fg = cp.diagnostics.warn },
		Error       = { fg = cp.diagnostics.error },
		-- WarningMsg      = { fg = cp.warn },
		-- ErrorMsg        = { fg = cp.error },
	}
end
