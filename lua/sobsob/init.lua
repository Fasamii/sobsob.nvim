local M = {};

function M.setup(opts)
	opts = opts or {};

	local cp = require("sobsob.colors");
	local hi_foo = require("sobsob.highlights");

	local tmp_hi = {};
	for config, table in pairs(opts) do
		if config == "cp" then
			for filed, value in pairs(table) do
				cp[filed] = value;
			end
		else
			if config == "hi" then
				for filed, value in pairs(table) do
					tmp_hi[filed] = value;
				end
			end
		end
	end

	local hi = hi_foo(cp);
	hi = vim.tbl_deep_extend("force", hi, tmp_hi or {});

	for group, options in pairs(hi) do
		vim.api.nvim_set_hl(0, group, options);
	end
end

return M;
