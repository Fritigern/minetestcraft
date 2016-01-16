if minetest.get_modpath("moreores") then
	minetest.register_node("hicarts:silver_rail", {
		light_source = 7,
		description = "Silver Rail",
		drawtype = "raillike",
		tiles = {"cart_rail_silver.png", "cart_rail_curved_silver.png", "cart_rail_t_junction_silver.png", "cart_rail_crossing_silver.png"},
		inventory_image = "cart_rail_silver.png",
		wield_image = "cart_rail_silver.png",
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		walkable = false,
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
		},
		groups = {dig_immediate = 2, attached_node = 1, rail = 1, connect_to_raillike = 1},
	})
	minetest.register_craft({
		output = "hicarts:silver_rail 6",
		recipe = {
			{"moreores:silver_ingot", "", "moreores:silver_ingot"},
			{"moreores:silver_ingot", "group:stick", "moreores:silver_ingot"},
			{"moreores:silver_ingot", "", "moreores:silver_ingot"},
		}}
	)
end
	




minetest.register_node("hicarts:gold_rail", {
	light_source = 5,
	description = "Gold Rail",
	drawtype = "raillike",
	tiles = {"cart_rail_gold.png", "cart_rail_curved_gold.png", "cart_rail_t_junction_gold.png", "cart_rail_crossing_gold.png"},
	inventory_image = "cart_rail_gold.png",
	wield_image = "cart_rail_gold.png",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {dig_immediate = 2, attached_node = 1, rail = 1, connect_to_raillike = 1},
})

minetest.register_craft({
	output = "hicarts:gold_rail 6",
	recipe = {
		{"default:gold_ingot", "", "default:gold_ingot"},
		{"default:gold_ingot", "group:stick", "default:gold_ingot"},
		{"default:gold_ingot", "", "default:gold_ingot"},
	}}
)

minetest.register_node(":default:rail", {
	description = "Rail",
	drawtype = "raillike",
	tiles = {"cart_rail.png", "cart_rail_curved.png", "cart_rail_t_junction.png", "cart_rail_crossing.png"},
	inventory_image = "cart_rail.png",
	wield_image = "cart_rail.png",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {dig_immediate = 2, attached_node = 1, rail = 1, connect_to_raillike = 1},
})

if minetest.get_modpath("moreores") then
	-- Moreores' copper rail
	minetest.register_alias("carts:copperrail", "moreores:copper_rail")
else
	minetest.register_node(":carts:copperrail", {
		description = "Copper rail",
		drawtype = "raillike",
		tiles = {"carts_rail_cp.png", "carts_rail_curved_cp.png", "carts_rail_t_junction_cp.png", "carts_rail_crossing_cp.png"},
		inventory_image = "carts_rail_cp.png",
		wield_image = "carts_rail_cp.png",
		paramtype = "light",
		is_ground_content = true,
		walkable = false,
		selection_box = {
			type = "fixed",
			-- but how to specify the dimensions for curved and sideways rails?
			fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
		},
		groups = {dig_immediate = 2, attached_node = 1, rail = 1, connect_to_raillike = 1},
	})

	minetest.register_craft({
		output = "carts:copperrail 12",
		recipe = {
			{"default:copper_ingot", "group:stick", "default:copper_ingot"},
			{"default:copper_ingot", "group:stick", "default:copper_ingot"},
			{"default:copper_ingot", "group:stick", "default:copper_ingot"},
		}
	})
end

-- Speed up

minetest.register_node(":carts:powerrail", {
	description = "Powered rail",
	drawtype = "raillike",
	tiles = {"carts_rail_pwr.png", "carts_rail_curved_pwr.png", "carts_rail_t_junction_pwr.png", "carts_rail_crossing_pwr.png"},
	inventory_image = "carts_rail_pwr.png",
	wield_image = "carts_rail_pwr.png",
	paramtype = "light",
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		-- but how to specify the dimensions for curved and sideways rails?
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {dig_immediate = 2, attached_node = 1, rail = 1, connect_to_raillike = 1},
	
	after_place_node = function(pos, placer, itemstack)
		if not mesecon then
			minetest.get_meta(pos):set_string("cart_acceleration", "0.5")
		end
	end,
	
	mesecons = {
		effector = {
			action_on = function(pos, node)
				hicarts:boost_rail(pos, 0.5)
			end,
			
			action_off = function(pos, node)
				minetest.get_meta(pos):set_string("cart_acceleration", "0")
			end,
		},
	},
})

minetest.register_craft({
	output = "carts:powerrail 6",
	recipe = {
		{"default:steel_ingot", "default:mese_crystal_fragment", "default:steel_ingot"},
		{"default:steel_ingot", "group:stick", "default:steel_ingot"},
		{"default:steel_ingot", "default:mese_crystal_fragment", "default:steel_ingot"},
	}
})

minetest.register_node(":carts:brakerail", {
	description = "Brake rail",
	drawtype = "raillike",
	tiles = {"carts_rail_brk.png", "carts_rail_curved_brk.png", "carts_rail_t_junction_brk.png", "carts_rail_crossing_brk.png"},
	inventory_image = "carts_rail_brk.png",
	wield_image = "carts_rail_brk.png",
	paramtype = "light",
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		-- but how to specify the dimensions for curved and sideways rails?
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {dig_immediate = 2, attached_node = 1, rail = 1, connect_to_raillike = 1},
	
	after_place_node = function(pos, placer, itemstack)
		if not mesecon then
			minetest.get_meta(pos):set_string("cart_acceleration", "-0.2")
		end
	end,
	
	mesecons = {
		effector = {
			action_on = function(pos, node)
				hicarts:boost_rail(pos, -0.2)
			end,
			
			action_off = function(pos, node)
				minetest.get_meta(pos):set_string("cart_acceleration", "0")
			end,
		},
	},
})

minetest.register_craft({
	output = "carts:brakerail 6",
	recipe = {
		{"default:steel_ingot", "default:coal_lump", "default:steel_ingot"},
		{"default:steel_ingot", "group:stick", "default:steel_ingot"},
		{"default:steel_ingot", "default:coal_lump", "default:steel_ingot"},
	}
})
