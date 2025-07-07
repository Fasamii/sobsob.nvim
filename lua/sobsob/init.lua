local M = {};

function M.setup(opts)
	opts = opts or {};

	local cp = require("sobsob.colors");
	if opts.cp ~= nil and type(opts.cp) == "table" then
		for filed, value in pairs(opts.cp) do
			if type(value) == "string" then
				cp[filed] = value;
			else
				-- TODO: make valid error messages and call nvim notify with to display errors or smth, make it work
				print("what tf are you trying to do get <" ..
					type(value) .. "> expected String in opts = { cp = { ... }} for sobsob.nvim");
			end
		end
	end;

	local hi = require("sobsob.hl")(cp);
	local lang_spec_hl = require("sobsob.lang_spec_hl")(cp);
	if opts.hi ~= nil and type(opts.hi) == "table" then
		for filed, value in pairs(opts.hi) do
			if filed:sub(1, 1) == "." then
				for group, theme in pairs(value) do
					if lang_spec_hl[filed] == nil then
						lang_spec_hl[filed] = {};
					end
					vim.print(filed);
					vim.print(group);
					lang_spec_hl[filed][group] = theme;
				end
			else
				hi[filed] = value;
			end
		end
	end

	-- TODO: make it detect unused config values and notify about it

	for group, theme in pairs(hi) do
		vim.api.nvim_set_hl(0, group, theme);
	end
	for lang, groups in pairs(lang_spec_hl) do
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local filetype = "." .. args.match;
				if filetype == lang then
					for group, theme in pairs(groups) do
						vim.api.nvim_set_hl(0, group, theme);
					end
				end
			end
		});
	end
end

return M;
