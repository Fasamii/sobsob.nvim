-- IMPORTANT: fix that mess:
--	- make more top level highlights and link to them
--	- segregate this
return function(cp)
	return {
		-- Text
		Comment      = { fg = cp.white_dark, italic = true },         -- base
		PreCondit    = { fg = cp.orange },
		SpecialChar  = { fg = cp.magenta },
		-- Function
		Function     = { fg = cp.purple, bold = true },
		Label        = { fg = cp.purple, bold = true },
		-- Keyword
		Keyword      = { fg = cp.cyan },
		Statment     = { fg = cp.cyan },
		Conditional  = { fg = cp.cyan },
		Repeat       = { fg = cp.cyan },
		Exception    = { fg = cp.cyan },
		-- Identifier
		Identifier   = { fg = cp.purple },
		-- Statement
		Statement    = { fg = cp.cyan },
		Macro        = { fg = cp.magenta },
		Define       = { fg = cp.cyan },
		Include      = { fg = cp.cyan },
		PreProc      = { fg = cp.purple },
		-- for bc calculator
		bcIdentifier = { fg = cp.purple },
		bcList       = { fg = cp.magenta },
		-- Type
		Type         = { fg = cp.yellow },
		Constant     = { fg = cp.violet, bold = true },
		Structure    = { fg = cp.yellow, bold = true },
		-- Literal
		Number       = { fg = cp.red },
		Boolean      = { fg = cp.red },
		Float        = { fg = cp.red },
		Character    = { fg = cp.red },
		String       = { fg = cp.green },
		-- Operator
		Operator     = { fg = cp.magenta, bold = true },
		-- Delimiter
		Delimiter    = { fg = cp.violet },
		VarId        = { fg = cp.purple },
		ConId        = { fg = cp.pink },
	}
end
