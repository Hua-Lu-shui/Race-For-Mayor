execute unless score #waiting next_round_ready matches 1 run return 0
execute unless score #round round matches 2..4 run return 0
execute as @e[type=minecraft:interaction,tag=rfm_collection_interaction] at @s if data entity @s interaction run function rfm:collection/mysterious/handle_interaction
