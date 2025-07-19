local M = {};
local saved_opts = nil;

local autocmd_group = nil;

local function deep_copy(orig)
	local copy = {}
	for k, v in pairs(orig) do
		if type(v) == "table" then
			copy[k] = deep_copy(v)
		else
			copy[k] = v
		end
	end
	return copy
end

local function rm_autocmds()
	if autocmd_group ~= nil then
		vim.api.nvim_del_augroup_by_id(autocmd_group);
		autocmd_group = nil
	end
end

local function set_hl(hi)
	for group, options in pairs(hi) do
		vim.api.nvim_set_hl(0, group, options);
	end
end

local function setup_listener(hi, lang_spec_hi, lang_spec_misc)
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


	for lang, highlights in pairs(lang_spec_hi) do
		vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter", "VimEnter" }, {
			group = autocmd_group,
			callback = function(args)
				local ft = vim.bo[args.buf].filetype
				if ft == lang then
					vim.schedule(function()
						set_hl(highlights);
					end);
				else
					set_hl(hi)
				end

				-- FIX: treesitter enabling if not disabled for theat language
				if lang_spec_misc[lang] then
					if lang_spec_misc[lang].disable_treesitter ~= nil then
						if lang_spec_misc[lang].disable_treesitter then
							vim.treesitter.stop(args.buf);
						end
					end
				end
			end
		});
	end
end

function M.setup(opts, palette)
	palette = palette or "sobsob";
	opts = opts or {};
	saved_opts = opts;
	local lang_spec_hl = {};
	local lang_misc = {};

	local cp = deep_copy(require("sobsob.palettes." .. palette));
	if opts.cp ~= nil then
		for color, hex in pairs(opts.cp) do
			cp[color] = hex;
		end
	end
	local base_hl = require("sobsob.hi")(cp);

	if opts.hi ~= nil then
		for group, options in pairs(opts.hi) do
			base_hl[group] = options;
		end
	end

	for variable, value in pairs(opts) do
		if variable:sub(1, 1) == "." then
			local lang = variable:sub(2)
			local colors = deep_copy(require("sobsob.palettes." .. palette));

			if opts.cp ~= nil then
				for color, hex in pairs(opts.cp) do
					colors[color] = hex;
				end
			end

			if value.cp ~= nil then
				for color, hex in pairs(value.cp) do
					colors[color] = hex;
				end
			end

			local lang_hl = require("sobsob.hi")(colors);

			if opts.hi ~= nil then
				for group, options in pairs(opts.hi) do
					lang_hl[group] = options;
				end
			end

			if value.hi ~= nil then
				for group, options in pairs(value.hi) do
					lang_hl[group] = options;
				end
			end

			if value.disable_treesitter ~= nil then
				if lang_misc[lang] == nil then
					lang_misc[lang] = {};
				end
				lang_misc[lang].disable_treesitter = value.disable_treesitter;
			end

			lang_spec_hl[lang] = lang_hl;
		end
	end

	set_hl(base_hl);
	setup_listener(base_hl, lang_spec_hl, lang_misc);
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
