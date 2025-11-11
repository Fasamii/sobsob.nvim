local M = {};
local saved_opts;
local last_palette;

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
			-- TODO: handle error
		elseif type(style) ~= "table" then
			-- TODO: handle error
		else
			vim.api.nvim_set_hl(0, group, style);
		end
	end
end

local function get_cp(palette)
	local path = "sobsob.palettes." .. palette;
	local ok, res = pcall(require, path);
	if not ok then
		-- TODO: handle error;
	end
	return res;
end

local function get_hl(modules, cp)
	local hl = {};
	for _, module_name in ipairs(modules) do
		local ok, module = pcall(require, module_name);
		if not ok then
			-- TODO: handle error
		else
			if type(module) == "function" then
				local ok_cp_call, result = pcall(module, cp);
				if not ok_cp_call then
					-- TODO: handle error
				end
				merge(hl, result);
			elseif type(module) == "table" then
				merge(hl, module);
			end
		end
	end
	return hl;
end

local function override_cp(cp, opts)
	if opts.cp ~= nil then
		if type(opts.cp) ~= "table" then
			-- TODO: handle error here
		else
			for color, hex in pairs(opts.cp) do
				if type(hex) ~= "string" then
					-- TODO: handle error here
				else
					if cp[color] == nil then
						-- TODO: handle error here
					else
						cp[color] = hex;
					end
				end
			end
		end
	end
end

local function override_modules(modules, opts)
	if opts.modules ~= nil then
		for module, path in pairs(opts.modules) do
			if type(module) ~= "string" or type(path) ~= "string" then
				-- TODO: eror
			else
				modules[module] = path;
			end
		end
	end
end

local function override_hl(hl, opts)
	if opts.hl ~= nil then
		if (type(opts.hl) ~= "table") then
			-- TODO: handle error
		else
			for group, style in pairs(opts.hl) do
				if type(group) ~= "string" or type(style) ~= "table" then
					-- TODO: handle error
				else
					hl[group] = style;
				end
			end
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
		"sobsob.highlights.common",
		"sobsob.highlights.gui",
		"sobsob.highlights.syntax",
		"sobsob.highlights.treesitter",
		"sobsob.highlights.patch.c",
		"sobsob.highlights.patch.css",
		"sobsob.highlights.patch.haskell",
		"sobsob.highlights.patch.html",
		"sobsob.highlights.patch.hyprlang",
		"sobsob.highlights.patch.js",
		"sobsob.highlights.patch.python",
		"sobsob.highlights.patch.rust"
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
