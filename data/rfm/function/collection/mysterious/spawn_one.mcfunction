#每位玩家独立随机，因此不同玩家可能看到不同藏品，也可能偶然相同
execute store result score @s collection_offer run random value 1..6

#严格使用room/return中的办公室传送坐标，不受玩家生成时所在位置影响
execute if score @s room matches 1 positioned -20 -58 -11 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 2 positioned -20 -58 6 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 3 positioned -20 -58 23 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 4 positioned -20 -58 30 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 5 positioned -20 -58 47 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 6 positioned -20 -58 64 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 7 positioned -20 -58 81 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 8 positioned -20 -58 98 run function rfm:collection/mysterious/spawn_at_room
