local hmod = minetest.get_modpath("hunger")
local hbmod = minetest.get_modpath("hbhunger")

local replace_pie = function(node, puncher, pos)

	if minetest.is_protected(pos, puncher:get_player_name()) then
		return
	end

	local pie = node.name:split("_")[1]
	local num = tonumber(node.name:split("_")[2])

	if num == 3 then
		node.name = "air"
	elseif num < 3 then
		node.name = pie .. "_" .. (num + 1)
	end

	if hmod then
		local h = hunger.read(puncher)
--print ("hunger is "..h)
		h = math.min(h + 4, 30)
		local ok = hunger.update_hunger(puncher, h)
		minetest.sound_play("hunger_eat", {
			pos = pos, gain = 0.7, hear_distance = 5})
	elseif hbmod then
		local h = tonumber(hbhunger.hunger[puncher:get_player_name()])
--print ("hbhunger is "..h)
		h = math.min(h + 4, 30)
		hbhunger.hunger[puncher:get_player_name()] = h
		minetest.sound_play("hbhunger_eat_generic", {
			pos = pos, gain = 0.7, hear_distance = 5})
	else
		local h = puncher:get_hp()
--print ("health is "..h)
		h = math.min(h + 4, 20)
		puncher:set_hp(h)
	end

	minetest.swap_node(pos, {name = node.name})

end

local register_pie = function(pie, desc)

minetest.register_node("pie:"..pie.."_0", {
	description = desc,
	paramtype = "light",
	sunlight_propagates = false,
	tiles = {
		pie.."_top.png", pie.."_bottom.png", pie.."_side.png",
		pie.."_side.png", pie.."_side.png", pie.."_side.png"
	},
	inventory_image = pie.."_inv.png",
	wield_image = pie.."_inv.png",
	groups = {},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{-0.45, -0.5, -0.45, 0.45, 0, 0.45}},
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		replace_pie(node, puncher, pos)
	end,
})

minetest.register_node("pie:"..pie.."_1", {
	description = "3/4"..desc,
	paramtype = "light",
	sunlight_propagates = false,
	tiles = {
		pie.."_top.png", pie.."_bottom.png", pie.."_side.png",
		pie.."_side.png", pie.."_side.png", pie.."_side.png"
	},
	groups = {not_in_creative_inventory = 1},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{-0.45, -0.5, -0.25, 0.45, 0, 0.45}},
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		replace_pie(node, puncher, pos)
	end,
})

minetest.register_node("pie:"..pie.."_2", {
	description = "Half "..desc,
	paramtype = "light",
	sunlight_propagates = false,
	tiles = {
		pie.."_top.png", pie.."_bottom.png", pie.."_side.png",
		pie.."_side.png", pie.."_side.png", pie.."_side.png"
	},
	groups = {not_in_creative_inventory = 1},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{-0.45, -0.5, 0.0, 0.45, 0, 0.45}},
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		replace_pie(node, puncher, pos)
	end,
})

minetest.register_node("pie:"..pie.."_3", {
	description = "Piece of "..desc,
	paramtype = "light",
	sunlight_propagates = false,
	tiles = {
		pie.."_top.png", pie.."_bottom.png", pie.."_side.png",
		pie.."_side.png", pie.."_side.png", pie.."_side.png"
	},
	groups = {not_in_creative_inventory = 1},
	drawtype = "nodebox",  
	node_box = {
		type = "fixed",
		fixed = {{-0.45, -0.5, 0.25, 0.45, 0, 0.45}},
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		replace_pie(node, puncher, pos)
	end,
})

end

-- Normal Cake
register_pie("pie", "Cake")

minetest.register_craft({
	output = "pie:pie_0",
	recipe = {
		{"farming:sugar", "mobs:bucket_milk", "farming:sugar"},
		{"farming:sugar", "mobs:egg", "farming:sugar"},
		{"farming:wheat", "farming:flour", "farming:wheat"},
	},
	replacements = {{ "mobs:bucket_milk", "bucket:bucket_empty"}}
})

-- Chocolate Cake
register_pie("choc", "Chocolate Cake")

minetest.register_craft({
	output = "pie:choc_0",
	recipe = {
		{"farming:cocoa_beans", "mobs:bucket_milk", "farming:cocoa_beans"},
		{"farming:sugar", "mobs:egg", "farming:sugar"},
		{"farming:wheat", "farming:flour", "farming:wheat"},
	},
	replacements = {{ "mobs:bucket_milk", "bucket:bucket_empty"}}
})

-- Strawberry Cheesecake
register_pie("scsk", "Strawberry Cheesecake")

minetest.register_craft({
	output = "pie:scsk_0",
	recipe = {
		{"ethereal:strawberry", "mobs:bucket_milk", "ethereal:strawberry"},
		{"farming:sugar", "mobs:egg", "farming:sugar"},
		{"farming:wheat", "farming:flour", "farming:wheat"},
	},
	replacements = {{ "mobs:bucket_milk", "bucket:bucket_empty"}}
})

-- Coffee Cake
register_pie("coff", "Coffee Cake")

minetest.register_craft({
	output = "pie:coff_0",
	recipe = {
		{"farming:coffee_beans", "mobs:bucket_milk", "farming:coffee_beans"},
		{"farming:sugar", "mobs:egg", "farming:sugar"},
		{"farming:wheat", "farming:flour", "farming:wheat"},
	},
	replacements = {{ "mobs:bucket_milk", "bucket:bucket_empty"}}
})

-- Red Velvet Cake
register_pie("rvel", "Red Velvet Cake")

minetest.register_craft({
	output = "pie:rvel_0",
	recipe = {
		{"farming:cocoa_beans", "mobs:bucket_milk", "dye:red"},
		{"farming:sugar", "mobs:egg", "farming:sugar"},
		{"farming:flour", "mobs:cheese", "farming:flour"},
	},
	replacements = {{ "mobs:bucket_milk", "bucket:bucket_empty"}}
})

-- Meat Cake
register_pie("meat", "Meat Cake")

minetest.register_craft({
	output = "pie:meat_0",
	recipe = {
		{"mobs:meat_raw", "mobs:egg", "mobs:meat_raw"},
		{"farming:wheat", "farming:wheat", "farming:wheat"},
		{"", "", ""}
	},
})
