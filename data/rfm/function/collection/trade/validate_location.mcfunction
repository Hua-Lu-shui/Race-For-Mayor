#本函数以尝试交易的玩家为@s；只有靠近自己房间的神秘人交互实体才通过
tag @a[tag=rfm_participant] remove rfm_collection_buyer
tag @s add rfm_collection_buyer
scoreboard players set #confirm_valid collection_target 0
execute as @e[type=minecraft:interaction,tag=rfm_collection_interaction] at @s if entity @a[tag=rfm_participant,tag=rfm_collection_buyer,distance=..6] if score @s room = @a[tag=rfm_participant,tag=rfm_collection_buyer,limit=1] room run scoreboard players set #confirm_valid collection_target 1
tag @s remove rfm_collection_buyer
