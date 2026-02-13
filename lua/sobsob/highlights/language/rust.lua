return function(cp)
	return {
		rustSelf                      = { link = "Identifier", bold = true },
		["@variable.builtin.rust"]    = { link = "Identifier", bold = true },

		rustModPath                   = { link = "Type" },
		["@module.rust"]              = { link = "Type" },
		["@type.builtin.rust"]        = { link = "Type" },

		rustSigil                     = { link = "Operator" },

		["@punctuation.special.rust"] = { link = "Delimiter" },
	}
end
