#每位玩家独立随机：普通50%，稀有30%，史诗15%，传说5%
function rfm:collection/mysterious/sample_offer

execute if score @s room matches 1 positioned -18 -59 -10 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 2 positioned -19 -59 6 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 3 positioned -20 -58 23 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 4 positioned -21 -59 23 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 5 positioned -20 -60 59 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 6 positioned -24 -60 81 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 7 positioned -24 -59 98 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 8 positioned -24 -60 120 run function rfm:collection/mysterious/spawn_at_room
