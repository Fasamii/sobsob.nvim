local M = {};
local saved_opts;
local last_palette;

local function set_hls(highlights)
	for group, style in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, style);
	end
end

function M.setup(opts, palette)
	opts = opts or {};
	saved_opts = opts;

	palette = palette or last_palette or "sobsob";
	last_palette = palette;

	local cp = require("sobsob.palettes." .. palette);
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

	local hls = require("sobsob.hls")(cp);
	if opts.hl ~= nil then
		if (type(opts.hl) ~= "table") then
			-- TODO: handle error
		else
			for group, style in pairs(opts.hl) do
				if type(group) ~= "string" or type(style) ~= "table" then
					-- TODO: handle error
				else
					hls[group] = style;
				end
			end
		end
	end

	set_hls(hls);
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
