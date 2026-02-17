return function(cp)
	return {
		["@lsp.type.macro.rust"]       = { link = "Function" },
		["@lsp.type.namespace.rust"]   = {}, -- HACK: rust-analyzer on init incorrectly assigns that hi group
		["@lsp.mod.intraDocLink.rust"] = { fg = "#d39321" },
	}
end
