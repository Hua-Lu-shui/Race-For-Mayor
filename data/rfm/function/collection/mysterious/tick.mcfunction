#读取交互实体记录的右键玩家，并只允许所属办公室的玩家查看自己的报价
execute as @e[type=minecraft:interaction,tag=rfm_collection_interaction] at @s if data entity @s interaction run function rfm:collection/mysterious/handle_interaction

