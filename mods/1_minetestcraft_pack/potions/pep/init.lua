pep = {}
function pep.register_potion(potiondef)
	local on_use
	if(potiondef.effect_type ~= nil) then
		on_use = function(itemstack, user, pointed_thing)
			playereffects.apply_effect_type(potiondef.effect_type, potiondef.duration, user)
			itemstack:take_item()
			return itemstack
		end
	else
		on_use = function(itemstack, user, pointed_thing)
			itemstack:take_item()
			return itemstack
		end
	end
	minetest.register_craftitem("pep:"..potiondef.basename, {
		description = "Glass Bottle ("..potiondef.contentstring..")",
		inventory_image = "pep_"..potiondef.basename..".png",
		wield_image = "pep_"..potiondef.basename..".png",
		on_use = on_use,
	})
end

playereffects.register_effect_type("pepspeedplus", "High speed", "pep_speedplus.png", {"speed"},
	function(player)
		player:set_physics_override({speed=2})
	end,
	function(effect, player)
		player:set_physics_override({speed=1})
	end
)
playereffects.register_effect_type("pepspeedminus", "Low speed", "pep_speedminus.png", {"speed"},
	function(player)
		player:set_physics_override({speed=0.5})
	end,
	function(effect, player)
		player:set_physics_override({speed=1})
	end
)
playereffects.register_effect_type("pepspeedreset", "Speed neutralizer", "pep_speedreset.png", {"speed"},
	function() end, function() end)
playereffects.register_effect_type("pepjumpplus", "High jump", "pep_jumpplus.png", {"jump"},
	function(player)
		player:set_physics_override({jump=2})
	end,
	function(effect, player)
		player:set_physics_override({jump=1})
	end
)
playereffects.register_effect_type("pepjumpminus", "Low jump", "pep_jumpminus.png", {"jump"},
	function(player)
		player:set_physics_override({jump=0.5})
	end,
	function(effect, player)
		player:set_physics_override({jump=1})
	end
)
playereffects.register_effect_type("pepjumpreset", "Jump height neutralizer", "pep_jumpreset.png", {"jump"},
	function() end, function() end)
playereffects.register_effect_type("pepgrav0", "No gravity", "pep_grav0.png", {"gravity"},
	function(player)
		player:set_physics_override({gravity=0})
	end,
	function(effect, player)
		player:set_physics_override({gravity=1})
	end
)
playereffects.register_effect_type("pepgravreset", "Gravity neutralizer", "pep_gravreset.png", {"gravity"},
	function() end, function() end)
playereffects.register_effect_type("pepregen", "Regeneration", "pep_regen.png", {"health"},
	function(player)
		player:set_hp(player:get_hp()+1)
	end,
	nil, nil, nil, 2
)
playereffects.register_effect_type("pepregen2", "Strong regeneration", "pep_regen2.png", {"health"},
	function(player)
		player:set_hp(player:get_hp()+2)
	end,
	nil, nil, nil, 1
)
playereffects.register_effect_type("pepbreath", "Perfect breath", "pep_breath.png", {"breath"},
	function(player)
		player:set_breath(player:get_breath()+2)
	end,
	nil, nil, nil, 1
)

pep.register_potion({
	basename = "speedplus",
	contentstring = "Running Potion",
	effect_type = "pepspeedplus",
	duration = 30
})

pep.register_potion({
	basename = "speedminus",
	contentstring = "Slug Potion",
	effect_type = "pepspeedminus",
	duration = 30
})
pep.register_potion({
	basename = "speedreset",
	contentstring = "Speed Neutralizer",
	effect_type = "pepspeedreset",
	duration = 0
})
pep.register_potion({
	basename = "breath",
	contentstring = "Air Potion",
	effect_type = "pepbreath",
	duration = 30,
})
pep.register_potion({
	basename = "regen",
	contentstring = "Weak Healing Potion",
	effect_type = "pepregen",
	duration = 10,
})
pep.register_potion({
	basename = "regen2",
	contentstring = "Strong Healing Potion",
	effect_type = "pepregen2",
	duration = 10,
})
pep.register_potion({
	basename = "grav0",
	contentstring = "Non-Gravity Potion",
	effect_type = "pepgrav0",
	duration = 20,
})
pep.register_potion({
	basename = "gravreset",
	contentstring = "Gravity Neutralizer",
	effect_type = "pepgravreset",
	duration = 0,
})
pep.register_potion({
	basename = "jumpplus",
	contentstring = "High Jumping Potion",
	effect_type = "pepjumpplus",
	duration = 30,
})
pep.register_potion({
	basename = "jumpminus",
	contentstring = "Low Jumping Potion",
	effect_type = "pepjumpminus",
	duration = 30,
})
pep.register_potion({
	basename = "jumpreset",
	contentstring = "Jump Neutralizer",
	effect_type = "pepjumpreset",
	duration = 0,
})

--[=[ register crafts ]=]
--[[ normal potions ]]
if(minetest.get_modpath("vessels")~=nil) then
if(minetest.get_modpath("default")~=nil) then
	minetest.register_craft({
		type = "shapeless",
		output = "pep:breath",
		recipe = { "default:papyrus", "default:papyrus", "default:papyrus", "default:papyrus",
			   "default:papyrus", "default:papyrus", "default:papyrus", "default:papyrus", "vessels:glass_bottle" }
	})
	minetest.register_craft({
		type = "shapeless",
		output = "pep:speedminus",
		recipe = { "default:dry_shrub", "vessels:glass_bottle" }
	})
	if(minetest.get_modpath("flowers") ~= nil) then
		minetest.register_craft({
			type = "shapeless",
			output = "pep:jumpplus",
			recipe = { "flowers:flower_geranium", "default:grass_1", "vessels:glass_bottle" }
		})
	end
	minetest.register_craft({
		type = "shapeless",
		output = "pep:jumpminus",
		recipe = { "default:leaves", "default:jungleleaves", "vessels:glass_bottle" }
	})
	minetest.register_craft({
		type = "shapeless",
		output = "pep:regen",
		recipe = { "default:cactus", "default:junglegrass", "vessels:glass_bottle" }
	})
minetest.register_craft({
		type = "shapeless",
		output = "pep:grav0",
		recipe = { "default:mese_crystal", "vessels:glass_bottle" }
	})
end
if(minetest.get_modpath("flowers") ~= nil) then
	minetest.register_craft({
		type = "shapeless",
		output = "pep:speedplus",
		recipe = { "flowers:rose", "flowers:dandelion_yellow", "vessels:glass_bottle" }
	})
end
end

if(minetest.get_modpath("default") ~= nil) then
	minetest.register_craft({
		type = "shapeless",
		output = "pep:regen2",
		recipe = { "default:gold_lump", "pep:regen" }
	})
end

--[[ independent crafts ]]

minetest.register_craft({
	type = "shapeless",
	output = "pep:speedreset",
	recipe = { "pep:speedplus", "pep:speedminus" }
})
minetest.register_craft({
	type = "shapeless",
	output = "pep:jumpreset",
	recipe = { "pep:jumpplus", "pep:jumpminus" }
})
minetest.register_craft({
	type = "shapeless",
	output = "pep:gravreset" ,
	recipe = { "pep:grav0", "group:stone" }
})
