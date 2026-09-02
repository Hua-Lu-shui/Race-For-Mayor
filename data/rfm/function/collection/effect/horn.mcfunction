execute unless score @s collection_slot1 matches 38 unless score @s collection_slot2 matches 38 unless score @s collection_slot3 matches 38 unless score @s collection_slot4 matches 38 unless score @s collection_slot5 matches 38 run return 0
scoreboard players add @s fame 6
scoreboard players remove @s economy 1
scoreboard players remove @s welfare 1
scoreboard players remove @s ecology 1
tellraw @s [{"translate":"rfm.text.6de1d45c0d76","color":"green","bold":true},{"translate":"rfm.text.066bef5a5b0b","color":"white"}]
