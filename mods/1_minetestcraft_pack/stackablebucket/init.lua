local function check_protection(pos, name, text)
	if minetest.is_protected(pos, name) then
		minetest.log("action", (name ~= "" and name or "A mod")
			.. " tried to " .. text
			.. " at protected position "
			.. minetest.pos_to_string(pos)
			.. " with a bucket")
		minetest.record_protection_violation(pos, name)
		return true
	end
	return false
end

minetest.register_craftitem(":bucket:bucket_empty", {
	description = "Empty Bucket",
	inventory_image = "bucket.png",
	liquids_pointable = true,
	on_use = function(itemstack, user, pointed_thing)
		-- Must be pointing to node
		if pointed_thing.type ~= "node" then
			return
		end
		-- Check if pointing to a liquid source
		node = minetest.get_node(pointed_thing.under)
		liquiddef = bucket.liquids[node.name]
		if liquiddef ~= nil and liquiddef.itemname ~= nil and
			(node.name == liquiddef.source or
			(node.name == liquiddef.flowing and
				minetest.setting_getbool("liquid_finite"))) then
			if check_protection(pointed_thing.under,
					user:get_player_name(),
					"take ".. node.name) then
				return
			end
			
			-- only one bucket: replace
			local count = itemstack:get_count()
			if count == 1 then
				minetest.add_node(pointed_thing.under, {name="air"})
				return ItemStack({name = liquiddef.itemname,
					metadata = tostring(node.param2)})
			end

			-- staked buckets: add a filled bucket, replace stack
			local inv = user:get_inventory()
			if inv:room_for_item("main", liquiddef.itemname) then
				minetest.add_node(pointed_thing.under, {name="air"})
				count = count - 1
				itemstack:set_count(count)
				if node.name == liquiddef.source then
					node.param2 = LIQUID_MAX
				end
				bucket_liquid = ItemStack({name = liquiddef.itemname,
					metadata = tostring(node.param2)})
				inv:add_item("main", bucket_liquid)
				return itemstack
			else
				minetest.chat_send_player(user:get_player_name(), "Your inventory is full.")
			end

		end
	end,
})
