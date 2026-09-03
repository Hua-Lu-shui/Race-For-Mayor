execute unless score @s collection_slot1 matches 35 unless score @s collection_slot2 matches 35 unless score @s collection_slot3 matches 35 unless score @s collection_slot4 matches 35 unless score @s collection_slot5 matches 35 run return 0
execute if score @s fame_lock matches 1 if score @s economy_lock matches 1 if score @s welfare_lock matches 1 if score @s ecology_lock matches 1 run return 0
scoreboard players remove @s fame 1
scoreboard players remove @s economy 1
scoreboard players remove @s welfare 1
scoreboard players add @s ecology 6
function rfm:attribute/lock/enforce
tellraw @s [{"translate":"rfm.text.15c79fda7ea1","color":"green","bold":true},{"translate":"rfm.text.c44f4e5126cb","color":"white"}]
