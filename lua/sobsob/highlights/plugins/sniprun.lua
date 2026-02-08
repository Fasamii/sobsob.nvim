return function(cp)
	return {
		SniprunVirtualTextOk = { fg = cp.colors.orange },
		SniprunFloatingWinOk = { fg = cp.colors.orange },
		SniprunVirtualTextErr = { bg = cp.diagnostics.error, fg = cp.ui.fg },
		SniprunFloatingWinErr = { bg = cp.diagnostics.error, fg = cp.ui.fg },
	}
end
