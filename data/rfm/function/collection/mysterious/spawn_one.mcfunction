#每位玩家独立随机：普通60%，稀有30%，史诗10%
execute store result score @s collection_offer_shift run random value 1..100
execute if score @s collection_offer_shift matches 1..12 run scoreboard players set @s collection_offer 1
execute if score @s collection_offer_shift matches 13..24 run scoreboard players set @s collection_offer 2
execute if score @s collection_offer_shift matches 25..36 run scoreboard players set @s collection_offer 4
execute if score @s collection_offer_shift matches 37..48 run scoreboard players set @s collection_offer 5
execute if score @s collection_offer_shift matches 49..60 run scoreboard players set @s collection_offer 6
execute if score @s collection_offer_shift matches 61..90 run scoreboard players set @s collection_offer 3
execute if score @s collection_offer_shift matches 91..100 run scoreboard players set @s collection_offer 7

#严格使用room/return中的办公室传送坐标，不受玩家生成时所在位置影响
execute if score @s room matches 1 positioned -20 -58 -11 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 2 positioned -20 -58 6 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 3 positioned -20 -58 23 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 4 positioned -20 -58 30 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 5 positioned -20 -58 47 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 6 positioned -20 -58 64 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 7 positioned -20 -58 81 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 8 positioned -20 -58 98 run function rfm:collection/mysterious/spawn_at_room
