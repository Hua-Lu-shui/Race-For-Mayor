execute unless score @s collection_slot1 matches 6 unless score @s collection_slot2 matches 6 unless score @s collection_slot3 matches 6 unless score @s collection_slot4 matches 6 unless score @s collection_slot5 matches 6 run return 0
function rfm:attribute/lock/enforce
scoreboard players operation @s collection_effect_value = @s fame
execute if score @s economy < @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s economy
execute if score @s welfare < @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s welfare
execute if score @s ecology < @s collection_effect_value run scoreboard players operation @s collection_effect_value = @s ecology
scoreboard players set @s collection_effect_mask 0
execute if score @s fame = @s collection_effect_value run scoreboard players add @s collection_effect_mask 1
execute if score @s economy = @s collection_effect_value run scoreboard players add @s collection_effect_mask 2
execute if score @s welfare = @s collection_effect_value run scoreboard players add @s collection_effect_mask 4
execute if score @s ecology = @s collection_effect_value run scoreboard players add @s collection_effect_mask 8
function rfm:collection/effect/select_from_mask
execute if score @s collection_effect_pick matches 1 if score @s fame_lock matches 1 run return 0
execute if score @s collection_effect_pick matches 2 if score @s economy_lock matches 1 run return 0
execute if score @s collection_effect_pick matches 3 if score @s welfare_lock matches 1 run return 0
execute if score @s collection_effect_pick matches 4 if score @s ecology_lock matches 1 run return 0
execute if score @s collection_effect_pick matches 1 run scoreboard players add @s fame 10
execute if score @s collection_effect_pick matches 2 run scoreboard players add @s economy 10
execute if score @s collection_effect_pick matches 3 run scoreboard players add @s welfare 10
execute if score @s collection_effect_pick matches 4 run scoreboard players add @s ecology 10
tellraw @s [{"translate":"rfm.text.421d5bc2877d","color":"green","bold":true},{"translate":"rfm.text.0ace5909adca","color":"white"}]
function rfm:attribute/minimum
