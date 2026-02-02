return function(cp)
	return {
		javaScriptBraces = { fg = cp.syntax.delimiters },
		["@keyword.directive.javascript"] = { link = "PreProc", bold = true },

		-- javaScript                     = { fg = cp.purple },
		-- javaScriptParens               = { fg = cp.violet },
	}
end
