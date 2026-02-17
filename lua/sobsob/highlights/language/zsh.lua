return function(cp)
	return {
		zshVariableDef = { link = "Identifier" },
		["@constant.zsh"] = { link = "Identifier" },

		zshFunction = { link = "Function" },

		zshParentheses = { link = "Delimiter" },
		zshBrackets = { link = "Delimiter" },

		zshTypes = { link = "Type" },

		["@punctuation.special"] = { link = "Operator" },

		["@function.sub.zsh"] = { link = "Function" },
	}
end
