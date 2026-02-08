return function(cp)
	return {
		SniprunVirtualTextOk = { fg = cp.colors.orange, bg = cp.ui.bg_popup },
		SniprunFloatingWinOk = { fg = cp.colors.orange, bg = cp.ui.bg_popup },
		SniprunVirtualTextErr = { bg = cp.diagnostics.error, fg = cp.ui.fg },
		SniprunFloatingWinErr = { bg = cp.diagnostics.error, fg = cp.ui.fg },
	}
end
