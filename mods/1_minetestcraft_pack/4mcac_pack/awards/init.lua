--  AWARDS
--     by Rubenwardy, CC-BY-SA
-------------------------------------------------------
-- this is the init file for the award mod
-------------------------------------------------------

dofile(minetest.get_modpath("awards").."/api.lua")

local rus
local locale = os.setlocale(nil, 'collate')
if (locale:find('Russian') ~= nil) or (locale:find('ru_RU') ~= nil) then rus=true else rus = false end
rus=false
-- the beginning of russian
if rus then
-- Light it up
awards.register_achievement("award_lightitup1",{
    title = "Да буддет свет!",
    description = "Place over 99 torches",
    icon = "novicebuilder.png",
    trigger={
        type="place",
        node="default:torch",
        target=100,
    },
})
-- Lumber Jack
awards.register_achievement("award_lumberjack1",{
    title = "Дровосек",
    description = "Cut down over 99 tree blocks",
    trigger={
        type="dig",
        node="default:tree",
        target=100,
    },
})

awards.register_achievement("award_mesefind4",{
    title = "Механикус?",
    description = "Find over 99 MESE crystals!",
    icon = "mese.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone_with_mese",
        target=100,
    },
})

-- Find a Nyan cat!
awards.register_achievement("award_nyanfind1",{
    title = "Помяукаем!",
    description = "Find a Nyan Cat",
    trigger={
        type="dig",
        node="default:nyancat",
        target=1,
    },
})

-- Just entered the mine
awards.register_achievement("award_mine1",{
    title = "Вниз, в пещеру...",
    description = "You have dug 10 stone blocks",
    icon = "miniminer.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone",
        target=50,
    },
})

-- Mini Miner
awards.register_achievement("award_mine2",{
    title = "Мини раскопки",
    description = "Dig 100 stones",
    icon = "miniminer.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone",
        target=150,
    },
})

-- Hardened Miner
awards.register_achievement("award_mine3",{
    title = "Копатель со стажем",
    description = "Dig 1000 stones",
    icon = "miniminer.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone",
        target=1000,
    },
})

-- Master Miner
awards.register_achievement("award_mine4",{
    title = "Повелитель шахт",
    description = "Dig 10000 stones",
    icon = "miniminer.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone",
        target=10000,
    },
})

-- First Death
awards.register_achievement("award_death1",{
    title = "Оп-пля!..",
    description = "First blood",
    trigger={
        type="death",
        target=1,
    },
})

-- 100 Death
awards.register_achievement("award_death2",{
    title = "Серийный убийца",
    description = "Die the 100th time",
    trigger={
        type="death",
        target=100,
    },
})

-- Burned to death
awards.register_achievement("award_burn1",{
    title = "Сжечь еретика!",
    description = "To get burned",
})

-- First Join
awards.register_achievement("award_join1",{
    title = "С подключением!",
    description = "To connect for the 1st time",
    icon = "connect.png",
    trigger={
        type="join",
        target=1,
    },
})

-- Minetester
awards.register_achievement("award_join2",{
    title = "Завсегдатай",
    description = "Join in for 50 times!",
    icon = "connect.png",
    trigger={
        type="join",
        target=50,
    },
})

else -- end of russian -- the beginning of international

-- Light it up
awards.register_achievement("award_lightitup1",{
    title = "Light it up!",
    description = "Place over 99 torches",
    icon = "novicebuilder.png",
    trigger={
        type="place",
        node="default:torch",
        target=100,
    },
})
-- Lumber Jack
awards.register_achievement("award_lumberjack1",{
    title = "Lumberjack",
    description = "Cut down over 99 tree blocks",
    trigger={
        type="dig",
        node="default:tree",
        target=100,
    },
})

awards.register_achievement("award_mesefind4",{
    title = "Mechanicus?",
    description = "Find over 99 MESE crystals!",
    icon = "mese.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone_with_mese",
        target=100,
    },
})

-- Find a Nyan cat!
awards.register_achievement("award_nyanfind1",{
    title = "Let us nyan!",
    description = "Find a Nyan Cat",
    trigger={
        type="dig",
        node="default:nyancat",
        target=1,
    },
})

-- Just entered the mine
awards.register_achievement("award_mine1",{
    title = "Down to the cave...",
    description = "You have dug 10 stone blocks",
    icon = "miniminer.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone",
        target=50,
    },
})

-- Mini Miner
awards.register_achievement("award_mine2",{
    title = "Miniminer",
    description = "Dig 100 stones",
    icon = "miniminer.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone",
        target=150,
    },
})

-- Hardened Miner
awards.register_achievement("award_mine3",{
    title = "Hardminer",
    description = "Dig 1000 stones",
    icon = "miniminer.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone",
        target=1000,
    },
})

-- Master Miner
awards.register_achievement("award_mine4",{
    title = "Nerdminer",
    description = "Dig 10000 stones",
    icon = "miniminer.png",
    background = "bg_mining.png",
    trigger={
        type="dig",
        node="default:stone",
        target=10000,
    },
})

-- First Death
awards.register_achievement("award_death1",{
    title = "Whoops!..",
    description = "First blood",
    trigger={
        type="death",
        target=1,
    },
})

-- 100 Death
awards.register_achievement("award_death2",{
    title = "Series killer",
    description = "Die the 100th time",
    trigger={
        type="death",
        target=100,
    },
})

-- Burned to death
awards.register_achievement("award_burn1",{
    title = "Burn the heretic!",
    description = "To get burned",
})

-- First Join
awards.register_achievement("award_join1",{
    title = "1st connection!",
    description = "To connect for the 1st time",
    icon = "connect.png",
    trigger={
        type="join",
        target=1,
    },
})

-- Minetester
awards.register_achievement("award_join2",{
    title = "Visitor",
    description = "Join in for 50 times!",
    icon = "connect.png",
    trigger={
        type="join",
        target=50,
    },
})

end


awards.register_onDeath(function(player,data)
    print ("running on death function")
    local pos=player:getpos()

    if pos and minetest.env:find_node_near(pos, 1, "fire:basic_flame")~=nil then
        return "award_burn"
    end

    return nil
end)

