execute unless score @s collection_slot1 matches 15 unless score @s collection_slot2 matches 15 unless score @s collection_slot3 matches 15 unless score @s collection_slot4 matches 15 unless score @s collection_slot5 matches 15 run return 0
function rfm:collection/trade/select_highest
execute if score @s collection_attr matches 1 if score @s fame_lock matches 1 run return 0
execute if score @s collection_attr matches 2 if score @s economy_lock matches 1 run return 0
execute if score @s collection_attr matches 3 if score @s welfare_lock matches 1 run return 0
execute if score @s collection_attr matches 4 if score @s ecology_lock matches 1 run return 0
execute if score @s collection_attr matches 1 run scoreboard players add @s fame 5
execute if score @s collection_attr matches 2 run scoreboard players add @s economy 5
execute if score @s collection_attr matches 3 run scoreboard players add @s welfare 5
execute if score @s collection_attr matches 4 run scoreboard players add @s ecology 5
function rfm:attribute/lock/enforce
execute if score @s collection_attr matches 1 run tellraw @s [{"translate":"rfm.text.24c41d08b522","color":"blue","bold":true},{"translate":"rfm.text.8c10a01774c8","color":"white"}]
execute if score @s collection_attr matches 2 run tellraw @s [{"translate":"rfm.text.24c41d08b522","color":"blue","bold":true},{"translate":"rfm.text.74ff7aedb505","color":"white"}]
execute if score @s collection_attr matches 3 run tellraw @s [{"translate":"rfm.text.24c41d08b522","color":"blue","bold":true},{"translate":"rfm.text.e16e16a6bcfd","color":"white"}]
execute if score @s collection_attr matches 4 run tellraw @s [{"translate":"rfm.text.24c41d08b522","color":"blue","bold":true},{"translate":"rfm.text.a87524e625fb","color":"white"}]
