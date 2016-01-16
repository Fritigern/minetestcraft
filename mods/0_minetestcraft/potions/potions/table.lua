minetest.register_node("potions:table", {
	description = "Potion Table",
	tiles = {"potions_table.png"},
	groups = {dig_immediate=2},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("main", 4)
		meta:set_string("formspec", ""
					.."size[6,6]"
					.."list[context;main;1,2;4,1;]"
					.."label[2,4;type: ${type} points: ${points}]")
		meta:set_string("type", "")
		meta:set_int("points", 0)
	end,
})