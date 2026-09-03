execute unless score @s collection_slot1 matches 8 unless score @s collection_slot2 matches 8 unless score @s collection_slot3 matches 8 unless score @s collection_slot4 matches 8 unless score @s collection_slot5 matches 8 run return 0
execute unless score @s collection_slot1 matches 9 unless score @s collection_slot2 matches 9 unless score @s collection_slot3 matches 9 unless score @s collection_slot4 matches 9 unless score @s collection_slot5 matches 9 run return 0
execute if score @s fame_lock matches 1 if score @s economy_lock matches 1 if score @s welfare_lock matches 1 if score @s ecology_lock matches 1 run return 0
scoreboard players add @s fame 4
scoreboard players add @s economy 4
scoreboard players add @s welfare 4
scoreboard players add @s ecology 4
function rfm:attribute/lock/enforce
tellraw @s [{"translate":"rfm.text.241d9edfa4d0","color":"blue","bold":true},{"translate":"rfm.text.fcb9c899aa49","color":"white"}]
