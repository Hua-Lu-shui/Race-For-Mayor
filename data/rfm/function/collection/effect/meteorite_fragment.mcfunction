#“陨石碎片”：回合开始时，将最高属性的数值赋予随机一项未锁定的并列最低属性
execute unless score @s collection_slot1 matches 30 unless score @s collection_slot2 matches 30 unless score @s collection_slot3 matches 30 run return 0
function rfm:attribute/lock/enforce
scoreboard players operation @s collection_effect_value = @s fame
execute if score @s economy > @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s economy
execute if score @s welfare > @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s welfare
execute if score @s ecology > @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s ecology
scoreboard players operation @s collection_highest = @s fame
execute if score @s economy < @s collection_highest run scoreboard players operation @s collection_highest = @s economy
execute if score @s welfare < @s collection_highest run scoreboard players operation @s collection_highest = @s welfare
execute if score @s ecology < @s collection_highest run scoreboard players operation @s collection_highest = @s ecology
scoreboard players set @s collection_effect_mask 0
execute if score @s fame = @s collection_highest unless score @s fame_lock matches 1 run scoreboard players add @s collection_effect_mask 1
execute if score @s economy = @s collection_highest unless score @s economy_lock matches 1 run scoreboard players add @s collection_effect_mask 2
execute if score @s welfare = @s collection_highest unless score @s welfare_lock matches 1 run scoreboard players add @s collection_effect_mask 4
execute if score @s ecology = @s collection_highest unless score @s ecology_lock matches 1 run scoreboard players add @s collection_effect_mask 8
execute if score @s collection_effect_mask matches 0 run return 0
function rfm:collection/effect/select_from_mask
execute if score @s collection_effect_pick matches 1 run scoreboard players operation @s fame = @s collection_effect_value
execute if score @s collection_effect_pick matches 2 run scoreboard players operation @s economy = @s collection_effect_value
execute if score @s collection_effect_pick matches 3 run scoreboard players operation @s welfare = @s collection_effect_value
execute if score @s collection_effect_pick matches 4 run scoreboard players operation @s ecology = @s collection_effect_value
function rfm:attribute/minimum
playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 0.7 0.7
tellraw @s [{"text":"【陨石碎片】","color":"gold","bold":true},{"text":"本回合开始，已将最高属性的数值赋予随机一项最低属性。","color":"white"}]
