#“魔镜”：每有一位其他同身份候选人，决策任务造成的实际属性影响翻一倍
execute unless score @s collection_slot1 matches 12 unless score @s collection_slot2 matches 12 unless score @s collection_slot3 matches 12 run return 0
scoreboard players operation @s collection_delta_fame = @s fame
scoreboard players operation @s collection_delta_fame -= @s collection_fame_before
scoreboard players operation @s collection_delta_economy = @s economy
scoreboard players operation @s collection_delta_economy -= @s collection_economy_before
scoreboard players operation @s collection_delta_welfare = @s welfare
scoreboard players operation @s collection_delta_welfare -= @s collection_welfare_before
scoreboard players operation @s collection_delta_ecology = @s ecology
scoreboard players operation @s collection_delta_ecology -= @s collection_ecology_before
execute if score @s collection_delta_fame matches 0 if score @s collection_delta_economy matches 0 if score @s collection_delta_welfare matches 0 if score @s collection_delta_ecology matches 0 run return 0
tag @a remove rfm_mirror_owner
tag @s add rfm_mirror_owner
execute as @a[tag=!rfm_mirror_owner] if score @s candidate = @a[tag=rfm_mirror_owner,limit=1] candidate run function rfm:collection/effect/magic_mirror_double
tag @s remove rfm_mirror_owner
