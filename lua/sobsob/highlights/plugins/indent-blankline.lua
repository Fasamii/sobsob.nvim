-- FIXME: Redo the structure of entire colorscheme as it appears inconvenient
-- and tricky in situations like these also calling function for each module
-- seems unnecessary
return function(cp)
	local ok, hooks = pcall(require, "ibl.hooks");
	if ok then
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = cp.gradient.lv1_dimm });
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = cp.gradient.lv2_dimm });
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = cp.gradient.lv3_dimm });
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = cp.gradient.lv4_dimm });
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = cp.gradient.lv5_dimm });
			vim.api.nvim_set_hl(0, "RainbowViolet", { fg = cp.gradient.lv6_dimm });
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = cp.gradient.lv7_dimm })
		end)
	end

	return {};
end
