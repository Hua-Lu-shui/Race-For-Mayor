#“古生物化石”：最终结算时，随机选择一项未锁定的并列最低属性并翻倍
execute unless score @s collection_slot1 matches 28 unless score @s collection_slot2 matches 28 unless score @s collection_slot3 matches 28 run return 0
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
execute if score @s collection_effect_pick matches 1 run scoreboard players operation @s fame += @s fame
execute if score @s collection_effect_pick matches 2 run scoreboard players operation @s economy += @s economy
execute if score @s collection_effect_pick matches 3 run scoreboard players operation @s welfare += @s welfare
execute if score @s collection_effect_pick matches 4 run scoreboard players operation @s ecology += @s ecology
function rfm:attribute/minimum
playsound minecraft:block.bone_block.place master @s ~ ~ ~ 0.7 0.8
tellraw @s [{"text":"【古生物化石】","color":"gold","bold":true},{"text":"最终结算开始，随机选择一项最低属性并翻倍。","color":"white"}]
