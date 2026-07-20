#记录并标记道具使用者，先执行效果，再销毁道具和持有记录
tag @a remove rfm_item_user
tag @s add rfm_item_user
scoreboard players operation #used_item item_held = @s item_held

execute if score @s item_held matches 1..4 run function rfm:item/use/swap
execute if score @s item_held matches 5..12 run function rfm:item/use/weight
execute if score @s item_held matches 13..24 run function rfm:item/use/tradeoff
execute if score @s item_held matches 25..28 run function rfm:item/use/specialize

clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
scoreboard players set @s item_held 0
tag @a remove rfm_item_user
