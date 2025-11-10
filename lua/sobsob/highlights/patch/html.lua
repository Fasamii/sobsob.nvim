return function(cp)
	return {
		["@tag.html"]      = { fg = cp.yellow },

		htmlTag            = { fg = cp.violet, bold = true },
		htmlEndTag         = { fg = cp.violet, bold = true },
		htmlTagN           = { fg = cp.yellow, bold = true },
		htmlSpecialTagName = { fg = cp.magenta, bold = true },
		htmlTagName        = { fg = cp.yellow, bold = true },
		-- Title                                            = { link = "Normal" },
		-- htmlTitle                                        = { link = "Normal" },
		htmlArg            = { fg = cp.purple },
		htmlArgN           = { fg = cp.red },
		htmlValue          = { fg = cp.red },
		htmlString         = { link = "String" },
		htmlStringDQ       = { link = "htmlString" },
		htmlStringSQ       = { link = "htmlString" },
		htmlLink           = { fg = cp.cyan, underline = true },
	}
end
