#“多肉植物”：回合开始时生态+6，其余属性-1
execute unless score @s collection_slot1 matches 35 unless score @s collection_slot2 matches 35 unless score @s collection_slot3 matches 35 unless score @s collection_slot4 matches 35 unless score @s collection_slot5 matches 35 run return 0
scoreboard players remove @s fame 1
scoreboard players remove @s economy 1
scoreboard players remove @s welfare 1
scoreboard players add @s ecology 6
tellraw @s [{"translate":"rfm.text.15c79fda7ea1","color":"green","bold":true},{"translate":"rfm.text.c44f4e5126cb","color":"white"}]
