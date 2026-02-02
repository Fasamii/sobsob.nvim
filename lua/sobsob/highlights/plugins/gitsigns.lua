return function(cp)
	return {
		GitSignsCurrentLineBlame = { fg = cp.gray.black_25 },
		GitSignsAdd              = { bg = cp.diagnostics.git_add_dimm, bold = true },
		GitSignsDelete           = { bg = cp.diagnostics.git_del_dimm, bold = true },
		GitSignsChange           = { bg = cp.diagnostics.git_mod_dimm, bold = true },
		-- GitSignsStagedAdd        = { bg = cp.black_dark },
		-- GitSignsStagedChange     = { bg = cp.black_dark },
		-- GitSignsStagedDelete     = { bg = cp.black_dark },
	}
end
