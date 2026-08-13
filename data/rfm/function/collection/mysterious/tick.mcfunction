#只在第2至4回合结束后的办公室等待阶段开放交互
execute unless score #waiting next_round_ready matches 1 run return 0
execute unless score #round round matches 2..4 run return 0
#读取交互实体记录的右键玩家，并只允许所属办公室的玩家查看自己的藏品
execute as @e[type=minecraft:interaction,tag=rfm_collection_interaction] at @s if data entity @s interaction run function rfm:collection/mysterious/handle_interaction
