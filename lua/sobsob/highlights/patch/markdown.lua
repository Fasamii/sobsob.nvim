return function(cp)
	return {
		["@markup.list.markdown"]                  = { fg = cp.ui.colored_text },
		["@markup.link.markdown"]                  = { fg = cp.colors.cyan },
		["@markup.link.label.markdown_inline"]     = { fg = cp.colors.cyan },
		["@markup.link.url.markdown_inline"]       = { fg = cp.colors.violet },
		["@markup.wikilink.label.markdown_inline"] = { fg = cp.colors.cyan },
		["@markup.wikilink.url.markdown_inline"]   = { fg = cp.colors.violet },
	}
end
