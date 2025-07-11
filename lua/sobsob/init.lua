local M = {};
local saved_opts = nil;

local autocmd_group = nil;

local function rm_autocmds()
	if autocmd_group ~= nil then
		vim.api.nvim_del_augroup_by_id(autocmd_group);
		autocmd_group = nil
	end
end

local function set_hl(hl)
	for group, options in pairs(hl) do
		vim.api.nvim_set_hl(0, group, options);
	end
end

local function setup_listener(hl, custom_hl)
	rm_autocmds();

	autocmd_group = vim.api.nvim_create_augroup("Sobsob handler", { clear = true });
	vim.api.nvim_create_autocmd("ColorScheme", {
		group = autocmd_group,
		callback = function(args)
			if args.match ~= "sobsob" then
				rm_autocmds()
			end
		end
	})


	for lang, highlights in pairs(custom_hl) do
		lang = lang:sub(2);
		vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter", "VimEnter" }, {
			group = autocmd_group,
			callback = function(args)
				local ft = vim.bo[args.buf].filetype
				-- vim.print(args, ft);
				if ft == lang then
					vim.schedule(function()
						set_hl(highlights);
					end);
				else
					set_hl(hl)
				end
			end
		});
	end
end

function M.setup(opts, palette)
	palette = palette or "sobsob";
	opts = opts or {};
	saved_opts = opts;

	local cp = require("sobsob.palettes." .. palette);
	local custom_cp = {};

	if opts.cp ~= nil then
		for variable, value in pairs(opts.cp) do
			if variable:sub(1, 1) == "." then
				if custom_cp[variable] == nil then
					custom_cp[variable] = {};
				end
				for color, hex in pairs(value) do
					custom_cp[variable][color] = hex;
				end
			else
				cp[variable] = value;
			end
		end
	end

	local custom_hl = {};
	local hl = require("sobsob.hl")(cp);

	if opts.hi ~= nil then
		for variable, value in pairs(opts.hi) do
			if variable:sub(1, 1) == "." then
				if custom_hl[variable] == nil then
					custom_hl[variable] = {};
				end
				if custom_cp[variable] ~= nil then
					custom_hl[variable] = require("sobsob.hl")(vim.tbl_deep_extend("force", cp,
						custom_cp[variable]));
				else
					custom_hl[variable] = require("sobsob.hl")(cp);
				end
			else
				hl[variable] = value;
			end
		end
	else
		for variable, value in pairs(custom_cp) do
			custom_hl[variable] = require("sobsob.hl")(vim.tbl_deep_extend("force", cp, value));
		end
	end

	set_hl(hl);
	setup_listener(hl, custom_hl);
end

function M.reload(palette)
	if saved_opts ~= nil then
		M.setup(saved_opts, palette);
	else
		M.setup({}, palette);
		vim.notify(
			"The saved options arent saved (they should be at that point)\n\t if you canre they are saved at the startup on nvim",
			vim.log.levels.ERROR);
	end
end

return M;
