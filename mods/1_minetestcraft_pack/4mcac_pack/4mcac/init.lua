mc_aw = -- not full
{
    check_inv,
    kill_hostile,
    kill_passive,
    dig_some_sand,
    dig_some_dirt,
    dig_some_clay,
    get_some_wood =
        {
        craft_a_workbench =
        {
        craft_a_sword=
            {
            get_meat,
            get_bones,
            get_hide,
            },
        craft_a_showel =
            {
            dig_some_sand,
            dig_some_dirt,
            dig_some_clay,
            },
        craft_a_pickaxe=
            {
            dig_some_coal,
            dig_some_cobble=
                {
                make_a_furnace=
                    {
                    smelt_iron=
                            {
                                upgrade=
                                        {
                                        dig_gold,
                                        dig_tin,
                                        dig_copper,
                                        dig_mese,
                                        upgrade={
                                                 dig_diamond =
                                                              {
                                                               upgrade=
                                                                       {
                                                                        dig_obsidian,
                                                                        },
                                                               },
                                                 },
                                        },
                                bucket=
                                        {
                                        water,
                                        lava,
                                        },
                            },
                    smelt_gold,
                    smelt_tin,
                    smelt_copper,
                    smelt_mithril,
                    },
                },
            upgrade,
            },
        craft_an_axe,
        craft_a_hoe,
        },
    full_stack_of_wood,
    },

}

local rus
local locale = os.setlocale(nil, 'collate')
if (locale:find('Russian') ~= nil) or (locale:find('ru_RU') ~= nil) then rus=true else rus = false end
rus=false
-- the beginning of russian
if rus then
awards.register_achievement("check_inv",{
    title = "Проверить карманы",
    description = "Впервые открыть инвентарь",
--  icon = "connect.png",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'check_inv'}
    },
})

awards.register_achievement("kill_hostile",{
    title = "Смерть мобам!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'kill_hostile'}
    },
})

awards.register_achievement("kill_passive",{
    title = "Мясник",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'kill_passive'}
    },
})

awards.register_achievement("dig_some_sand",{
    title = "Да будут пасочки!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_some_sand'}
    },
})

awards.register_achievement("dig_some_dirt",{
    title = "Словно червь",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_some_dirt'}
    },
})

awards.register_achievement("dig_some_clay",{
    title = "Начинающий скульптор",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_some_clay'}
    },
})

awards.register_achievement("get_some_wood",{
    title = "Деревоненавистник",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'get_some_wood'}
    },
})

awards.register_achievement("craft_a_workbench",{
    title = "Грядёт апгрейд",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'craft_a_workbench'}
    },
})

awards.register_achievement("craft_a_sword",{
    title = "Тропа войны найдена",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'craft_a_sword'}
    },
})

awards.register_achievement("get_meat",{
    title = "Мясо убиенных...",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'get_meat'}
    },
})

awards.register_achievement("get_bones",{
    title = "Костьми лечь",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'get_bones'}
    },
})

awards.register_achievement("get_hide",{
    title = "Шкурный интерес",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'get_hide'}
    },
})

awards.register_achievement("craft_a_shovel",{
    title = "Грядут раскопки!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'craft_a_shovel'}
    },
})

awards.register_achievement("dig_some_sand2",{
    title = "Больше пасочек!!!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_some_sand2'}
    },
})

awards.register_achievement("dig_some_dirt2",{
    title = "У червей лопаты нет",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_some_dirt2'}
    },
})

awards.register_achievement("dig_some_clay2",{
    title = "Больше глины!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_some_clay2'}
    },
})

awards.register_achievement("craft_a_pickaxe",{
    title = '"Кир-кир" вниз!',
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'craft_a_pickaxe'}
    },
})

awards.register_achievement("dig_some_coal",{
    title = "Ресурсы!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_some_coal'}
    },
})

awards.register_achievement("dig_some_cobble",{
    title = "Коббл! (камни, блин)",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_some_cobble'}
    },
})

awards.register_achievement("make_a_furnace",{
    title = "Горячо!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'make_a_furnace'}
    },
})

awards.register_achievement("dig_iron",{
    title = "Железо - это \"жесть\"!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_iron'}
    },
})

awards.register_achievement("smelt_iron",{
    title = "Куй железо пока горячо!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'smelt_iron'}
    },
})

awards.register_achievement("upgrade1",{
    title = "Каменный век",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'upgrade1'}
    },
})

awards.register_achievement("upgrade2",{
    title = "Железный век",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'upgrade2'}
    },
})

awards.register_achievement("upgrade3",{
    title = "Бронзовый век",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'upgrade3'}
    },
})

awards.register_achievement("dig_gold",{
    title = "Личный прииск",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_gold'}
    },
})

awards.register_achievement("dig_tin",{
    title = "Серебро?",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_tin'}
    },
})

awards.register_achievement("dig_copper",{
    title = "Не всё то железо...",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_copper'}
    },
})

awards.register_achievement("dig_mese",{
    title = "Внеземные ископаемые",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_mese'}
    },
})

awards.register_achievement("upgrade4",{
    title = "Месеконовый(???) век",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'upgrade4'}
    },
})

awards.register_achievement("dig_diamond",{
    title = "Твоя прелесть!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_diamond'}
    },
})

awards.register_achievement("upgrade5",{
    title = "Прелесть в дело!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'upgrade5'}
    },
})

awards.register_achievement("dig_obsidian",{
    title = "Добыть недобываемое",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_obsidian'}
    },
})

awards.register_achievement("bucket",{
    title = "Цистерна... типа :)",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'bucket'}
    },
})

awards.register_achievement("water",{
    title = "Воды мне! Воды!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'water'}
    },
})

awards.register_achievement("lava",{
    title = "Горячая тема",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'lava'}
    },
})

awards.register_achievement("smelt_gold",{
    title = "9999! Или нет?",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'smelt_gold'}
    },
})

awards.register_achievement("smelt_tin",{
    title = "Стойкий оловянный",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'smelt_tin'}
    },
})

awards.register_achievement("smelt_copper",{
    title = "Медная болванка",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'smelt_copper'}
    },
})

awards.register_achievement("dig_silver",{
    title = "Серебро!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'dig_silver'}
    },
})

awards.register_achievement("smelt_silver",{
    title = "Драгметалл!",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'smelt_silver'}
    },
})

awards.register_achievement("smelt_mithril",{
    title = "Эльфийская тайна",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'smelt_mithril'}
    },
})

awards.register_achievement("craft_an_axe",{
    title = "Будущий дровосек",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'craft_an_axe'}
    },
})

awards.register_achievement("craft_a_hoe",{
    title = "Фермер",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'craft_a_hoe'}
    },
})

awards.register_achievement("full_stack_of_wood",{
    title = "Запасы на зиму...",
    description = "",
--  icon = "",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'full_stack_of_wood'}
    },
})
-- custom test
awards.register_achievement("award_isghost1",{
    title = "Полтергейст - это ты!",
    description = "Стать призраком",
--  icon = "connect.png",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'isghost'}
    },
})
-- custom test 2
awards.register_achievement("award_suicide1",{
    title = "Безысходность",
    description = "Совершить суицид",
--  icon = "connect.png",
    trigger={
        type="custom",
        target=1,
        award_data = {name = 'suicide'}
    },
})

else -- end of russian -- the beginning of international

end

--[[  --on_dig
if not awards.dig_some_sand then awards.dig_some_sand={} end--
if not awards.dig_some_dirt then awards.dig_some_dirt={} end--
if not awards.dig_some_clay then awards.dig_some_clay={} end--
if not awards.dig_some_sand2 then awards.dig_some_sand2={} end--
if not awards.dig_some_dirt2 then awards.dig_some_dirt2={} end--
if not awards.dig_some_clay2 then awards.dig_some_clay2={} end--
if not awards.get_some_wood then awards.get_some_wood={} end--
if not awards.dig_some_coal then awards.dig_some_coal={} end--
if not awards.dig_some_cobble then awards.dig_some_cobble={} end--
if not awards.dig_gold then awards.dig_gold={} end--
if not awards.dig_tin then awards.dig_tin={} end--
if not awards.dig_iron then awards.dig_iron={} end--
if not awards.dig_copper then awards.dig_copper={} end--
if not awards.dig_mese then awards.dig_mese={} end--
if not awards.dig_diamond then awards.dig_diamond={} end--
if not awards.dig_obsidian then awards.dig_obsidian={} end--
if not awards.dig_silver then awards.dig_silver={} end--
-- on_timer
if not awards.get_meat then awards.get_meat={} end
if not awards.get_bones then awards.get_bones={} end
if not awards.get_hide then awards.get_hide={} end
if not awards.check_inv then awards.check_inv={} end
if not awards.kill_hostile then awards.kill_hostile={} end
if not awards.kill_passive then awards.kill_passive={} end
if not awards.full_stack_of_wood then awards.full_stack_of_wood={} end
if not awards.award_isghost1 then awards.award_isghost1={} end--
if not awards.award_suicide1 then awards.award_suicide1={} end--
-- on_place
if not awards.water then awards.water={} end--
if not awards.lava then awards.lava={} end--
-- on_craft
if not awards.bucket then awards.bucket={} end--
if not awards.upgrade1 then awards.upgrade1={} end--
if not awards.upgrade2 then awards.upgrade2={} end--
if not awards.upgrade3 then awards.upgrade3={} end--
if not awards.upgrade4 then awards.upgrade4={} end--
if not awards.upgrade5 then awards.upgrade5={} end--
if not awards.craft_a_workbench then awards.craft_a_workbench={} end--
if not awards.craft_a_sword then awards.craft_a_sword={} end--
if not awards.craft_a_shovel then awards.craft_a_shovel={} end--
if not awards.craft_a_pickaxe then awards.craft_a_pickaxe={} end--
if not awards.craft_an_axe then awards.craft_an_axe={} end--
if not awards.craft_a_hoe then awards.craft_a_hoe={} end--
if not awards.smelt_iron then awards.smelt_iron={} end--
if not awards.smelt_gold then awards.smelt_gold={} end--
if not awards.smelt_tin then awards.smelt_tin={} end--
if not awards.smelt_copper then awards.smelt_copper={} end--
if not awards.smelt_silver then awards.smelt_silver={} end--
if not awards.smelt_mithril then awards.smelt_mithril={} end--
if not awards.make_a_furnace then awards.make_a_furnace={} end--
]]--

minetest.register_on_dignode(function(pos, oldnode, digger)
       -- fall off if there's no needed things...
       -- ("stolen" from triggers.lua")
    if not digger or not pos or not oldnode then
        return
    end
    local nodedug = string.split(oldnode.name, ":")
    if #nodedug ~= 2 then
        print(oldnode.name.." is in wrong format!")
        return
    end
    local mod=nodedug[1]
    local item=nodedug[2]
    local playern = digger:get_player_name()
    if (not playern or not nodedug or not mod or not item) then
        return
    end
    awards.assertPlayer(playern)
    awards.tbv(awards.players[playern].count,                mod)
    awards.tbv(awards.players[playern].count[mod], item, 0)
    -- Increment counder
    awards.players[playern].count[mod][item]=awards.players[playern].count[mod][item]+1
      -- the end of "stolen" code
       local player = digger
       local pll = player:get_player_name()
       local shift = player:get_player_control()["sneak"]
       local wstack = player:get_wielded_item():get_name()
           local name = oldnode.name
           local c = awards.players[playern].count[mod][item] --stack:get_count()
           -- some sand
           local m = string.find(name, "sand")
           if c>4 and m then
              local y = string.find(wstack,"shovel")
              if c>30 and y then
                 awards.players[pll].dig_some_sand2=1
              else
                 awards.players[pll].dig_some_sand=1
              end
           end
           -- some dirt
           local m = string.find(name, "dirt")
           if c>4 and m then
              local y = string.find(wstack,"shovel")
              if c>30 and y then
                 awards.players[pll].dig_some_dirt2=1
              else
                 awards.players[pll].dig_some_dirt=1
              end
           end
           -- some clay
           local m = string.find(name, "clay")
           if c>4 and m then
              local y = string.find(wstack,"shovel")
              if c>30 and y then
                 awards.players[pll].dig_some_clay2=1
              else
                 awards.players[pll].dig_some_clay=1
              end
           end
           -- some wood
           local m = string.find(name, "tree")
           if c>4 and m then
                 awards.players[pll].get_some_wood=1
           end
           -- some coal
           local m = string.find(name, "coal")
           if c>4 and m then
                 awards.players[pll].dig_some_coal=1
           end
           -- some cobble
           local m = string.find(name, "stone")
           if c>0 and m then
                 awards.players[pll].dig_some_cobble=1
           end
           -- some gold
           local m = string.find(name, "gold")
           if c>0 and m then
                 awards.players[pll].dig_gold=1
           end
           -- some tin
           local m = string.find(name, "tin")
           if c>0 and m then
                 awards.players[pll].dig_tin=1
           end
           -- some copper
           local m = string.find(name, "copper")
           if c>0 and m then
                 awards.players[pll].dig_copper=1
           end
           -- some mese
           local m = string.find(name, "mese")
           if c>0 and m then
                 awards.players[pll].dig_mese=1
           end
           -- some diamond
           local m = string.find(name, "diamond")
           if c>0 and m then
                 awards.players[pll].dig_diamond=1
           end
           -- some obsidian
           local m = string.find(name, "obsidian")
           if c>0 and m then
                 awards.players[pll].dig_obsidian=1
           end
           -- some silver
           local m = string.find(name, "silver")
           if c>0 and m then
                 awards.players[pll].dig_silver=1
           end
           -- some iron
           local m = string.find(name, "iron")
           if c>0 and m then
              awards.players[pll].dig_iron=1
           end
    if shift then minetest.chat_send_all(name) end
end)


minetest.register_on_craft(function(itemstack, player, old_craft_grid, craft_inv)  --[[
^ Called when player crafts something
^ itemstack is the output
^ old_craft_grid contains the recipe (Note: the one in the inventory is cleared)
^ craft_inv is the inventory with the crafting grid
^ Return either an ItemStack, to replace the output, or nil, to not modify it ]]--
  if not player then return end

  local name = itemstack:get_name()
  local pll = player:get_player_name()
  minetest.chat_send_all(name)
  -- craft a workbenck
  if name:find('workbench:workbench') then awards.players[pll].craft_a_workbench=1 end
  -- get any of wooden tools
  if awards.players[pll].craft_a_workbench then -- an get this ones only if workbench is crafted
      if name:find('pick_wood') then awards.players[pll].craft_a_pickaxe=1 end
      if name:find('axe_wood') then awards.players[pll].craft_an_axe=1 end
      if name:find('shovel_wood') then awards.players[pll].craft_a_shovel=1 end
      if name:find('sword_wood') then awards.players[pll].craft_a_sword=1 end
      if name:find('hoe_wood') then awards.players[pll].craft_a_hoe=1 end
  end
  -- upgrade to stone tools
  if awards.players[pll].craft_a_workbench and
      (awards.players[pll].craft_a_pickaxe or
      awards.players[pll].craft_an_axe or
      awards.players[pll].craft_a_sword or
      awards.players[pll].craft_a_shovel or
      awards.players[pll].craft_a_hoe)
  and
     (name:find('pick_stone') or
      name:find('axe_stone') or
      name:find('shovel_stone') or
      name:find('sword_stone') or
      name:find('hoe_stone'))
  then awards.players[pll].upgrade1=1 end
  -- upgrade to iron tools
  if awards.players[pll].upgrade1 and awards.players[pll].dig_iron and awards.players[pll].smelt_iron and
     (name:find('pick_iron') or
      name:find('axe_iron') or
      name:find('shovel_iron') or
      name:find('sword_iron') or
      name:find('hoe_iron'))
  then awards.players[pll].upgrade2=1 end
  -- upgrade to bronze tools
  if awards.players[pll].upgrade2 and awards.players[pll].dig_copper and awards.players[pll].dig_tin and awards.players[pll].smelt_copper and awards.players[pll].smelt_tin and
     (name:find('pick_bronze') or
      name:find('axe_bronze') or
      name:find('shovel_bronze') or
      name:find('sword_bronze') or
      name:find('hoe_bronze'))
  then awards.players[pll].upgrade3=1 end
  -- upgrade to mese tools
  if awards.players[pll].upgrade3 and awards.players[pll].dig_mese and
     (name:find('pick_mese') or
      name:find('axe_mese') or
      name:find('shovel_mese') or
      name:find('sword_mese') or
      name:find('hoe_mese'))
  then awards.players[pll].upgrade4=1 end
  -- upgrade to diamond tools
  if awards.players[pll].upgrade4 and awards.players[pll].dig_diamond and
     (name:find('pick_diamond') or
      name:find('axe_diamond') or
      name:find('shovel_diamond') or
      name:find('sword_diamond') or
      name:find('hoe_diamond'))
  then awards.players[pll].upgrade5=1 end

  if name:find('bucket') then awards.players[pll].bucket=1 end

  if name:find('furnace') and awards.players[pll].craft_a_workbench then awards.players[pll].make_a_furnace=1 minetest.chat_send_all("!!!") end

  if name:find('default:pick_wood') then awards.players[pll].craft_a_pickaxe=1 end
  if name:find('default:pick_wood') then awards.players[pll].craft_a_pickaxe=1 end
  if name:find('default:pick_wood') then awards.players[pll].craft_a_pickaxe=1 end
  if name:find('default:pick_wood') then awards.players[pll].craft_a_pickaxe=1 end
  if name:find('default:pick_wood') then awards.players[pll].craft_a_pickaxe=1 end
  if name:find('default:pick_wood') then awards.players[pll].craft_a_pickaxe=1 end
  if name:find('default:pick_wood') then awards.players[pll].craft_a_pickaxe=1 end
  if name:find('default:pick_wood') then awards.players[pll].craft_a_pickaxe=1 end

  return
end)


minetest.register_globalstep(function(dtime)
   local players = minetest.get_connected_players()
   for i,player in ipairs(players) do
       local pll = player:get_player_name()
       local inv = player:get_inventory()
       local shift = player:get_player_control()["sneak"]
       local wstack = player:get_wielded_item():get_name()
--  if shift then
--  minetest.chat_send_all(pll .. " holds " .. wstack)
--  end
   --if awards.players[pll].make_a_furnace[pll] then minetest.chat_send_all('furnace') end
  -- if awards.players[pll].dig_iron[pll] then minetest.chat_send_all('dug iron') end

       for j,stack in ipairs(inv:get_list("main")) do
           local name = stack:get_name()
           local c = stack:get_count()
               if awards.players[pll].make_a_furnace then

                  if name:find('iron_ingot') and awards.players[pll].dig_iron then awards.players[pll].smelt_iron=1 end
                  if name:find('gold_ingot') and awards.players[pll].dig_gold then awards.players[pll].smelt_gold=1 end
                  if name:find('tin_ingot') and awards.players[pll].dig_tin then awards.players[pll].smelt_tin=1 end
                  if name:find('copper_ingot') and awards.players[pll].dig_copper then awards.players[pll].smelt_copper=1 end
                  if name:find('silver_ingot') and awards.players[pll].dig_silver then awards.players[pll].smelt_silver=1 end
                  if name:find('mithril_ingot') and awards.players[pll].dig_mithril then awards.players[pll].smelt_mithril=1 end
              end


       end
   end
end)
