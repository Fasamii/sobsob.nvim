return function(cp)
	return {
		-- TODO: check if you even need to override these
		-- TODO: link these instead of redefining colors
		hsPragma           = { fg = cp.cyan },
		hsImportModuleName = { fg = cp.green },
		hsImportGroup      = { fg = cp.green },
		hsDelimiter        = { fg = cp.violet },
	}
end
