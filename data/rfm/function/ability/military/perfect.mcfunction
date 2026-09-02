execute as @a[tag=rfm_participant] at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 1
execute as @a[tag=rfm_participant] run function rfm:collection/effect/royal_necklace
function rfm:collection/effect/old_war_medal
execute unless score @s candidate matches 6 run return 0
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
tellraw @s [{"translate":"rfm.text.55bce636bc10","color":"#FFA500","bold":true},{"translate":"rfm.text.3707e96d6846","color":"white"}]
function rfm:attribute/minimum
