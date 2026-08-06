#让所有神秘人先播放离场效果并传送到场外，再清除对应交互实体
execute as @e[type=minecraft:villager,tag=rfm_collection_mysterious] at @s run function rfm:collection/mysterious/leave_one
kill @e[type=minecraft:interaction,tag=rfm_collection_interaction]
