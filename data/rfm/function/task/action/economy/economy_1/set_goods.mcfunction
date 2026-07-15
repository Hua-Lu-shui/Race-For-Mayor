#所有村民出售同一种随机商品，便于直接比较单位价格
execute if score @s market_goods matches 2 as @e[type=minecraft:villager,tag=rfm_market_vendor] run data modify entity @s Offers.Recipes[0].sell.id set value "minecraft:apple"
execute if score @s market_goods matches 3 as @e[type=minecraft:villager,tag=rfm_market_vendor] run data modify entity @s Offers.Recipes[0].sell.id set value "minecraft:iron_ingot"
