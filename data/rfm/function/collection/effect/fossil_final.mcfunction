execute unless score @s collection_slot1 matches 28 unless score @s collection_slot2 matches 28 unless score @s collection_slot3 matches 28 unless score @s collection_slot4 matches 28 unless score @s collection_slot5 matches 28 run return 0
function rfm:attribute/lock/enforce
scoreboard players set @s collection_effect_mask 0
execute unless score @s fame_lock matches 1 run scoreboard players add @s collection_effect_mask 1
execute unless score @s economy_lock matches 1 run scoreboard players add @s collection_effect_mask 2
execute unless score @s welfare_lock matches 1 run scoreboard players add @s collection_effect_mask 4
execute unless score @s ecology_lock matches 1 run scoreboard players add @s collection_effect_mask 8
execute if score @s collection_effect_mask matches 0 run return 0
function rfm:collection/effect/select_from_mask
execute if score @s collection_effect_pick matches 1 run scoreboard players operation @s fame += @s fame
execute if score @s collection_effect_pick matches 2 run scoreboard players operation @s economy += @s economy
execute if score @s collection_effect_pick matches 3 run scoreboard players operation @s welfare += @s welfare
execute if score @s collection_effect_pick matches 4 run scoreboard players operation @s ecology += @s ecology
function rfm:attribute/minimum
playsound minecraft:block.bone_block.place master @s ~ ~ ~ 0.7 0.8
tellraw @s [{"translate":"rfm.text.d46105eb49d0","color":"gold","bold":true},{"translate":"rfm.text.206fd31ce82c","color":"white"}]
