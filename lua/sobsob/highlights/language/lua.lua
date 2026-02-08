return function(cp)
	return {
		["@constructor.lua"]                         = { link = "Delimiter" },
		["@keyword.directive.lua"]                   = { link = "PreProc", bold = true },
		["@lsp.typemod.variable.defaultLibrary.lua"] = { fg = cp.magneta },
		["@lsp.mod.defaultLibrary.lua"]              = { link = "Special" },
	}
end
