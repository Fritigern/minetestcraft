function hicarts:get_sign(z)
	if z == 0 then
		return 0
	else
		return z / math.abs(z)
	end
end

function hicarts:velocity_to_dir(v)
	if math.abs(v.x) > math.abs(v.z) then
		return {x=hicarts:get_sign(v.x), y=hicarts:get_sign(v.y), z=0}
	else
		return {x=0, y=hicarts:get_sign(v.y), z=hicarts:get_sign(v.z)}
	end
end

function hicarts:is_rail(pos, railtype)
	local node = minetest.get_node(pos).name
	if node == "ignore" then
		local vm = minetest.get_voxel_manip()
		local emin, emax = vm:read_from_map(pos, pos)
		local area = VoxelArea:new{
			MinEdge = emin,
			MaxEdge = emax,
		}
		local data = vm:get_data()
		local vi = area:indexp(pos)
		node = minetest.get_name_from_content_id(data[vi])
	end
	if minetest.get_item_group(node, "rail") == 0 then
		return false
	end
	if not railtype then
		return true
	end
	return minetest.get_item_group(node, "connect_to_raillike") == railtype
end

function hicarts:check_front_up_down(pos, dir_, check_down, railtype)
	local dir = vector.new(dir_)
	local cur = nil
	
	-- Front
	dir.y = 0
	cur = vector.add(pos, dir)
	if hicarts:is_rail(cur, railtype) then
		return dir
	end
	-- Up
	if check_down then
		dir.y = 1
		cur = vector.add(pos, dir)
		if hicarts:is_rail(cur, railtype) then
			return dir
		end
	end
	-- Down
	dir.y = -1
	cur = vector.add(pos, dir)
	if hicarts:is_rail(cur, railtype) then
		return dir
	end
	return nil
end

function hicarts:get_rail_direction(pos_, dir, ctrl, old_switch, railtype)
	local pos = vector.round(pos_)
	local cur = nil
	local left_check, right_check = true, true
	
	-- Check left and right
	local left = {x=0, y=0, z=0}
	local right = {x=0, y=0, z=0}
	if dir.z ~= 0 and dir.x == 0 then
		left.x = -dir.z
		right.x = dir.z
	elseif dir.x ~= 0 and dir.z == 0 then
		left.z = dir.x
		right.z = -dir.x
	end
	
	if ctrl then
		if old_switch == 1 then
			left_check = false
		elseif old_switch == 2 then
			right_check = false
		end
		if ctrl.left and left_check then
			cur = hicarts:check_front_up_down(pos, left, false, railtype)
			if cur then
				return cur, 1
			end
			left_check = false
		end
		if ctrl.right and right_check then
			cur = hicarts:check_front_up_down(pos, right, false, railtype)
			if cur then
				return cur, 2
			end
			right_check = true
		end
	end
	
	-- Normal
	cur = hicarts:check_front_up_down(pos, dir, true, railtype)
	if cur then
		return cur
	end
	
	-- Left, if not already checked
	if left_check then
		cur = hicarts:check_front_up_down(pos, left, false, railtype)
		if cur then
			return cur
		end
	end
	
	-- Right, if not already checked
	if right_check then
		cur = hicarts:check_front_up_down(pos, right, false, railtype)
		if cur then
			return cur
		end
	end
	
	-- Backwards
	if not old_switch then
		cur = hicarts:check_front_up_down(pos, {
				x = -dir.x,
				y = dir.y,
				z = -dir.z
			}, true, railtype)
		if cur then
			return cur
		end
	end
	
	return {x=0, y=0, z=0}
end

function hicarts:boost_rail(pos, amount)
	minetest.get_meta(pos):set_string("cart_acceleration", tostring(amount))
	for _,obj_ in ipairs(minetest.get_objects_inside_radius(pos, 0.5)) do
		if not obj_:is_player() and
				obj_:get_luaentity() and
				obj_:get_luaentity().name == "carts:cart" then
			obj_:get_luaentity():on_punch()
		end
	end
end