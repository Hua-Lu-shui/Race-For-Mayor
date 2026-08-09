#“老旧的战功章”：完美完成行动任务时，最低属性+5；并列最低时随机选择一项
execute unless score @s collection_slot1 matches 6 unless score @s collection_slot2 matches 6 unless score @s collection_slot3 matches 6 run return 0
function rfm:attribute/lock/enforce
scoreboard players operation @s collection_effect_value = @s fame
execute if score @s economy < @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s economy
execute if score @s welfare < @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s welfare
execute if score @s ecology < @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s ecology
scoreboard players set @s collection_effect_mask 0
execute if score @s fame = @s collection_effect_value unless score @s fame_lock matches 1 run scoreboard players add @s collection_effect_mask 1
execute if score @s economy = @s collection_effect_value unless score @s economy_lock matches 1 run scoreboard players add @s collection_effect_mask 2
execute if score @s welfare = @s collection_effect_value unless score @s welfare_lock matches 1 run scoreboard players add @s collection_effect_mask 4
execute if score @s ecology = @s collection_effect_value unless score @s ecology_lock matches 1 run scoreboard players add @s collection_effect_mask 8
execute if score @s collection_effect_mask matches 0 run return 0
function rfm:collection/effect/select_from_mask
execute if score @s collection_effect_pick matches 1 run scoreboard players add @s fame 5
execute if score @s collection_effect_pick matches 2 run scoreboard players add @s economy 5
execute if score @s collection_effect_pick matches 3 run scoreboard players add @s welfare 5
execute if score @s collection_effect_pick matches 4 run scoreboard players add @s ecology 5
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 1.2
tellraw @s [{"text":"【老旧的战功章】","color":"green","bold":true},{"text":"你完美完成了行动任务，随机选择一项最低属性 +5。","color":"white"}]
function rfm:attribute/minimum
