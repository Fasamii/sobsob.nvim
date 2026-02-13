return function(cp)
	return {
		rustSelf                       = { link = "Identifier", bold = true },
		["@variable.builtin.rust"]     = { link = "Identifier", bold = true },

		rustModPath                    = { link = "Type" },
		["@module.rust"]               = { link = "Type" },
		["@type.builtin.rust"]         = { link = "Type" },
		["@lsp.type.namespace.rust"]   = { link = "Type" },

		rustSigil                      = { link = "Operator" },

		["@punctuation.special.rust"]  = { link = "Delimiter" },

		["@lsp.type.macro.rust"]       = { link = "Function" },

		["@lsp.mod.intraDocLink.rust"] = { fg = "#d39321" },
	}
end
