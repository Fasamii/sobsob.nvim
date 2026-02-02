return function(cp)
	return {
		Comment        = { fg = cp.syntax.comments, italic = true, },
		SpecialComment = { fg = cp.syntax.comments }, -- TODO: make sure you create hi group for docs comments

		Identifier     = { fg = cp.syntax.variables },
		Constant       = { fg = cp.syntax.constants, bold = true },

		Keyword        = { fg = cp.syntax.kyeword },
		Statement      = { fg = cp.syntax.kyeword },
		Conditional    = { fg = cp.syntax.kyeword },
		Repeat         = { fg = cp.syntax.kyeword },
		Exception      = { fg = cp.syntax.kyeword }, -- TODO: Maybe orange or sum

		Type           = { fg = cp.syntax.types },
		StorageClass   = { fg = cp.syntax.kyeword },
		Structure      = { fg = cp.syntax.kyeword },
		Typedef        = { fg = cp.syntax.kyeword }, -- TODO: Check how that behaves

		Function       = { fg = cp.syntax.functions },
		Label          = { fg = cp.syntax.functions },

		Operator       = { fg = cp.syntax.ooperators },

		Special        = { fg = cp.syntax.special },
		SpecialChar    = { fg = cp.syntax.lime }, -- TODO: Maybe magenta or sum

		String         = { fg = cp.syntax.strings },
		Character      = { fg = cp.syntax.character },
		Boolean        = { fg = cp.syntax.booleans },
		Number         = { fg = cp.syntax.numbers },
		Float          = { fg = cp.syntax.floats },

		PreProc        = { fg = cp.syntax.preprocs },
		PreCondit      = { fg = cp.syntax.preprocs },
		Include        = { fg = cp.syntax.preprocs },
		Define         = { fg = cp.syntax.preprocs },
		Macro          = { fg = cp.syntax.preprocs }, -- TODO: Find color for things like macro make it similar to functions color

		Delimiter      = { fg = cp.syntax.delimiters },
		Tag            = { fg = cp.syntax.delimiters },

		Underlined     = { fg = cp.colors.blue, underline = true }, -- TODO: check how to style underline
		Ignore         = { fg = cp.ui.bg_solid },
		Error          = { fg = cp.diagnostics.error, bold = true },
		-- Todo = { fg = cp. } -- TODO: Make some diagnostics marks section
	}
end
