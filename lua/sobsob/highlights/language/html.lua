return function(cp)
	return {
		htmlTag                 = { link = "Delimiter", bold = true },
		htmlEndTag              = { link = "Delimiter", bold = true },
		htmlTagName             = { link = "Keyword", bold = true },
		htmlArg                 = { link = "Type" },

		["@tag.html"]           = { link = "Keyword" },
		["@tag.attribute.html"] = { link = "Type" },
	}
end
