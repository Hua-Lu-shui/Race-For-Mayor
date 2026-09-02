execute as @e[type=minecraft:item_display,tag=rfm_collection_mysterious] at @s run function rfm:collection/mysterious/leave_one
execute as @e[type=minecraft:villager,tag=rfm_collection_mysterious] at @s run function rfm:collection/mysterious/leave_one
kill @e[type=minecraft:interaction,tag=rfm_collection_interaction]
