#“得道多助”：找出结算前的最低属性；并列最低时随机选择一项
function rfm:attribute/lock/enforce
scoreboard players operation @s ability_min = @s fame
execute if score @s economy < @s ability_min run scoreboard players operation @s ability_min = @s economy
execute if score @s welfare < @s ability_min run scoreboard players operation @s ability_min = @s welfare
execute if score @s ecology < @s ability_min run scoreboard players operation @s ability_min = @s ecology
#只从未锁定的并列最低属性中等概率选择一项
scoreboard players set @s collection_effect_mask 0
execute if score @s fame = @s ability_min unless score @s fame_lock matches 1 run scoreboard players add @s collection_effect_mask 1
execute if score @s economy = @s ability_min unless score @s economy_lock matches 1 run scoreboard players add @s collection_effect_mask 2
execute if score @s welfare = @s ability_min unless score @s welfare_lock matches 1 run scoreboard players add @s collection_effect_mask 4
execute if score @s ecology = @s ability_min unless score @s ecology_lock matches 1 run scoreboard players add @s collection_effect_mask 8
execute if score @s collection_effect_mask matches 0 run return 0
function rfm:collection/effect/select_from_mask
scoreboard players set @s ability_trigger 0
execute if score @s collection_effect_pick matches 1 unless score @s fame = @s welfare run scoreboard players set @s ability_trigger 1
execute if score @s collection_effect_pick matches 2 unless score @s economy = @s welfare run scoreboard players set @s ability_trigger 1
execute if score @s collection_effect_pick matches 4 unless score @s ecology = @s welfare run scoreboard players set @s ability_trigger 1
execute if score @s collection_effect_pick matches 1 run scoreboard players operation @s fame = @s welfare
execute if score @s collection_effect_pick matches 2 run scoreboard players operation @s economy = @s welfare
execute if score @s collection_effect_pick matches 4 run scoreboard players operation @s ecology = @s welfare
execute if score @s ability_trigger matches 1 run tellraw @s [{"text":"【得道多助】","color":"red","bold":true},{"text":"将民生值赋予最低属性。","color":"white"}]
