minetest.register_craft({
	type = "cooking",
	cooktime = 13.0,
	output = "pie:pie_0",
	recipe = "pie:piebatter",
})

minetest.register_craft({
        type = "cooking",
        cooktime = 13.0,
        output = "pie:apie_0",
        recipe = "pie:apiebatter",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 3.0,
	output = "pie:applemuffin 4",
	recipe = "pie:amuffinbatter",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 3.0,
	output = "pie:sugar 2",
	recipe = "default:papyrus",
})


minetest.register_craft({
	output = "pie:piebatter 1",
	recipe = {
		{"pie:sugar", "pie:sugar", "pie:sugar"},
		{"pie:sugar", "farming:flour", "pie:sugar"},
		{"farming:wheat", "farming:wheat", "farming:wheat"},
		},
})

minetest.register_craft({
        output = "pie:apiebatter 1",
        recipe = {
                {"pie:sugar", "default:apple", "pie:sugar"},
                {"pie:sugar", "farming:flour", "pie:sugar"},
                {"farming:wheat", "farming:wheat", "farming:wheat"},
                },
})

minetest.register_craft({
	output = "pie:amuffinbatter",
	recipe = {
		{"", "pie:sugar", ""},
		{"", "default:apple", ""},
		{"", "farming:flour", ""},
	},
})

minetest.register_craft({
	output = "pie:knife 1",
	recipe = {
		{"default:steel_ingot", "", ""},
		{"", "default:steel_ingot", ""},
		{"", "default:stick", ""},
		},
})
