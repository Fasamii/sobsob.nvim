return function(cp)
	return {
		rustSelf                                         = { fg = cp.purple, bold = true },
		rustModPath                                      = { fg = cp.yellow },
		rustAttribute                                    = { fg = cp.violet },
		rustAttributeParenthesizedParens                 = { fg = cp.purple },
		rustIdentifier                                   = { fg = cp.yellow },
		["@lsp.typemod.generic.attribute.rust"]          = { fg = cp.pink },
		["@lsp.typemod.operator.macro.rust"]             = { fg = cp.violet },
		["@lsp.typemod.derive.attribute.rust"]           = { fg = cp.pink },
		["@lsp.typemod.attributeBracket.attribute.rust"] = { fg = cp.violet },
		["@lsp.typemod.selfKeyword.declaration.rust"]    = { fg = cp.purple, bold = true },
		["@lsp.typemod.builtinAttribute.attribute.rust"] = { fg = cp.purple },
		["@lsp.type.attributeBracket.rust"]              = { fg = cp.violet },
		["@lsp.type.builtinAttribute.rust"]              = { fg = cp.yellow, bold = true },
		["@lsp.typemod.lifetime.declaration.rust"]       = { fg = cp.pink },
		["@lsp.type.lifetime.rust"]                      = { fg = cp.pink },
		["@lsp.typemod.namespace.attribute.rust"]        = { fg = cp.purple },
		["@lsp.typemod.namespace.macro.rust"]            = { fg = cp.cyan },
		["@lsp.typemod.namespace.procMacro.rust"]        = { fg = cp.cyan },
		["@lsp.type.const.rust"]                         = { fg = cp.magenta, bold = true },

		rustFoldBraces                                   = { fg = cp.violet },
		rustLifetime                                     = { fg = cp.pink },
		rustSigil                                        = { fg = cp.magenta },
	}
end
