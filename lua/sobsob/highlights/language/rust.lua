return function(cp)
	return {
		rustSelf                       = { link = "Identifier", bold = true },
		["@variable.builtin.rust"]     = { link = "Identifier", bold = true },

		rustModPath                    = { link = "Type" },
		["@module.rust"]               = { link = "Type" },
		["@type.builtin.rust"]         = { link = "Type" },
		["@lsp.type.namespace.rust"]   = { link = "Type" },

		rustSigil                      = { link = "Operator" },

		["@lsp.type.macro.rust"]       = { link = "Function" },

		["@punctuation.special.rust"]  = { link = "Delimiter" },

		["@lsp.mod.intraDocLink.rust"] = { fg = "#d39321" },

		-- rustStorage                                      = { fg = cp.colors.cyan },
		-- rustAttributeParenthesizedParens                 = { fg = cp.colors.purple },
		-- rustIdentifier                                   = { fg = cp.colors.yellow },
		-- rustFoldBraces                                   = { fg = cp.colors.violet },
		-- rustLifetime                                     = { fg = cp.colors.pink },
		-- rustSigil                                        = { fg = cp.colors.magenta },
		-- ["@lsp.type.static.rust"]                        = { fg = cp.colors.magenta, bold = true },
		-- ["@lsp.typemod.generic.attribute.rust"]          = { fg = cp.colors.pink },
		-- ["@lsp.typemod.operator.macro.rust"]             = { fg = cp.colors.violet },
		-- ["@lsp.typemod.derive.attribute.rust"]           = { fg = cp.colors.pink },
		-- ["@lsp.typemod.attributeBracket.attribute.rust"] = { fg = cp.colors.violet },
		-- ["@lsp.typemod.selfKeyword.declaration.rust"]    = { fg = cp.colors.purple, bold = true },
		-- ["@lsp.typemod.builtinAttribute.attribute.rust"] = { fg = cp.colors.purple },
		-- ["@lsp.type.attributeBracket.rust"]              = { fg = cp.colors.violet },
		-- ["@lsp.type.builtinAttribute.rust"]              = { fg = cp.colors.yellow, bold = true },
		-- ["@lsp.typemod.lifetime.declaration.rust"]       = { fg = cp.colors.pink },
		-- ["@lsp.type.lifetime.rust"]                      = { fg = cp.colors.pink },
		-- ["@lsp.typemod.namespace.attribute.rust"]        = { fg = cp.colors.purple },
		-- ["@lsp.typemod.namespace.procMacro.rust"]        = {fg = cp.colors.cyan },
		-- ["@lsp.type.const.rust"]                         = { fg = cp.colors.magenta, bold = true },
		-- ["@module.rust"]                                 = { fg = cp.colors.yellow },
		-- ['@lsp.typemod.namespace.macro.rust']            = { fg = cp.colors.yellow },
		--
		-- rustCommentLineDoc                               = { fg = cp.colors.white_dimm },
		-- ["@lsp.mod.intraDocLink.rust"]                   = { fg = "#C38C23" },
	}
end
