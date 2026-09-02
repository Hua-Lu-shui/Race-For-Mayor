execute unless score @s collection_slot1 matches 36 unless score @s collection_slot2 matches 36 unless score @s collection_slot3 matches 36 unless score @s collection_slot4 matches 36 unless score @s collection_slot5 matches 36 run return 0
scoreboard players remove @s fame 1
scoreboard players remove @s economy 1
scoreboard players add @s welfare 6
scoreboard players remove @s ecology 1
tellraw @s [{"translate":"rfm.text.71000cc6aa0f","color":"green","bold":true},{"translate":"rfm.text.82686f9cff3a","color":"white"}]
