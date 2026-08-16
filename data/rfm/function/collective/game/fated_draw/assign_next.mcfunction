#随机选择一张尚未分配的纸条，并写入唯一名次对应的排序分数：第1名=8分，第8名=1分
tag @e[type=minecraft:interaction,tag=rfm_lottery_interaction] remove rfm_lottery_assigning
execute as @e[type=minecraft:interaction,tag=rfm_lottery_interaction,scores={group_score=0},sort=random,limit=1] run tag @s add rfm_lottery_assigning
scoreboard players set #lottery_score group_score 9
scoreboard players operation #lottery_score group_score -= #lottery_rank group_rank
scoreboard players operation @e[type=minecraft:interaction,tag=rfm_lottery_assigning,limit=1] group_score = #lottery_score group_score
scoreboard players add #lottery_rank group_rank 1
tag @e[type=minecraft:interaction,tag=rfm_lottery_assigning] remove rfm_lottery_assigning
execute if entity @e[type=minecraft:interaction,tag=rfm_lottery_interaction,scores={group_score=0}] run function rfm:collective/game/fated_draw/assign_next
