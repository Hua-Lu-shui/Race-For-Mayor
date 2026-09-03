tag @a[tag=rfm_participant] remove rfm_cube_owner
tag @s add rfm_cube_owner
scoreboard players set @s collection_effect_value 0
execute as @a[tag=rfm_participant,tag=!rfm_cube_owner] if score @s candidate = @a[tag=rfm_participant,tag=rfm_cube_owner,limit=1] candidate run scoreboard players set @a[tag=rfm_participant,tag=rfm_cube_owner,limit=1] collection_effect_value 1
tag @s remove rfm_cube_owner
execute unless score @s collection_effect_value matches 1 run return 0
function rfm:collection/trade/select_lowest
execute if score @s collection_lowest matches 1 if score @s fame_lock matches 1 run return 0
execute if score @s collection_lowest matches 2 if score @s economy_lock matches 1 run return 0
execute if score @s collection_lowest matches 3 if score @s welfare_lock matches 1 run return 0
execute if score @s collection_lowest matches 4 if score @s ecology_lock matches 1 run return 0
execute if score @s collection_lowest matches 1 run scoreboard players add @s fame 4
execute if score @s collection_lowest matches 2 run scoreboard players add @s economy 4
execute if score @s collection_lowest matches 3 run scoreboard players add @s welfare 4
execute if score @s collection_lowest matches 4 run scoreboard players add @s ecology 4
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
execute if score @s collection_lowest matches 1 run tellraw @s [{"translate":"rfm.text.e74e9a32d2ce","color":"green","bold":true},{"translate":"rfm.text.c31a1773555a","color":"white"}]
execute if score @s collection_lowest matches 2 run tellraw @s [{"translate":"rfm.text.e74e9a32d2ce","color":"green","bold":true},{"translate":"rfm.text.81f53c10631a","color":"white"}]
execute if score @s collection_lowest matches 3 run tellraw @s [{"translate":"rfm.text.e74e9a32d2ce","color":"green","bold":true},{"translate":"rfm.text.c7c1fe4dd29d","color":"white"}]
execute if score @s collection_lowest matches 4 run tellraw @s [{"translate":"rfm.text.e74e9a32d2ce","color":"green","bold":true},{"translate":"rfm.text.6cd1985a869c","color":"white"}]
