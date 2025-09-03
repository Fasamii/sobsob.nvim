-- NOTE: For now all below code is unused

local M = {};

local function to_hex(r, g, b)
	return string.format("%02x%02x%02x", math.floor(r), math.floor(g), math.floor(b));
end

local function to_dec(hex)
	hex = hex:gsub("#", "");
	return
	    tonumber(hex:sub(1, 2), 16),
	    tonumber(hex:sub(3, 4), 16),
	    tonumber(hex:sub(5, 6), 16);
end

local color_cache = {};
function M.brightness(hex, step)
	if color_cache[hex .. "_" .. step] then
		return color_cache[hex .. "_" .. step];
	end

	local r, g, b = to_dec(hex);

	local step_size = 30;
	local adjustment = step * step_size;

	local new_r = math.max(0, math.min(255, r + adjustment));
	local new_g = math.max(0, math.min(255, g + adjustment));
	local new_b = math.max(0, math.min(255, b + adjustment));

	return "#" .. to_hex(new_r, new_g, new_b);
end

function M.genvariants(base)
	local variants = {};
	for name, color in pairs(base) do
		if color == "none" then
			variants[name] = color;
		else
			variants[name] = color;
			variants[name .. "_bright"] = M.brightness(color, 1);
			variants[name .. "_brighter"] = M.brightness(color, 2);
			variants[name .. "_dimm"] = M.brightness(color, -1);
			variants[name .. "_dimmer"] = M.brightness(color, -2);
		end
	end
	return variants;
end
