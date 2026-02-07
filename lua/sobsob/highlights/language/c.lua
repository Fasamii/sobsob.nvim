return function(cp)
	return {
		cBlock = { link = "Identifier" },

		cUserCont = { link = "Label" },

		cInclude = { link = "PreProc" },
		cDefine = { link = "PreProc" },

		cParen = { link = "Delimiter" },
		cBracket = { link = "Delimiter" },

		["@type.builtin.c"] = { link = "Type" },

		["@keyword.import.c"] = { link = "PreProc" },
		["@keyword.directive.c"] = { link = "PreProc" },
		["@keyword.directive.define.c"] = { link = "PreProc" },
	}
end
