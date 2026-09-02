function rfm:attribute/lock/enforce
scoreboard players operation @s ability_min = @s fame
execute if score @s economy < @s ability_min run scoreboard players operation @s ability_min = @s economy
execute if score @s welfare < @s ability_min run scoreboard players operation @s ability_min = @s welfare
execute if score @s ecology < @s ability_min run scoreboard players operation @s ability_min = @s ecology
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
execute if score @s ability_trigger matches 1 run tellraw @s [{"translate":"rfm.text.85dbbc2be30a","color":"red","bold":true},{"translate":"rfm.text.33e159b3cb71","color":"white"}]
