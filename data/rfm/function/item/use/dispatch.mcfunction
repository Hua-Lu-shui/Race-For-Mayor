#记录并标记令牌使用者，先执行效果，再销毁令牌和持有记录
tag @a remove rfm_item_user
tag @s add rfm_item_user
scoreboard players set @s title_item_used 1
scoreboard players operation #used_item item_held = @s item_held

execute if score @s item_held matches 1..4 run function rfm:item/use/swap
execute if score @s item_held matches 5..12 run function rfm:item/use/weight
execute if score @s item_held matches 13..16 run function rfm:item/use/specialize
execute if score @s item_held matches 17..20 run function rfm:item/use/lock
execute if score @s item_held matches 21..24 run function rfm:item/use/peek

clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
scoreboard players set @s item_held 0
tag @a remove rfm_item_user
