return function(cp)
	return {
		Comment        = { fg = cp.syntax.comments, italic = true, },
		SpecialComment = { fg = cp.syntax.comments },

		Identifier     = { fg = cp.syntax.variables },
		Constant       = { fg = cp.syntax.constants, bold = true },

		String         = { fg = cp.syntax.strings },
		Character      = { fg = cp.syntax.character },
		Boolean        = { fg = cp.syntax.booleans },
		Number         = { fg = cp.syntax.numbers },
		Float          = { fg = cp.syntax.floats },

		Keyword        = { fg = cp.syntax.keywords },
		Statement      = { fg = cp.syntax.keywords },
		Conditional    = { fg = cp.syntax.keywords },
		Repeat         = { fg = cp.syntax.keywords },
		Exception      = { fg = cp.syntax.keywords },

		Type           = { fg = cp.syntax.types },
		StorageClass   = { fg = cp.syntax.keywords },
		Structure      = { fg = cp.syntax.keywords },

		Function       = { fg = cp.syntax.functions },
		Label          = { fg = cp.syntax.functions },

		Operator       = { fg = cp.syntax.operators },

		Special        = { fg = cp.syntax.special },
		SpecialChar    = { fg = cp.syntax.special },

		PreProc        = { fg = cp.syntax.preprocs },
		PreCondit      = { fg = cp.syntax.preprocs },
		Include        = { fg = cp.syntax.keywords },
		Define         = { fg = cp.syntax.preprocs },
		Macro          = { fg = cp.syntax.functions, bold = true, italic = true },

		Delimiter      = { fg = cp.syntax.delimiters },
		Tag            = { fg = cp.syntax.delimiters },

		Underlined     = { fg = cp.colors.blue, underline = true },
		Ignore         = { fg = cp.gray.white_10 },
		Error          = { fg = cp.diagnostics.error, bold = true },
		Todo           = { fg = cp.diagnostics.warn, bold = true }
	}
end
