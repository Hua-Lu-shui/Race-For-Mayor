execute unless score @s collection_slot1 matches 37 unless score @s collection_slot2 matches 37 unless score @s collection_slot3 matches 37 unless score @s collection_slot4 matches 37 unless score @s collection_slot5 matches 37 run return 0
execute if score @s fame_lock matches 1 if score @s economy_lock matches 1 if score @s welfare_lock matches 1 if score @s ecology_lock matches 1 run return 0
scoreboard players remove @s fame 1
scoreboard players add @s economy 6
scoreboard players remove @s welfare 1
scoreboard players remove @s ecology 1
function rfm:attribute/lock/enforce
tellraw @s [{"translate":"rfm.text.59f87b174da1","color":"green","bold":true},{"translate":"rfm.text.a18fec2adeaa","color":"white"}]
