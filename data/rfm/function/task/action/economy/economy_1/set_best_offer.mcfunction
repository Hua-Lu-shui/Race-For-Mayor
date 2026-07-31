#随机选出的商人获得最佳交易标记
execute if score @s market_target matches 1 run tag @e[type=minecraft:villager,tag=rfm_market_v01,limit=1] add rfm_market_best
execute if score @s market_target matches 2 run tag @e[type=minecraft:villager,tag=rfm_market_v02,limit=1] add rfm_market_best
execute if score @s market_target matches 3 run tag @e[type=minecraft:villager,tag=rfm_market_v03,limit=1] add rfm_market_best
execute if score @s market_target matches 4 run tag @e[type=minecraft:villager,tag=rfm_market_v04,limit=1] add rfm_market_best
execute if score @s market_target matches 5 run tag @e[type=minecraft:villager,tag=rfm_market_v05,limit=1] add rfm_market_best
execute if score @s market_target matches 6 run tag @e[type=minecraft:villager,tag=rfm_market_v06,limit=1] add rfm_market_best
execute if score @s market_target matches 7 run tag @e[type=minecraft:villager,tag=rfm_market_v07,limit=1] add rfm_market_best
execute if score @s market_target matches 8 run tag @e[type=minecraft:villager,tag=rfm_market_v08,limit=1] add rfm_market_best
execute if score @s market_target matches 9 run tag @e[type=minecraft:villager,tag=rfm_market_v09,limit=1] add rfm_market_best
execute if score @s market_target matches 10 run tag @e[type=minecraft:villager,tag=rfm_market_v10,limit=1] add rfm_market_best
execute if score @s market_target matches 11 run tag @e[type=minecraft:villager,tag=rfm_market_v11,limit=1] add rfm_market_best
execute if score @s market_target matches 12 run tag @e[type=minecraft:villager,tag=rfm_market_v12,limit=1] add rfm_market_best
execute if score @s market_target matches 13 run tag @e[type=minecraft:villager,tag=rfm_market_v13,limit=1] add rfm_market_best
execute if score @s market_target matches 14 run tag @e[type=minecraft:villager,tag=rfm_market_v14,limit=1] add rfm_market_best
execute if score @s market_target matches 15 run tag @e[type=minecraft:villager,tag=rfm_market_v15,limit=1] add rfm_market_best
execute if score @s market_target matches 16 run tag @e[type=minecraft:villager,tag=rfm_market_v16,limit=1] add rfm_market_best
execute if score @s market_target matches 17 run tag @e[type=minecraft:villager,tag=rfm_market_v17,limit=1] add rfm_market_best
execute if score @s market_target matches 18 run tag @e[type=minecraft:villager,tag=rfm_market_v18,limit=1] add rfm_market_best
execute if score @s market_target matches 19 run tag @e[type=minecraft:villager,tag=rfm_market_v19,limit=1] add rfm_market_best
execute if score @s market_target matches 20 run tag @e[type=minecraft:villager,tag=rfm_market_v20,limit=1] add rfm_market_best

#最佳交易有三种随机组合
execute if score @s market_round matches 1 run data modify entity @e[type=minecraft:villager,tag=rfm_market_best,limit=1] Offers.Recipes[0].buy.count set value 3
execute if score @s market_round matches 1 run data modify entity @e[type=minecraft:villager,tag=rfm_market_best,limit=1] Offers.Recipes[0].sell.count set value 4
execute if score @s market_round matches 2 run data modify entity @e[type=minecraft:villager,tag=rfm_market_best,limit=1] Offers.Recipes[0].buy.count set value 4
execute if score @s market_round matches 2 run data modify entity @e[type=minecraft:villager,tag=rfm_market_best,limit=1] Offers.Recipes[0].sell.count set value 6
execute if score @s market_round matches 3 run data modify entity @e[type=minecraft:villager,tag=rfm_market_best,limit=1] Offers.Recipes[0].buy.count set value 5
execute if score @s market_round matches 3 run data modify entity @e[type=minecraft:villager,tag=rfm_market_best,limit=1] Offers.Recipes[0].sell.count set value 8
