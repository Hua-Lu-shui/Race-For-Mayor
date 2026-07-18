#第一套订单
execute if score @s supply_order matches 1 if score @s supply_shop_1 matches 0 if items block 388 -60 105 container.* minecraft:wheat[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_1
execute if score @s supply_order matches 1 if score @s supply_shop_2 matches 0 if items block 396 -60 105 container.* minecraft:coal[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_2
execute if score @s supply_order matches 1 if score @s supply_shop_3 matches 0 if items block 404 -60 105 container.* minecraft:potato[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_3
execute if score @s supply_order matches 1 if score @s supply_shop_4 matches 0 if items block 412 -60 105 container.* minecraft:glass_bottle[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_4
execute if score @s supply_order matches 1 if score @s supply_shop_5 matches 0 if items block 420 -60 105 container.* minecraft:white_wool[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_5

#第二套订单
execute if score @s supply_order matches 2 if score @s supply_shop_1 matches 0 if items block 388 -60 105 container.* minecraft:egg[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_1
execute if score @s supply_order matches 2 if score @s supply_shop_2 matches 0 if items block 396 -60 105 container.* minecraft:iron_ingot[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_2
execute if score @s supply_order matches 2 if score @s supply_shop_3 matches 0 if items block 404 -60 105 container.* minecraft:carrot[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_3
execute if score @s supply_order matches 2 if score @s supply_shop_4 matches 0 if items block 412 -60 105 container.* minecraft:honey_bottle[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_4
execute if score @s supply_order matches 2 if score @s supply_shop_5 matches 0 if items block 420 -60 105 container.* minecraft:leather[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_5

#第三套订单
execute if score @s supply_order matches 3 if score @s supply_shop_1 matches 0 if items block 388 -60 105 container.* minecraft:milk_bucket[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_1
execute if score @s supply_order matches 3 if score @s supply_shop_2 matches 0 if items block 396 -60 105 container.* minecraft:charcoal[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_2
execute if score @s supply_order matches 3 if score @s supply_shop_3 matches 0 if items block 404 -60 105 container.* minecraft:beetroot[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_3
execute if score @s supply_order matches 3 if score @s supply_shop_4 matches 0 if items block 412 -60 105 container.* minecraft:redstone[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_4
execute if score @s supply_order matches 3 if score @s supply_shop_5 matches 0 if items block 420 -60 105 container.* minecraft:string[minecraft:custom_data~{rfm_supply_item:1}] run function rfm:task/action/economy/economy_4/complete_shop_5
