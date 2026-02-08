return function(cp)
	return {
		RenderMarkdownH1         = { fg = cp.ui.fg, bold = true },
		RenderMarkdownH1Bg       = { bg = cp.gradient.lv1, fg = cp.ui.bg_solid, bold = true },
		RenderMarkdownH2         = { fg = cp.ui.fg, bold = true },
		RenderMarkdownH2Bg       = { bg = cp.gradient.lv2, fg = cp.ui.bg_solid, bold = true },
		RenderMarkdownH3         = { fg = cp.ui.fg, bold = true },
		RenderMarkdownH3Bg       = { bg = cp.gradient.lv3, fg = cp.ui.bg_solid, bold = true },
		RenderMarkdownH4         = { fg = cp.ui.fg, bold = true },
		RenderMarkdownH4Bg       = { bg = cp.gradient.lv4, fg = cp.ui.bg_solid, bold = true },
		RenderMarkdownH5         = { fg = cp.ui.fg, bold = true },
		RenderMarkdownH5Bg       = { bg = cp.gradient.lv5, fg = cp.ui.bg_solid, bold = true },
		RenderMarkdownH6         = { fg = cp.ui.fg, bold = true },
		RenderMarkdownH6Bg       = { bg = cp.gradient.lv6, fg = cp.ui.bg_solid, bold = true },

		RenderMarkdownCode       = { bg = cp.ui.bg_float },
		RenderMarkdownCodeInline = { link = "RenderMarkdownCode" },

		RenderMarkdownBullet     = { fg = cp.colors.purple },
		RenderMarkdownChecked    = { fg = cp.syntax["true"] },
		RenderMarkdownUnchecked  = { fg = cp.syntax["false"] },
		RenderMarkdownTodo       = { fg = cp.colors.yellow },
		RenderMarkdownConsider   = { fg = cp.colors.violet },

		RenderMarkdownQuote      = { fg = cp.gradient.lv1_dimm },
		RenderMarkdownQuote1     = { fg = cp.gradient.lv1_dimm },
		RenderMarkdownQuote2     = { fg = cp.gradient.lv2_dimm },
		RenderMarkdownQuote3     = { fg = cp.gradient.lv3_dimm },
		RenderMarkdownQuote4     = { fg = cp.gradient.lv4_dimm },
		RenderMarkdownQuote5     = { fg = cp.gradient.lv5_dimm },
		RenderMarkdownQuote6     = { fg = cp.gradient.lv6_dimm },

		RenderMarkdownTableHead  = { fg = cp.colors.yellow },
		RenderMarkdownTableRow   = { fg = cp.colors.purple },
		RenderMarkdownTableFill  = {},

		RenderMarkdownLink       = { fg = cp.colors.cyan },
		RenderMarkdownWikiLink   = { fg = cp.colors.cyan },

		RenderMarkdownMath       = { fg = cp.colors.cyan },

		RenderMarkdownSuccess    = { fg = cp.colors.green },
	}
end
