local M = {};
local saved_opts;
local last_palette;

local function notify(msg, lvl)
	vim.notify(
		"[sobsob]: " .. msg,
		lvl or vim.log.levels.WARN
	);
end

local function merge(target, ...)
	for _, t in ipairs { ... } do
		if type(t) == "table" then
			for k, v in pairs(t) do
				target[k] = v
			end
		end
	end
	return target
end

local function set_hl(hl)
	for group, style in pairs(hl) do
		if type(group) ~= "string" then
			notify("Invalid highlights group type: " .. tostring(group));
		elseif type(style) ~= "table" then
			notify("Invalid style type for highlight group: " .. group);
		else
			vim.api.nvim_set_hl(0, group, style);
		end
	end
end

local function get_cp(palette)
	local path = "sobsob.palettes." .. palette;
	local ok, mod = pcall(require, path);
	if not ok then
		error("Pallete not found: " .. palette .. " at " .. path);
	end

	if type(mod) ~= "function" then
		error("Pallete (" .. palette .. ") must return a function: " .. path);
	end

	local ok_call, cp = pcall(mod);
	if not ok_call or type(cp) ~= "table" then
		error("Pallete " .. palette .. " returned invalid data");
	end

	return cp;
end

local function get_hl(modules, cp)
	local hl = {};

	for _, name in ipairs(modules) do
		local path = "sobsob.highlights." .. name;
		local ok, mod = pcall(require, path);

		if not ok then
			notify("Missing highlight module: " .. name);
			goto continue;
		end

		local result;
		if type(mod) == "function" then
			local ok_call;
			ok_call, result = pcall(mod, cp);
			if not ok_call then
				notify("Error in highlights module: " .. name .. " at " .. path);
				goto continue;
			end
		elseif type(mod) == "table" then
			result = mod;
		else
			notify("Invalide highlight module type: " .. name .. " at " .. path);
			goto continue;
		end

		if type(result) ~= "table" then
			notify("Invalid highlights in " .. name .. " at " .. path);
		else
			merge(hl, result);
		end

		::continue::
	end

	return hl;
end

local function override_cp(cp, opts)
	if type(opts.cp) ~= "table" then
		if opts.cp ~= nil then
			notify("opts.cp must be a table");
		end
		return;
	end

	for color, hex in pairs(opts.cp) do
		if type(hex) ~= "string" then
			notify("Invalid color value for " .. color);
		elseif cp[color] == nil then
			notify("Unknown pallette color: ", color);
		else
			cp[color] = hex;
		end
	end
end

local function override_modules(modules, opts)
	if type(opts.modules) ~= "table" then
		return;
	end

	for name, path in pairs(opts.modules) do
		if type(name) ~= "string" or type(path) ~= "string" then
			notify("Invalid module override entry ");
		else
			modules[name] = path;
		end
	end
end

local function override_hl(hl, opts)
	if type(opts.hl) ~= "table" then
		return;
	end

	for group, style in pairs(opts.hl) do
		if type(group) ~= "string" or type(style) ~= "table" then
			notify("Invalid highlight override: " .. tostring(group));
		else
			hl[group] = style;
		end
	end
end

function M.setup(opts, palette)
	opts = opts or {};
	saved_opts = opts;

	palette = palette or last_palette or "sobsob";
	last_palette = palette;

	local cp = get_cp(palette);
	override_cp(cp, opts);

	local modules = {
		"common",
		-- "gui",
		"syntax",
		"treesitter",
		-- "language.bash",
		"language.c",
		"language.css",
		-- "language.haskell",
		"language.html",
		-- "language.hyprlang",
		"language.javascript",
		"language.lua",
		"language.markdown",
		"language.python",
		"language.rust",
		"language.typescript",
		-- "language.zsh",
		"lsp.common",
		"plugins.gitsigns",
		"plugins.indent-blankline",
		"plugins.render_markdown",
		"plugins.telescope",
	};

	override_modules(modules, opts)

	local hl = get_hl(modules, cp);
	override_hl(hl, opts);

	set_hl(hl);
end

function M.reload(palette, opts)
	if saved_opts ~= nil then
		M.setup(saved_opts, palette);
	else
		opts = opts or {};
		M.setup(opts, palette);
	end
end

return M;
