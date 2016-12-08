
-- Schematic file format version 4

local mts_save = function(name, schematic)
	local s = minetest.serialize_schematic(schematic, "mts", {})
	local path = minetest.get_modpath("saveschems_fdecor") .. "/schematics"
	local filename = path .. "/" .. name .. ".mts"
	filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
	local file, err = io.open(filename, "wb")
	if err == nil then
		file:write(s)
		file:flush()
		file:close()
	end
	print("Wrote: " .. filename)
end

local _ = {name = "air", prob = 0}
local S = {name = "fdecor:broccoli_stalk", prob = 255, force_place = true}
local F = {name = "fdecor:broccoli_flower", prob = 255, force_place = false}
local H = {name = "fdecor:broccoli_flower", prob = 127, force_place = false}
local L = {name = "fdecor:broccoli_flower", prob = 63, force_place = false}

mts_save("broccoli", {
	size = {x = 3, y = 6, z = 3},
	data = {
		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,

		_,S,_,
		_,S,_,
		_,S,_,
		F,S,F,
		F,S,F,
		F,F,F,

		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,
	},
	yslice_prob = {
		{ypos = 1, prob = 127},
		{ypos = 2, prob = 63}
	}
})

mts_save("mapgen_broccoli", {
	size = {x = 3, y = 7, z = 3},
	data = {
		_,_,_,
		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,

		_,S,_,
		_,S,_,
		_,S,_,
		_,S,_,
		F,S,F,
		F,S,F,
		F,F,F,

		_,_,_,
		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,
	},
	yslice_prob = {
		{ypos = 1, prob = 127},
		{ypos = 2, prob = 63}
	}
})

local S = {name = "fdecor:cauliflower_stalk", prob = 255, force_place = true}
local F = {name = "fdecor:cauliflower_flower", prob = 255, force_place = false}
local H = {name = "fdecor:cauliflower_flower", prob = 127, force_place = false}
local L = {name = "fdecor:cauliflower_flower", prob = 63, force_place = false}

mts_save("cauliflower", {
	size = {x = 3, y = 6, z = 3},
	data = {
		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,

		_,S,_,
		_,S,_,
		_,S,_,
		F,S,F,
		F,S,F,
		F,F,F,

		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,
	},
	yslice_prob = {
		{ypos = 1, prob = 127},
		{ypos = 2, prob = 63}
	}
})

mts_save("mapgen_cauliflower", {
	size = {x = 3, y = 7, z = 3},
	data = {
		_,_,_,
		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,

		_,S,_,
		_,S,_,
		_,S,_,
		_,S,_,
		F,S,F,
		F,S,F,
		F,F,F,

		_,_,_,
		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,
	},
	yslice_prob = {
		{ypos = 1, prob = 127},
		{ypos = 2, prob = 63}
	}
})

local F = {name = "fdecor:purple_cauliflower", prob = 255, force_place = false}
local H = {name = "fdecor:purple_cauliflower", prob = 127, force_place = false}
local L = {name = "fdecor:purple_cauliflower", prob = 63, force_place = false}

mts_save("purple_cauliflower", {
	size = {x = 3, y = 6, z = 3},
	data = {
		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,

		_,S,_,
		_,S,_,
		_,S,_,
		F,S,F,
		F,S,F,
		F,F,F,

		_,_,_,
		_,_,_,
		_,_,_,
		H,F,H,
		F,F,F,
		L,F,L,
	},
	yslice_prob = {
		{ypos = 1, prob = 127},
		{ypos = 2, prob = 63}
	}
})
