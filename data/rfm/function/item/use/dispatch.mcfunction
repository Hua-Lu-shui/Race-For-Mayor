#记录并标记令牌使用者，先执行效果，再销毁令牌和持有记录
execute if score @s item_held matches 17..20 run return run function rfm:item/use/removed_lock
tag @a remove rfm_item_user
tag @s add rfm_item_user
scoreboard players set @s title_item_used 1
scoreboard players operation #used_item item_held = @s item_held
execute if score #used_item item_held matches 1 run scoreboard players set @s stat_use_1 1
execute if score #used_item item_held matches 2 run scoreboard players set @s stat_use_2 1
execute if score #used_item item_held matches 3 run scoreboard players set @s stat_use_3 1
execute if score #used_item item_held matches 4 run scoreboard players set @s stat_use_4 1
execute if score #used_item item_held matches 5 run scoreboard players set @s stat_use_5 1
execute if score #used_item item_held matches 6 run scoreboard players set @s stat_use_6 1
execute if score #used_item item_held matches 7 run scoreboard players set @s stat_use_7 1
execute if score #used_item item_held matches 8 run scoreboard players set @s stat_use_8 1
execute if score #used_item item_held matches 9 run scoreboard players set @s stat_use_9 1
execute if score #used_item item_held matches 10 run scoreboard players set @s stat_use_10 1
execute if score #used_item item_held matches 11 run scoreboard players set @s stat_use_11 1
execute if score #used_item item_held matches 12 run scoreboard players set @s stat_use_12 1
execute if score #used_item item_held matches 13 run scoreboard players set @s stat_use_13 1
execute if score #used_item item_held matches 14 run scoreboard players set @s stat_use_14 1
execute if score #used_item item_held matches 15 run scoreboard players set @s stat_use_15 1
execute if score #used_item item_held matches 16 run scoreboard players set @s stat_use_16 1
execute if score #used_item item_held matches 21 run scoreboard players set @s stat_use_21 1
execute if score #used_item item_held matches 22 run scoreboard players set @s stat_use_22 1
execute if score #used_item item_held matches 23 run scoreboard players set @s stat_use_23 1
execute if score #used_item item_held matches 24 run scoreboard players set @s stat_use_24 1

execute if score @s item_held matches 1..4 run function rfm:item/use/swap
execute if score @s item_held matches 5..12 run function rfm:item/use/weight
execute if score @s item_held matches 13..16 run function rfm:item/use/specialize
execute if score @s item_held matches 21..24 run function rfm:item/use/peek

#令牌已正式使用后结算“诉讼卷宗”
function rfm:collection/effect/litigation_file

clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
scoreboard players set @s item_held 0
tag @a remove rfm_item_user
