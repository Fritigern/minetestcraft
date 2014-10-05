-- node crated with NodeBoxEditor --

-- found  here https://forum.minetest.net/viewtopic.php?id=2840 --

-- code by Semmett9 / Infinitum --
-- torch rotation by addi --


local function placeTorch(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local dir = {
				x = p1.x - p0.x,
				y = p1.y - p0.y,
				z = p1.z - p0.z
			}
			param2 = minetest.dir_to_facedir(dir,false)
			local correct_rotation={
				[0]=3,
				[1]=0,
				[2]=1,
				[3]=2
			}
			if p0.y>p1.y then
			--place torch on ceiling
			minetest.add_node(p1, {name="3d_torch:torch_ceiling"})
			elseif p0.y<p1.y then
			--place torch on floor
			minetest.add_node(p1, {name="3d_torch:torch_floor"})
			else
			--place torch on wall
			minetest.add_node(p1, {name="3d_torch:torch_wall",param2=correct_rotation[param2]})
			--return minetest.item_place(itemstack, placer, pointed_thing, param2)
			end
			itemstack:take_item()
			return itemstack
						
end

minetest.register_node("3d_torch:torch_ceiling",{
	tiles = {
	"3d_torch_torch_top.png",
	"3d_torch_torch_top.png",
	{ name="3d_tprch_torch_on_roof_animated.png",
				animation={
					type="vertical_frames",
					aspect_w=40,
					aspect_h=40,
					length=1.0
					}
				}
			},
	
	inventory_image = "default_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	light_source = LIGHT_MAX-1,
	is_ground_content = true,
	walkable = false,
	sunlight_propagates = true,
	drawtype="nodebox",
	paramtype = "light",
	on_place = placeTorch,
	groups = {choppy=2,dig_immediate=3,flammable=1,hot=2}, 
	drop = 'default:torch',
	node_box = {
		type = "fixed",
		fixed = {
			{0.0696325,0.5,0.0638297,-0.0638297,-0.124758,-0.0696325}, --NodeBox1
			{0.336557,0.0667312,-0.0698737,-0.301741,-0.5,-0.0698737}, --NodeBox2
			{0.336557,0.0725339,0.0693932,-0.307544,-0.5,0.0693932}, --NodeBox3
			{-0.0522243,0.0841393,0.31311,-0.0522243,-0.5,-0.307788}, --NodeBox4
			{0.0696325,0.0783366,0.318913,0.0696325,-0.5,-0.296182}, --NodeBox5
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
		{0.0696325,0.5,0.0638297,-0.0638297,-0.124758,-0.0696325}, --NodeBox1
		},
	},
	sounds = default.node_sound_defaults(),
})

--the torch wall
minetest.register_node("3d_torch:torch_wall",{
	tiles = {
	"3d_torch_torch_top.png",
	"3d_torch_torch_top.png",
	{name="3d_tprch_torch_on_floor_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.0}},
	{name="3d_tprch_torch_on_floor_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.0}},
	{name="3d_torch_torch_right_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.0}},
	{name="3d_torch_torch_left_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.0}},
	},
	inventory_image = "default_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	light_source = LIGHT_MAX-1,
	is_ground_content = false,
	walkable = false,
	sunlight_propagates = true,
	drawtype="nodebox",
	paramtype = "light",
	on_place = placeTorch,
	paramtype2 = "facedir",
	groups = {choppy=2,dig_immediate=3,flammable=1,hot=2}, 
	drop = 'default:torch',
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.409091,-0.0625,-0.375,-0.362669,0.0625}, --NodeBox1
			{-0.484526,-0.362669,-0.0638297,-0.359768,-0.319149,0.0638297}, --NodeBox2
			{-0.348163,-0.281431,-0.0638297,-0.470019,-0.32205,0.0638297}, --NodeBox3
			{-0.455513,-0.240812,-0.0638297,-0.336557,-0.281431,0.0638297}, --NodeBox4
			{-0.32205,-0.240812,-0.0638297,-0.441006,-0.197292,0.0638297}, --NodeBox5
			{-0.426499,-0.197292,-0.0638297,-0.307544,-0.156673,0.0638297}, --NodeBox6
			{-0.414894,-0.156673,-0.0638297,-0.295938,-0.113153,0.0638297}, --NodeBox7
			{-0.5,-0.446808,-0.0638297,-0.38588,-0.409091,0.0638297}, --NodeBox8
			{-0.5,-0.484526,-0.0638297,-0.397485,-0.446808,0.0638297}, --NodeBox9
			{-0.403288,-0.113153,-0.0638297,-0.284333,-0.0696325,0.0638297}, --NodeBox10
			{-0.388782,-0.0696325,-0.0638297,-0.269826,-0.0290134,0.0638297}, --NodeBox11
			{-0.5,-0.0290134,-0.0638297,-0.0667311,0.5,-0.0638297}, --NodeBox12
			{-0.5,-0.0290134,0.0609284,-0.0667311,0.5,0.0609284}, --NodeBox13
			{-0.388782,-0.0290134,-0.199956,-0.388782,0.5,0.20914}, --NodeBox14
			{-0.269826,-0.0290134,-0.197292,-0.269826,0.5,0.205996}, --NodeBox15
		}
	},
		selection_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.4912921,-0.110013,-0.261122,0.182785,0.11}, --NodeBox1
		},
	},
	sounds = default.node_sound_defaults(),
})

--3d torch on floor
minetest.register_node("3d_torch:torch_floor",{
	tiles = {
	"3d_torch_torch_top.png",
	"3d_torch_torch_top.png",
	{ name="3d_tprch_torch_on_floor_animated.png",
		animation={
			type="vertical_frames",
			aspect_w=40,
			aspect_h=40,
			length=1.0
			}
		}
	},
	
	inventory_image = "default_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	light_source = LIGHT_MAX-1,
	is_ground_content = false,
	walkable = false,
	sunlight_propagates = true,
	drawtype="nodebox",
	paramtype = "light",
	groups = {choppy=2,dig_immediate=3,flammable=1,hot=2}, 
	drop = 'default:torch',
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0696325,-0.5,-0.0638297,0.0638297,0.124758,0.0696325}, --NodeBox1
			{-0.336557,-0.0667312,0.0698737,0.301741,0.5,0.0698737}, --NodeBox2
			{-0.336557,-0.0725339,-0.0693932,0.307544,0.5,-0.0693932}, --NodeBox3
			{0.0522243,-0.0841393,-0.31311,0.0522243,0.5,0.307788}, --NodeBox4
			{-0.0696325,-0.0783366,-0.318913,-0.0696325,0.5,0.296182}, --NodeBox5
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
		{-0.0696325,-0.5,-0.0638297,0.0638297,0.1,0.0696325}, --NodeBox1
		},
	},
	sounds = default.node_sound_defaults(),
})

--abm that converts the already placed torches to the 3d ones
minetest.register_abm({
	nodenames = {"default:torch"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local convert_facedir={
			[2]=2,
			[3]=0,
			[4]=1,
			[5]=3
			
		}
		print(node.param2)
		if node.param2 == 1 then
		minetest.swap_node(pos, {name="3d_torch:torch_floor"})
		elseif node.param2 == 0 then
		minetest.swap_node(pos, {name="3d_torch:torch_ceiling"})
		else
		minetest.swap_node(pos, {name="3d_torch:torch_wall",param2=convert_facedir[node.param2]})
		end
	end,
})


--overwrite the default torch to make shure that the torches are placed
minetest.register_node(":default:torch", {
	description = "Torch",
	drawtype = "torchlike",
	--tiles = {"default_torch_on_floor.png", "default_torch_on_ceiling.png", "default_torch.png"},
	tiles = {
		{name="default_torch_on_floor_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="default_torch_on_ceiling_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="default_torch_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	inventory_image = "default_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	paramtype = "light",
	on_place = placeTorch,
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	is_ground_content = false,
	walkable = false,
	light_source = LIGHT_MAX-1,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	groups = {choppy=2,dig_immediate=3,flammable=1,attached_node=1,hot=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
})